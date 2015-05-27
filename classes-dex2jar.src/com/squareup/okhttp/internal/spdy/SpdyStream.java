package com.squareup.okhttp.internal.spdy;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;
import o.ua;
import o.ue;
import o.ui;
import o.uz;
import o.va;
import o.vb;

public final class SpdyStream
{
  long bytesLeftInWriteWindow;
  private final SpdyConnection connection;
  private ErrorCode errorCode = null;
  private final int id;
  private final SpdyTimeout readTimeout = new SpdyTimeout();
  private final List<Header> requestHeaders;
  private List<Header> responseHeaders;
  final SpdyDataSink sink;
  private final SpdyDataSource source;
  long unacknowledgedBytesRead = 0L;
  private final SpdyTimeout writeTimeout = new SpdyTimeout();
  
  static
  {
    boolean bool;
    if (!SpdyStream.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    }
    $assertionsDisabled = bool;
  }
  
  SpdyStream(int paramInt, SpdyConnection paramSpdyConnection, boolean paramBoolean1, boolean paramBoolean2, List<Header> paramList)
  {
    if (paramSpdyConnection == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    this.id = paramInt;
    this.connection = paramSpdyConnection;
    this.bytesLeftInWriteWindow = paramSpdyConnection.peerSettings.getInitialWindowSize(65536);
    this.source = new SpdyDataSource(paramSpdyConnection.okHttpSettings.getInitialWindowSize(65536), null);
    this.sink = new SpdyDataSink();
    SpdyDataSource.access$102(this.source, paramBoolean2);
    SpdyDataSink.access$202(this.sink, paramBoolean1);
    this.requestHeaders = paramList;
  }
  
  private void cancelStreamIfNecessary()
  {
    assert (!Thread.holdsLock(this));
    for (;;)
    {
      try
      {
        if ((this.source.finished) || (!this.source.closed)) {
          break label115;
        }
        if (this.sink.finished) {
          break label110;
        }
        if (!this.sink.closed) {
          break label115;
        }
      }
      finally {}
      boolean bool = isOpen();
      if (i != 0)
      {
        close(ErrorCode.CANCEL);
        return;
      }
      if (!bool) {
        this.connection.removeStream(this.id);
      }
      return;
      label110:
      int i = 1;
      continue;
      label115:
      i = 0;
    }
  }
  
  private void checkOutNotClosed()
  {
    if (this.sink.closed) {
      throw new IOException("stream closed");
    }
    if (this.sink.finished) {
      throw new IOException("stream finished");
    }
    if (this.errorCode != null) {
      throw new IOException("stream was reset: " + this.errorCode);
    }
  }
  
  private boolean closeInternal(ErrorCode paramErrorCode)
  {
    assert (!Thread.holdsLock(this));
    try
    {
      ErrorCode localErrorCode = this.errorCode;
      if (localErrorCode != null) {
        return false;
      }
      if (this.source.finished)
      {
        boolean bool = this.sink.finished;
        if (bool) {
          return false;
        }
      }
      this.errorCode = paramErrorCode;
      notifyAll();
    }
    finally {}
    this.connection.removeStream(this.id);
    return true;
  }
  
  private void waitForIo()
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  void addBytesToWriteWindow(long paramLong)
  {
    this.bytesLeftInWriteWindow += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public void close(ErrorCode paramErrorCode)
  {
    if (!closeInternal(paramErrorCode)) {
      return;
    }
    this.connection.writeSynReset(this.id, paramErrorCode);
  }
  
  public void closeLater(ErrorCode paramErrorCode)
  {
    if (!closeInternal(paramErrorCode)) {
      return;
    }
    this.connection.writeSynResetLater(this.id, paramErrorCode);
  }
  
  public SpdyConnection getConnection()
  {
    return this.connection;
  }
  
  public ErrorCode getErrorCode()
  {
    try
    {
      ErrorCode localErrorCode = this.errorCode;
      return localErrorCode;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public List<Header> getRequestHeaders()
  {
    return this.requestHeaders;
  }
  
  public List<Header> getResponseHeaders()
  {
    try
    {
      this.readTimeout.enter();
      try
      {
        while ((this.responseHeaders == null) && (this.errorCode == null)) {
          waitForIo();
        }
        this.readTimeout.exitAndThrowIfTimedOut();
      }
      finally
      {
        this.readTimeout.exitAndThrowIfTimedOut();
      }
      List localList = this.responseHeaders;
      return localList;
    }
    finally {}
    throw new IOException("stream was reset: " + this.errorCode);
  }
  
  public uz getSink()
  {
    try
    {
      if ((this.responseHeaders == null) && (!isLocallyInitiated())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    return this.sink;
  }
  
  public va getSource()
  {
    return this.source;
  }
  
  public boolean isLocallyInitiated()
  {
    int i;
    if ((this.id & 0x1) == 1) {
      i = 1;
    } else {
      i = 0;
    }
    return this.connection.client == i;
  }
  
  public boolean isOpen()
  {
    try
    {
      if (this.errorCode != null) {
        return false;
      }
      if (((this.source.finished) || (this.source.closed)) && ((this.sink.finished) || (this.sink.closed)))
      {
        List localList = this.responseHeaders;
        if (localList != null) {
          return false;
        }
      }
      return true;
    }
    finally {}
  }
  
  public vb readTimeout()
  {
    return this.readTimeout;
  }
  
  void receiveData(ui paramui, int paramInt)
  {
    assert (!Thread.holdsLock(this));
    this.source.receive(paramui, paramInt);
  }
  
  void receiveFin()
  {
    assert (!Thread.holdsLock(this));
    boolean bool;
    try
    {
      SpdyDataSource.access$102(this.source, true);
      bool = isOpen();
      notifyAll();
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    if (!bool) {
      this.connection.removeStream(this.id);
    }
  }
  
  void receiveHeaders(List<Header> paramList, HeadersMode paramHeadersMode)
  {
    assert (!Thread.holdsLock(this));
    Object localObject = null;
    boolean bool = true;
    try
    {
      if (this.responseHeaders == null)
      {
        if (paramHeadersMode.failIfHeadersAbsent())
        {
          paramList = ErrorCode.PROTOCOL_ERROR;
        }
        else
        {
          this.responseHeaders = paramList;
          bool = isOpen();
          notifyAll();
          paramList = localObject;
        }
      }
      else if (paramHeadersMode.failIfHeadersPresent())
      {
        paramList = ErrorCode.STREAM_IN_USE;
      }
      else
      {
        paramHeadersMode = new ArrayList();
        paramHeadersMode.addAll(this.responseHeaders);
        paramHeadersMode.addAll(paramList);
        this.responseHeaders = paramHeadersMode;
        paramList = localObject;
      }
    }
    finally {}
    if (paramList != null)
    {
      closeLater(paramList);
      return;
    }
    if (!bool) {
      this.connection.removeStream(this.id);
    }
  }
  
  void receiveRstStream(ErrorCode paramErrorCode)
  {
    try
    {
      if (this.errorCode == null)
      {
        this.errorCode = paramErrorCode;
        notifyAll();
      }
      return;
    }
    finally
    {
      paramErrorCode = finally;
      throw paramErrorCode;
    }
  }
  
  public void reply(List<Header> paramList, boolean paramBoolean)
  {
    assert (!Thread.holdsLock(this));
    boolean bool = false;
    if (paramList == null) {}
    try
    {
      throw new NullPointerException("responseHeaders == null");
    }
    finally {}
    if (this.responseHeaders != null) {
      throw new IllegalStateException("reply already sent");
    }
    this.responseHeaders = paramList;
    if (!paramBoolean)
    {
      SpdyDataSink.access$202(this.sink, true);
      bool = true;
    }
    this.connection.writeSynReply(this.id, bool, paramList);
    if (bool) {
      this.connection.flush();
    }
  }
  
  public vb writeTimeout()
  {
    return this.writeTimeout;
  }
  
  final class SpdyDataSink
    implements uz
  {
    private static final long EMIT_BUFFER_SIZE = 16384L;
    private boolean closed;
    private boolean finished;
    private final ue sendBuffer = new ue();
    
    static
    {
      boolean bool;
      if (!SpdyStream.class.desiredAssertionStatus()) {
        bool = true;
      } else {
        bool = false;
      }
      $assertionsDisabled = bool;
    }
    
    SpdyDataSink() {}
    
    private void emitDataFrame(boolean paramBoolean)
    {
      long l;
      synchronized (SpdyStream.this)
      {
        SpdyStream.this.writeTimeout.enter();
        try
        {
          while ((SpdyStream.this.bytesLeftInWriteWindow <= 0L) && (!this.finished) && (!this.closed) && (SpdyStream.this.errorCode == null)) {
            SpdyStream.this.waitForIo();
          }
          SpdyStream.this.writeTimeout.exitAndThrowIfTimedOut();
        }
        finally
        {
          SpdyStream.this.writeTimeout.exitAndThrowIfTimedOut();
        }
        l = Math.min(SpdyStream.this.bytesLeftInWriteWindow, this.sendBuffer.size());
        SpdyStream localSpdyStream = SpdyStream.this;
        localSpdyStream.bytesLeftInWriteWindow -= l;
      }
      ??? = SpdyStream.this.connection;
      int i = SpdyStream.this.id;
      if ((paramBoolean) && (l == this.sendBuffer.size())) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      ((SpdyConnection)???).writeData(i, paramBoolean, this.sendBuffer, l);
    }
    
    public void close()
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      synchronized (SpdyStream.this)
      {
        boolean bool = this.closed;
        if (bool) {
          return;
        }
      }
      if (!SpdyStream.this.sink.finished)
      {
        if (this.sendBuffer.size() > 0L) {
          while (this.sendBuffer.size() > 0L) {
            emitDataFrame(true);
          }
        }
        SpdyStream.this.connection.writeData(SpdyStream.this.id, true, null, 0L);
      }
      synchronized (SpdyStream.this)
      {
        this.closed = true;
      }
      SpdyStream.this.connection.flush();
      SpdyStream.this.cancelStreamIfNecessary();
    }
    
    public void flush()
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      synchronized (SpdyStream.this)
      {
        SpdyStream.this.checkOutNotClosed();
      }
      while (this.sendBuffer.size() > 0L) {
        emitDataFrame(false);
      }
      SpdyStream.this.connection.flush();
    }
    
    public vb timeout()
    {
      return SpdyStream.this.writeTimeout;
    }
    
    public void write(ue paramue, long paramLong)
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      this.sendBuffer.write(paramue, paramLong);
      while (this.sendBuffer.size() >= 16384L) {
        emitDataFrame(false);
      }
    }
  }
  
  final class SpdyDataSource
    implements va
  {
    private boolean closed;
    private boolean finished;
    private final long maxByteCount;
    private final ue readBuffer = new ue();
    private final ue receiveBuffer = new ue();
    
    static
    {
      boolean bool;
      if (!SpdyStream.class.desiredAssertionStatus()) {
        bool = true;
      } else {
        bool = false;
      }
      $assertionsDisabled = bool;
    }
    
    private SpdyDataSource(long paramLong)
    {
      this.maxByteCount = paramLong;
    }
    
    private void checkNotClosed()
    {
      if (this.closed) {
        throw new IOException("stream closed");
      }
      if (SpdyStream.this.errorCode != null) {
        throw new IOException("stream was reset: " + SpdyStream.this.errorCode);
      }
    }
    
    private void waitUntilReadable()
    {
      SpdyStream.this.readTimeout.enter();
      try
      {
        while ((this.readBuffer.size() == 0L) && (!this.finished) && (!this.closed) && (SpdyStream.this.errorCode == null)) {
          SpdyStream.this.waitForIo();
        }
        return;
      }
      finally
      {
        SpdyStream.this.readTimeout.exitAndThrowIfTimedOut();
      }
    }
    
    public void close()
    {
      synchronized (SpdyStream.this)
      {
        this.closed = true;
        this.readBuffer.clear();
        SpdyStream.this.notifyAll();
      }
      SpdyStream.this.cancelStreamIfNecessary();
    }
    
    public long read(ue arg1, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      synchronized (SpdyStream.this)
      {
        waitUntilReadable();
        checkNotClosed();
        long l = this.readBuffer.size();
        if (l == 0L) {
          return -1L;
        }
        paramLong = this.readBuffer.read(???, Math.min(paramLong, this.readBuffer.size()));
        ??? = SpdyStream.this;
        ???.unacknowledgedBytesRead += paramLong;
        if (SpdyStream.this.unacknowledgedBytesRead >= SpdyStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2)
        {
          SpdyStream.this.connection.writeWindowUpdateLater(SpdyStream.this.id, SpdyStream.this.unacknowledgedBytesRead);
          SpdyStream.this.unacknowledgedBytesRead = 0L;
        }
      }
      synchronized (SpdyStream.this.connection)
      {
        ??? = SpdyStream.this.connection;
        ((SpdyConnection)???).unacknowledgedBytesRead += paramLong;
        if (SpdyStream.this.connection.unacknowledgedBytesRead >= SpdyStream.this.connection.okHttpSettings.getInitialWindowSize(65536) / 2)
        {
          SpdyStream.this.connection.writeWindowUpdateLater(0, SpdyStream.this.connection.unacknowledgedBytesRead);
          SpdyStream.this.connection.unacknowledgedBytesRead = 0L;
        }
        return paramLong;
      }
    }
    
    void receive(ui paramui, long paramLong)
    {
      long l1 = paramLong;
      if (!$assertionsDisabled)
      {
        l1 = paramLong;
        if (Thread.holdsLock(SpdyStream.this)) {
          throw new AssertionError();
        }
      }
      int i;
      if (l1 > 0L)
      {
        boolean bool;
        synchronized (SpdyStream.this)
        {
          bool = this.finished;
          paramLong = this.readBuffer.size();
          long l2 = this.maxByteCount;
          if (paramLong + l1 > l2) {
            i = 1;
          } else {
            i = 0;
          }
        }
        if (i != 0)
        {
          paramui.ᵋ(l1);
          SpdyStream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
          return;
        }
        if (bool)
        {
          paramui.ᵋ(l1);
          return;
        }
        paramLong = paramui.read(this.receiveBuffer, l1);
        if (paramLong == -1L) {
          throw new EOFException();
        }
        l1 -= paramLong;
      }
      for (;;)
      {
        synchronized (SpdyStream.this)
        {
          if (this.readBuffer.size() != 0L) {
            break label237;
          }
          i = 1;
          this.readBuffer.ˊ(this.receiveBuffer);
          if (i != 0) {
            SpdyStream.this.notifyAll();
          }
        }
        break;
        return;
        label237:
        i = 0;
      }
    }
    
    public vb timeout()
    {
      return SpdyStream.this.readTimeout;
    }
  }
  
  class SpdyTimeout
    extends ua
  {
    SpdyTimeout() {}
    
    public void exitAndThrowIfTimedOut()
    {
      if (exit()) {
        throw new InterruptedIOException("timeout");
      }
    }
    
    protected void timedOut()
    {
      SpdyStream.this.closeLater(ErrorCode.CANCEL);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyStream
 * JD-Core Version:    0.7.0.1
 */