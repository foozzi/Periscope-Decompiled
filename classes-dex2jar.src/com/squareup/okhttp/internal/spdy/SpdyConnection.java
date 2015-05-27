package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.ue;
import o.ui;
import o.uj;
import o.up;

public final class SpdyConnection
  implements Closeable
{
  private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
  private static final ExecutorService executor = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp SpdyConnection", true));
  long bytesLeftInWriteWindow;
  final boolean client;
  private final Set<Integer> currentPushRequests = new LinkedHashSet();
  final FrameWriter frameWriter;
  private final IncomingStreamHandler handler;
  private final String hostName;
  private long idleStartTimeNs = System.nanoTime();
  private int lastGoodStreamId;
  private int nextPingId;
  private int nextStreamId;
  final Settings okHttpSettings = new Settings();
  final Settings peerSettings = new Settings();
  private Map<Integer, Ping> pings;
  final Protocol protocol;
  private final ExecutorService pushExecutor;
  private final PushObserver pushObserver;
  final Reader readerRunnable;
  private boolean receivedInitialPeerSettings = false;
  private boolean shutdown;
  final Socket socket;
  private final Map<Integer, SpdyStream> streams = new HashMap();
  long unacknowledgedBytesRead = 0L;
  final Variant variant;
  
  static
  {
    boolean bool;
    if (!SpdyConnection.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    }
    $assertionsDisabled = bool;
  }
  
  private SpdyConnection(Builder paramBuilder)
  {
    this.protocol = paramBuilder.protocol;
    this.pushObserver = paramBuilder.pushObserver;
    this.client = paramBuilder.client;
    this.handler = paramBuilder.handler;
    int i;
    if (paramBuilder.client) {
      i = 1;
    } else {
      i = 2;
    }
    this.nextStreamId = i;
    if ((paramBuilder.client) && (this.protocol == Protocol.HTTP_2)) {
      this.nextStreamId += 2;
    }
    if (paramBuilder.client) {
      i = 1;
    } else {
      i = 2;
    }
    this.nextPingId = i;
    if (paramBuilder.client) {
      this.okHttpSettings.set(7, 0, 16777216);
    }
    this.hostName = paramBuilder.hostName;
    if (this.protocol == Protocol.HTTP_2)
    {
      this.variant = new Http2();
      this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(String.format("OkHttp %s Push Observer", new Object[] { this.hostName }), true));
      this.peerSettings.set(7, 0, 65535);
      this.peerSettings.set(5, 0, 16384);
    }
    else if (this.protocol == Protocol.SPDY_3)
    {
      this.variant = new Spdy3();
      this.pushExecutor = null;
    }
    else
    {
      throw new AssertionError(this.protocol);
    }
    this.bytesLeftInWriteWindow = this.peerSettings.getInitialWindowSize(65536);
    this.socket = paramBuilder.socket;
    this.frameWriter = this.variant.newWriter(up.ˊ(up.ˊ(paramBuilder.socket)), this.client);
    this.readerRunnable = new Reader(null);
    new Thread(this.readerRunnable).start();
  }
  
  private void close(ErrorCode paramErrorCode1, ErrorCode paramErrorCode2)
  {
    assert (!Thread.holdsLock(this));
    Object localObject = null;
    try
    {
      shutdown(paramErrorCode1);
      paramErrorCode1 = (ErrorCode)localObject;
    }
    catch (IOException paramErrorCode1) {}
    SpdyStream[] arrayOfSpdyStream = null;
    Ping[] arrayOfPing = null;
    try
    {
      if (!this.streams.isEmpty())
      {
        arrayOfSpdyStream = (SpdyStream[])this.streams.values().toArray(new SpdyStream[this.streams.size()]);
        this.streams.clear();
        setIdle(false);
      }
      if (this.pings != null)
      {
        arrayOfPing = (Ping[])this.pings.values().toArray(new Ping[this.pings.size()]);
        this.pings = null;
      }
    }
    finally {}
    localObject = paramErrorCode1;
    int j;
    int i;
    if (arrayOfSpdyStream != null)
    {
      j = arrayOfSpdyStream.length;
      i = 0;
      for (;;)
      {
        localObject = paramErrorCode1;
        if (i >= j) {
          break;
        }
        localObject = arrayOfSpdyStream[i];
        try
        {
          ((SpdyStream)localObject).close(paramErrorCode2);
          localObject = paramErrorCode1;
        }
        catch (IOException localIOException)
        {
          localObject = paramErrorCode1;
          if (paramErrorCode1 != null) {
            localObject = localIOException;
          }
        }
        i += 1;
        paramErrorCode1 = (ErrorCode)localObject;
      }
    }
    if (arrayOfPing != null)
    {
      j = arrayOfPing.length;
      i = 0;
      while (i < j)
      {
        arrayOfPing[i].cancel();
        i += 1;
      }
    }
    try
    {
      this.frameWriter.close();
      paramErrorCode1 = (ErrorCode)localObject;
    }
    catch (IOException paramErrorCode2)
    {
      paramErrorCode1 = (ErrorCode)localObject;
      if (localObject == null) {
        paramErrorCode1 = paramErrorCode2;
      }
    }
    try
    {
      this.socket.close();
    }
    catch (IOException paramErrorCode1) {}
    if (paramErrorCode1 != null) {
      throw paramErrorCode1;
    }
  }
  
  private SpdyStream newStream(int paramInt, List<Header> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool;
    if (!paramBoolean1) {
      bool = true;
    } else {
      bool = false;
    }
    if (!paramBoolean2) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    SpdyStream localSpdyStream;
    synchronized (this.frameWriter)
    {
      int i;
      try
      {
        if (this.shutdown) {
          throw new IOException("shutdown");
        }
        i = this.nextStreamId;
        this.nextStreamId += 2;
        localSpdyStream = new SpdyStream(i, this, bool, paramBoolean2, paramList);
        if (localSpdyStream.isOpen())
        {
          this.streams.put(Integer.valueOf(i), localSpdyStream);
          setIdle(false);
        }
      }
      finally {}
      if (paramInt == 0)
      {
        this.frameWriter.synStream(bool, paramBoolean2, i, paramInt, paramList);
      }
      else
      {
        if (this.client) {
          throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
        }
        this.frameWriter.pushPromise(paramInt, i, paramList);
      }
    }
    if (!paramBoolean1) {
      this.frameWriter.flush();
    }
    return localSpdyStream;
  }
  
  private void pushDataLater(int paramInt1, ui paramui, int paramInt2, boolean paramBoolean)
  {
    ue localue = new ue();
    paramui.ᔇ(paramInt2);
    paramui.read(localue, paramInt2);
    if (localue.size() != paramInt2) {
      throw new IOException(localue.size() + " != " + paramInt2);
    }
    this.pushExecutor.execute(new SpdyConnection.6(this, "OkHttp %s Push Data[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt1) }, paramInt1, localue, paramInt2, paramBoolean));
  }
  
  private void pushHeadersLater(int paramInt, List<Header> paramList, boolean paramBoolean)
  {
    this.pushExecutor.execute(new SpdyConnection.5(this, "OkHttp %s Push Headers[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) }, paramInt, paramList, paramBoolean));
  }
  
  private void pushRequestLater(int paramInt, List<Header> paramList)
  {
    try
    {
      if (this.currentPushRequests.contains(Integer.valueOf(paramInt)))
      {
        writeSynResetLater(paramInt, ErrorCode.PROTOCOL_ERROR);
        return;
      }
      this.currentPushRequests.add(Integer.valueOf(paramInt));
    }
    finally {}
    this.pushExecutor.execute(new SpdyConnection.4(this, "OkHttp %s Push Request[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) }, paramInt, paramList));
  }
  
  private void pushResetLater(int paramInt, ErrorCode paramErrorCode)
  {
    this.pushExecutor.execute(new SpdyConnection.7(this, "OkHttp %s Push Reset[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) }, paramInt, paramErrorCode));
  }
  
  private boolean pushedStream(int paramInt)
  {
    return (this.protocol == Protocol.HTTP_2) && (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  private Ping removePing(int paramInt)
  {
    try
    {
      Ping localPing;
      if (this.pings != null) {
        localPing = (Ping)this.pings.remove(Integer.valueOf(paramInt));
      } else {
        localPing = null;
      }
      return localPing;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void setIdle(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l = System.nanoTime();
        this.idleStartTimeNs = l;
        return;
      }
      finally {}
      long l = 9223372036854775807L;
    }
  }
  
  private void writePing(boolean paramBoolean, int paramInt1, int paramInt2, Ping paramPing)
  {
    FrameWriter localFrameWriter = this.frameWriter;
    if (paramPing != null) {}
    try
    {
      paramPing.send();
      this.frameWriter.ping(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally {}
  }
  
  private void writePingLater(boolean paramBoolean, int paramInt1, int paramInt2, Ping paramPing)
  {
    executor.execute(new SpdyConnection.3(this, "OkHttp %s ping %08x%08x", new Object[] { this.hostName, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }, paramBoolean, paramInt1, paramInt2, paramPing));
  }
  
  void addBytesToWriteWindow(long paramLong)
  {
    this.bytesLeftInWriteWindow += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public void close()
  {
    close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
  }
  
  public void flush()
  {
    this.frameWriter.flush();
  }
  
  public long getIdleStartTimeNs()
  {
    try
    {
      long l = this.idleStartTimeNs;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Protocol getProtocol()
  {
    return this.protocol;
  }
  
  SpdyStream getStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.streams.get(Integer.valueOf(paramInt));
      return localSpdyStream;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isIdle()
  {
    try
    {
      long l = this.idleStartTimeNs;
      boolean bool;
      if (l != 9223372036854775807L) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public SpdyStream newStream(List<Header> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    return newStream(0, paramList, paramBoolean1, paramBoolean2);
  }
  
  public int openStreamCount()
  {
    try
    {
      int i = this.streams.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Ping ping()
  {
    Ping localPing1 = new Ping();
    int i;
    try
    {
      if (this.shutdown) {
        throw new IOException("shutdown");
      }
      i = this.nextPingId;
      this.nextPingId += 2;
      if (this.pings == null) {
        this.pings = new HashMap();
      }
      this.pings.put(Integer.valueOf(i), localPing1);
    }
    finally {}
    writePing(false, i, 1330343787, localPing2);
    return localPing2;
  }
  
  public SpdyStream pushStream(int paramInt, List<Header> paramList, boolean paramBoolean)
  {
    if (this.client) {
      throw new IllegalStateException("Client cannot push requests.");
    }
    if (this.protocol != Protocol.HTTP_2) {
      throw new IllegalStateException("protocol != HTTP_2");
    }
    return newStream(paramInt, paramList, paramBoolean, false);
  }
  
  SpdyStream removeStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.streams.remove(Integer.valueOf(paramInt));
      if ((localSpdyStream != null) && (this.streams.isEmpty())) {
        setIdle(true);
      }
      return localSpdyStream;
    }
    finally {}
  }
  
  public void sendConnectionPreface()
  {
    this.frameWriter.connectionPreface();
    this.frameWriter.settings(this.okHttpSettings);
    int i = this.okHttpSettings.getInitialWindowSize(65536);
    if (i != 65536) {
      this.frameWriter.windowUpdate(0, i - 65536);
    }
  }
  
  public void shutdown(ErrorCode paramErrorCode)
  {
    synchronized (this.frameWriter)
    {
      int i;
      try
      {
        boolean bool = this.shutdown;
        if (bool) {
          return;
        }
        this.shutdown = true;
        i = this.lastGoodStreamId;
      }
      finally {}
      this.frameWriter.goAway(i, paramErrorCode, Util.EMPTY_BYTE_ARRAY);
      return;
    }
  }
  
  public void writeData(int paramInt, boolean paramBoolean, ue paramue, long paramLong)
  {
    long l = paramLong;
    if (paramLong == 0L)
    {
      this.frameWriter.data(paramBoolean, paramInt, paramue, 0);
      return;
    }
    while (l > 0L)
    {
      int i;
      try
      {
        try
        {
          while (this.bytesLeftInWriteWindow <= 0L) {
            wait();
          }
        }
        catch (InterruptedException paramue)
        {
          throw new InterruptedIOException();
        }
        i = Math.min((int)Math.min(l, this.bytesLeftInWriteWindow), this.frameWriter.maxDataLength());
        this.bytesLeftInWriteWindow -= i;
      }
      finally {}
      l -= i;
      FrameWriter localFrameWriter = this.frameWriter;
      boolean bool;
      if ((paramBoolean) && (l == 0L)) {
        bool = true;
      } else {
        bool = false;
      }
      localFrameWriter.data(bool, paramInt, paramue, i);
    }
  }
  
  void writeSynReply(int paramInt, boolean paramBoolean, List<Header> paramList)
  {
    this.frameWriter.synReply(paramBoolean, paramInt, paramList);
  }
  
  void writeSynReset(int paramInt, ErrorCode paramErrorCode)
  {
    this.frameWriter.rstStream(paramInt, paramErrorCode);
  }
  
  void writeSynResetLater(int paramInt, ErrorCode paramErrorCode)
  {
    executor.submit(new SpdyConnection.1(this, "OkHttp %s stream %d", new Object[] { this.hostName, Integer.valueOf(paramInt) }, paramInt, paramErrorCode));
  }
  
  void writeWindowUpdateLater(int paramInt, long paramLong)
  {
    executor.execute(new SpdyConnection.2(this, "OkHttp Window Update %s stream %d", new Object[] { this.hostName, Integer.valueOf(paramInt) }, paramInt, paramLong));
  }
  
  public static class Builder
  {
    private boolean client;
    private IncomingStreamHandler handler = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
    private String hostName;
    private Protocol protocol = Protocol.SPDY_3;
    private PushObserver pushObserver = PushObserver.CANCEL;
    private Socket socket;
    
    public Builder(String paramString, boolean paramBoolean, Socket paramSocket)
    {
      this.hostName = paramString;
      this.client = paramBoolean;
      this.socket = paramSocket;
    }
    
    public Builder(boolean paramBoolean, Socket paramSocket)
    {
      this(((InetSocketAddress)paramSocket.getRemoteSocketAddress()).getHostName(), paramBoolean, paramSocket);
    }
    
    public SpdyConnection build()
    {
      return new SpdyConnection(this, null);
    }
    
    public Builder handler(IncomingStreamHandler paramIncomingStreamHandler)
    {
      this.handler = paramIncomingStreamHandler;
      return this;
    }
    
    public Builder protocol(Protocol paramProtocol)
    {
      this.protocol = paramProtocol;
      return this;
    }
    
    public Builder pushObserver(PushObserver paramPushObserver)
    {
      this.pushObserver = paramPushObserver;
      return this;
    }
  }
  
  class Reader
    extends NamedRunnable
    implements FrameReader.Handler
  {
    FrameReader frameReader;
    
    private Reader()
    {
      super(new Object[] { SpdyConnection.this.hostName });
    }
    
    private void ackSettingsLater(Settings paramSettings)
    {
      SpdyConnection.executor.execute(new SpdyConnection.Reader.2(this, "OkHttp %s ACK Settings", new Object[] { SpdyConnection.this.hostName }, paramSettings));
    }
    
    public void ackSettings() {}
    
    public void alternateService(int paramInt1, String paramString1, uj paramuj, String paramString2, int paramInt2, long paramLong) {}
    
    public void data(boolean paramBoolean, int paramInt1, ui paramui, int paramInt2)
    {
      if (SpdyConnection.this.pushedStream(paramInt1))
      {
        SpdyConnection.this.pushDataLater(paramInt1, paramui, paramInt2, paramBoolean);
        return;
      }
      SpdyStream localSpdyStream = SpdyConnection.this.getStream(paramInt1);
      if (localSpdyStream == null)
      {
        SpdyConnection.this.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
        paramui.ᵋ(paramInt2);
        return;
      }
      localSpdyStream.receiveData(paramui, paramInt2);
      if (paramBoolean) {
        localSpdyStream.receiveFin();
      }
    }
    
    protected void execute()
    {
      ErrorCode localErrorCode4 = ErrorCode.INTERNAL_ERROR;
      ErrorCode localErrorCode5 = ErrorCode.INTERNAL_ERROR;
      ErrorCode localErrorCode3 = localErrorCode4;
      ErrorCode localErrorCode1 = localErrorCode4;
      try
      {
        this.frameReader = SpdyConnection.this.variant.newReader(up.ˋ(up.ˋ(SpdyConnection.this.socket)), SpdyConnection.this.client);
        localErrorCode3 = localErrorCode4;
        localErrorCode1 = localErrorCode4;
        if (!SpdyConnection.this.client)
        {
          localErrorCode3 = localErrorCode4;
          localErrorCode1 = localErrorCode4;
          this.frameReader.readConnectionPreface();
        }
        do
        {
          localErrorCode3 = localErrorCode4;
          localErrorCode1 = localErrorCode4;
        } while (this.frameReader.nextFrame(this));
        localErrorCode3 = localErrorCode4;
        localErrorCode1 = localErrorCode4;
        localErrorCode4 = ErrorCode.NO_ERROR;
        localErrorCode3 = localErrorCode4;
        localErrorCode1 = localErrorCode4;
        ErrorCode localErrorCode6 = ErrorCode.CANCEL;
        return;
      }
      catch (IOException localIOException2)
      {
        ErrorCode localErrorCode2 = localErrorCode3;
        localErrorCode3 = ErrorCode.PROTOCOL_ERROR;
        localErrorCode2 = localErrorCode3;
        localErrorCode4 = ErrorCode.PROTOCOL_ERROR;
        return;
      }
      finally
      {
        try
        {
          SpdyConnection.this.close(localIOException3, localErrorCode5);
        }
        catch (IOException localIOException4) {}
        Util.closeQuietly(this.frameReader);
      }
    }
    
    public void goAway(int paramInt, ErrorCode arg2, uj paramuj)
    {
      paramuj.size();
      synchronized (SpdyConnection.this)
      {
        paramuj = (SpdyStream[])SpdyConnection.this.streams.values().toArray(new SpdyStream[SpdyConnection.this.streams.size()]);
        SpdyConnection.access$1402(SpdyConnection.this, true);
      }
      int j = paramuj.length;
      int i = 0;
      while (i < j)
      {
        ??? = paramuj[i];
        if ((???.getId() > paramInt) && (???.isLocallyInitiated()))
        {
          ???.receiveRstStream(ErrorCode.REFUSED_STREAM);
          SpdyConnection.this.removeStream(???.getId());
        }
        i += 1;
      }
    }
    
    public void headers(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList, HeadersMode paramHeadersMode)
    {
      if (SpdyConnection.this.pushedStream(paramInt1))
      {
        SpdyConnection.this.pushHeadersLater(paramInt1, paramList, paramBoolean2);
        return;
      }
      SpdyStream localSpdyStream;
      synchronized (SpdyConnection.this)
      {
        boolean bool = SpdyConnection.this.shutdown;
        if (bool) {
          return;
        }
        localSpdyStream = SpdyConnection.this.getStream(paramInt1);
        if (localSpdyStream == null)
        {
          if (paramHeadersMode.failIfStreamAbsent())
          {
            SpdyConnection.this.writeSynResetLater(paramInt1, ErrorCode.INVALID_STREAM);
            return;
          }
          paramInt2 = SpdyConnection.this.lastGoodStreamId;
          if (paramInt1 <= paramInt2) {
            return;
          }
          paramInt2 = SpdyConnection.this.nextStreamId;
          if (paramInt1 % 2 == paramInt2 % 2) {
            return;
          }
          paramList = new SpdyStream(paramInt1, SpdyConnection.this, paramBoolean1, paramBoolean2, paramList);
          SpdyConnection.access$1502(SpdyConnection.this, paramInt1);
          SpdyConnection.this.streams.put(Integer.valueOf(paramInt1), paramList);
          SpdyConnection.executor.execute(new SpdyConnection.Reader.1(this, "OkHttp %s stream %d", new Object[] { SpdyConnection.this.hostName, Integer.valueOf(paramInt1) }, paramList));
          return;
        }
      }
      if (paramHeadersMode.failIfStreamPresent())
      {
        localSpdyStream.closeLater(ErrorCode.PROTOCOL_ERROR);
        SpdyConnection.this.removeStream(paramInt1);
        return;
      }
      localSpdyStream.receiveHeaders(paramList, paramHeadersMode);
      if (paramBoolean2) {
        localSpdyStream.receiveFin();
      }
    }
    
    public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean)
      {
        Ping localPing = SpdyConnection.this.removePing(paramInt1);
        if (localPing != null) {
          localPing.receive();
        }
        return;
      }
      SpdyConnection.this.writePingLater(true, paramInt1, paramInt2, null);
    }
    
    public void priority(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {}
    
    public void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
    {
      SpdyConnection.this.pushRequestLater(paramInt2, paramList);
    }
    
    public void rstStream(int paramInt, ErrorCode paramErrorCode)
    {
      if (SpdyConnection.this.pushedStream(paramInt))
      {
        SpdyConnection.this.pushResetLater(paramInt, paramErrorCode);
        return;
      }
      SpdyStream localSpdyStream = SpdyConnection.this.removeStream(paramInt);
      if (localSpdyStream != null) {
        localSpdyStream.receiveRstStream(paramErrorCode);
      }
    }
    
    public void settings(boolean paramBoolean, Settings paramSettings)
    {
      long l2 = 0L;
      ??? = null;
      int i;
      int j;
      long l1;
      synchronized (SpdyConnection.this)
      {
        i = SpdyConnection.this.peerSettings.getInitialWindowSize(65536);
        if (paramBoolean) {
          SpdyConnection.this.peerSettings.clear();
        }
        SpdyConnection.this.peerSettings.merge(paramSettings);
        if (SpdyConnection.this.getProtocol() == Protocol.HTTP_2) {
          ackSettingsLater(paramSettings);
        }
        j = SpdyConnection.this.peerSettings.getInitialWindowSize(65536);
        l1 = l2;
        paramSettings = ???;
        if (j != -1)
        {
          l1 = l2;
          paramSettings = ???;
          if (j != i)
          {
            l2 = j - i;
            if (!SpdyConnection.this.receivedInitialPeerSettings)
            {
              SpdyConnection.this.addBytesToWriteWindow(l2);
              SpdyConnection.access$2102(SpdyConnection.this, true);
            }
            l1 = l2;
            paramSettings = ???;
            if (!SpdyConnection.this.streams.isEmpty())
            {
              paramSettings = (SpdyStream[])SpdyConnection.this.streams.values().toArray(new SpdyStream[SpdyConnection.this.streams.size()]);
              l1 = l2;
            }
          }
        }
      }
      if ((paramSettings != null) && (l1 != 0L))
      {
        j = paramSettings.length;
        i = 0;
        while (i < j)
        {
          synchronized (paramSettings[i])
          {
            ???.addBytesToWriteWindow(l1);
          }
          i += 1;
        }
      }
    }
    
    public void windowUpdate(int paramInt, long paramLong)
    {
      if (paramInt == 0)
      {
        synchronized (SpdyConnection.this)
        {
          SpdyConnection localSpdyConnection = SpdyConnection.this;
          localSpdyConnection.bytesLeftInWriteWindow += paramLong;
          SpdyConnection.this.notifyAll();
        }
        return;
      }
      ??? = SpdyConnection.this.getStream(paramInt);
      if (??? != null) {
        try
        {
          ((SpdyStream)???).addBytesToWriteWindow(paramLong);
          return;
        }
        finally
        {
          localObject3 = finally;
          throw localObject3;
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection
 * JD-Core Version:    0.7.0.1
 */