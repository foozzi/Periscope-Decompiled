package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import o.ue;
import o.uh;
import o.ui;
import o.up;
import o.uz;
import o.va;
import o.vb;

public final class HttpConnection
{
  private static final int ON_IDLE_CLOSE = 2;
  private static final int ON_IDLE_HOLD = 0;
  private static final int ON_IDLE_POOL = 1;
  private static final int STATE_CLOSED = 6;
  private static final int STATE_IDLE = 0;
  private static final int STATE_OPEN_REQUEST_BODY = 1;
  private static final int STATE_OPEN_RESPONSE_BODY = 4;
  private static final int STATE_READING_RESPONSE_BODY = 5;
  private static final int STATE_READ_RESPONSE_HEADERS = 3;
  private static final int STATE_WRITING_REQUEST_BODY = 2;
  private final Connection connection;
  private int onIdle = 0;
  private final ConnectionPool pool;
  private final uh sink;
  private final Socket socket;
  private final ui source;
  private int state = 0;
  
  public HttpConnection(ConnectionPool paramConnectionPool, Connection paramConnection, Socket paramSocket)
  {
    this.pool = paramConnectionPool;
    this.connection = paramConnection;
    this.socket = paramSocket;
    this.source = up.ˋ(up.ˋ(paramSocket));
    this.sink = up.ˊ(up.ˊ(paramSocket));
  }
  
  public long bufferSize()
  {
    return this.source.dS().size();
  }
  
  public void closeIfOwnedBy(Object paramObject)
  {
    Internal.instance.closeIfOwnedBy(this.connection, paramObject);
  }
  
  public void closeOnIdle()
  {
    this.onIdle = 2;
    if (this.state == 0)
    {
      this.state = 6;
      this.connection.getSocket().close();
    }
  }
  
  public void flush()
  {
    this.sink.flush();
  }
  
  public boolean isClosed()
  {
    return this.state == 6;
  }
  
  public boolean isReadable()
  {
    try
    {
      int i = this.socket.getSoTimeout();
      try
      {
        this.socket.setSoTimeout(1);
        boolean bool = this.source.dW();
        return !bool;
      }
      finally
      {
        this.socket.setSoTimeout(i);
      }
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException) {}
  }
  
  public uz newChunkedSink()
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 2;
    return new ChunkedSink(null);
  }
  
  public va newChunkedSource(HttpEngine paramHttpEngine)
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new ChunkedSource(paramHttpEngine);
  }
  
  public uz newFixedLengthSink(long paramLong)
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 2;
    return new FixedLengthSink(paramLong, null);
  }
  
  public va newFixedLengthSource(long paramLong)
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new FixedLengthSource(paramLong);
  }
  
  public va newUnknownLengthSource()
  {
    if (this.state != 4) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 5;
    return new UnknownLengthSource(null);
  }
  
  public void poolOnIdle()
  {
    this.onIdle = 1;
    if (this.state == 0)
    {
      this.onIdle = 0;
      Internal.instance.recycle(this.pool, this.connection);
    }
  }
  
  public void readHeaders(Headers.Builder paramBuilder)
  {
    for (;;)
    {
      String str = this.source.ee();
      if (str.length() == 0) {
        break;
      }
      Internal.instance.addLenient(paramBuilder, str);
    }
  }
  
  /* Error */
  public com.squareup.okhttp.Response.Builder readResponse()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/squareup/okhttp/internal/http/HttpConnection:state	I
    //   4: iconst_1
    //   5: if_icmpeq +41 -> 46
    //   8: aload_0
    //   9: getfield 59	com/squareup/okhttp/internal/http/HttpConnection:state	I
    //   12: iconst_3
    //   13: if_icmpeq +33 -> 46
    //   16: new 165	java/lang/IllegalStateException
    //   19: dup
    //   20: new 167	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 168	java/lang/StringBuilder:<init>	()V
    //   27: ldc 170
    //   29: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 59	com/squareup/okhttp/internal/http/HttpConnection:state	I
    //   36: invokevirtual 177	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   39: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokespecial 184	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   45: athrow
    //   46: aload_0
    //   47: getfield 78	com/squareup/okhttp/internal/http/HttpConnection:source	Lo/ui;
    //   50: invokeinterface 215 1 0
    //   55: invokestatic 234	com/squareup/okhttp/internal/http/StatusLine:parse	(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/StatusLine;
    //   58: astore_1
    //   59: new 236	com/squareup/okhttp/Response$Builder
    //   62: dup
    //   63: invokespecial 237	com/squareup/okhttp/Response$Builder:<init>	()V
    //   66: aload_1
    //   67: getfield 241	com/squareup/okhttp/internal/http/StatusLine:protocol	Lcom/squareup/okhttp/Protocol;
    //   70: invokevirtual 244	com/squareup/okhttp/Response$Builder:protocol	(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;
    //   73: aload_1
    //   74: getfield 247	com/squareup/okhttp/internal/http/StatusLine:code	I
    //   77: invokevirtual 250	com/squareup/okhttp/Response$Builder:code	(I)Lcom/squareup/okhttp/Response$Builder;
    //   80: aload_1
    //   81: getfield 254	com/squareup/okhttp/internal/http/StatusLine:message	Ljava/lang/String;
    //   84: invokevirtual 257	com/squareup/okhttp/Response$Builder:message	(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;
    //   87: astore_2
    //   88: new 259	com/squareup/okhttp/Headers$Builder
    //   91: dup
    //   92: invokespecial 260	com/squareup/okhttp/Headers$Builder:<init>	()V
    //   95: astore_3
    //   96: aload_0
    //   97: aload_3
    //   98: invokevirtual 262	com/squareup/okhttp/internal/http/HttpConnection:readHeaders	(Lcom/squareup/okhttp/Headers$Builder;)V
    //   101: aload_3
    //   102: getstatic 267	com/squareup/okhttp/internal/http/OkHeaders:SELECTED_PROTOCOL	Ljava/lang/String;
    //   105: aload_1
    //   106: getfield 241	com/squareup/okhttp/internal/http/StatusLine:protocol	Lcom/squareup/okhttp/Protocol;
    //   109: invokevirtual 270	com/squareup/okhttp/Protocol:toString	()Ljava/lang/String;
    //   112: invokevirtual 274	com/squareup/okhttp/Headers$Builder:add	(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;
    //   115: pop
    //   116: aload_2
    //   117: aload_3
    //   118: invokevirtual 278	com/squareup/okhttp/Headers$Builder:build	()Lcom/squareup/okhttp/Headers;
    //   121: invokevirtual 282	com/squareup/okhttp/Response$Builder:headers	(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;
    //   124: pop
    //   125: aload_1
    //   126: getfield 247	com/squareup/okhttp/internal/http/StatusLine:code	I
    //   129: bipush 100
    //   131: if_icmpeq +10 -> 141
    //   134: aload_0
    //   135: iconst_4
    //   136: putfield 59	com/squareup/okhttp/internal/http/HttpConnection:state	I
    //   139: aload_2
    //   140: areturn
    //   141: goto -95 -> 46
    //   144: astore_1
    //   145: new 150	java/io/IOException
    //   148: dup
    //   149: new 167	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 168	java/lang/StringBuilder:<init>	()V
    //   156: ldc_w 284
    //   159: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload_0
    //   163: getfield 65	com/squareup/okhttp/internal/http/HttpConnection:connection	Lcom/squareup/okhttp/Connection;
    //   166: invokevirtual 287	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   169: ldc_w 289
    //   172: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: getstatic 123	com/squareup/okhttp/internal/Internal:instance	Lcom/squareup/okhttp/internal/Internal;
    //   178: aload_0
    //   179: getfield 65	com/squareup/okhttp/internal/http/HttpConnection:connection	Lcom/squareup/okhttp/Connection;
    //   182: invokevirtual 293	com/squareup/okhttp/internal/Internal:recycleCount	(Lcom/squareup/okhttp/Connection;)I
    //   185: invokevirtual 177	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   188: ldc_w 295
    //   191: invokevirtual 174	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokespecial 296	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   200: astore_2
    //   201: aload_2
    //   202: aload_1
    //   203: invokevirtual 300	java/io/IOException:initCause	(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    //   206: pop
    //   207: aload_2
    //   208: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	this	HttpConnection
    //   58	68	1	localStatusLine	StatusLine
    //   144	59	1	localEOFException	java.io.EOFException
    //   87	121	2	localObject	Object
    //   95	23	3	localBuilder	Headers.Builder
    // Exception table:
    //   from	to	target	type
    //   46	139	144	java/io/EOFException
  }
  
  public void setTimeouts(int paramInt1, int paramInt2)
  {
    if (paramInt1 != 0) {
      this.source.timeout().timeout(paramInt1, TimeUnit.MILLISECONDS);
    }
    if (paramInt2 != 0) {
      this.sink.timeout().timeout(paramInt2, TimeUnit.MILLISECONDS);
    }
  }
  
  public void writeRequest(Headers paramHeaders, String paramString)
  {
    if (this.state != 0) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.sink.ﹰ(paramString).ﹰ("\r\n");
    int i = 0;
    int j = paramHeaders.size();
    while (i < j)
    {
      this.sink.ﹰ(paramHeaders.name(i)).ﹰ(": ").ﹰ(paramHeaders.value(i)).ﹰ("\r\n");
      i += 1;
    }
    this.sink.ﹰ("\r\n");
    this.state = 1;
  }
  
  public void writeRequestBody(RetryableSink paramRetryableSink)
  {
    if (this.state != 1) {
      throw new IllegalStateException("state: " + this.state);
    }
    this.state = 3;
    paramRetryableSink.writeToSocket(this.sink);
  }
  
  abstract class AbstractSource
    implements va
  {
    protected boolean closed;
    
    private AbstractSource() {}
    
    protected final void endOfInput(boolean paramBoolean)
    {
      if (HttpConnection.this.state != 5) {
        throw new IllegalStateException("state: " + HttpConnection.this.state);
      }
      HttpConnection.access$402(HttpConnection.this, 0);
      if ((paramBoolean) && (HttpConnection.this.onIdle == 1))
      {
        HttpConnection.access$602(HttpConnection.this, 0);
        Internal.instance.recycle(HttpConnection.this.pool, HttpConnection.this.connection);
        return;
      }
      if (HttpConnection.this.onIdle == 2)
      {
        HttpConnection.access$402(HttpConnection.this, 6);
        HttpConnection.this.connection.getSocket().close();
      }
    }
    
    public vb timeout()
    {
      return HttpConnection.this.source.timeout();
    }
    
    protected final void unexpectedEndOfInput()
    {
      Util.closeQuietly(HttpConnection.this.connection.getSocket());
      HttpConnection.access$402(HttpConnection.this, 6);
    }
  }
  
  final class ChunkedSink
    implements uz
  {
    private boolean closed;
    
    private ChunkedSink() {}
    
    public void close()
    {
      try
      {
        if (this.closed) {
          return;
        }
        this.closed = true;
        HttpConnection.this.sink.ﹰ("0\r\n\r\n");
        HttpConnection.access$402(HttpConnection.this, 3);
        return;
      }
      finally {}
    }
    
    public void flush()
    {
      try
      {
        if (this.closed) {
          return;
        }
        HttpConnection.this.sink.flush();
        return;
      }
      finally {}
    }
    
    public vb timeout()
    {
      return HttpConnection.this.sink.timeout();
    }
    
    public void write(ue paramue, long paramLong)
    {
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (paramLong == 0L) {
        return;
      }
      HttpConnection.this.sink.ǃ(paramLong);
      HttpConnection.this.sink.ﹰ("\r\n");
      HttpConnection.this.sink.write(paramue, paramLong);
      HttpConnection.this.sink.ﹰ("\r\n");
    }
  }
  
  class ChunkedSource
    extends HttpConnection.AbstractSource
  {
    private static final long NO_CHUNK_YET = -1L;
    private long bytesRemainingInChunk = -1L;
    private boolean hasMoreChunks = true;
    private final HttpEngine httpEngine;
    
    ChunkedSource(HttpEngine paramHttpEngine)
    {
      super(null);
      this.httpEngine = paramHttpEngine;
    }
    
    private void readChunkSize()
    {
      if (this.bytesRemainingInChunk != -1L) {
        HttpConnection.this.source.ee();
      }
      try
      {
        this.bytesRemainingInChunk = HttpConnection.this.source.ec();
        String str = HttpConnection.this.source.ee().trim();
        if ((this.bytesRemainingInChunk < 0L) || ((!str.isEmpty()) && (!str.startsWith(";")))) {
          throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + str + "\"");
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new ProtocolException(localNumberFormatException.getMessage());
      }
      if (this.bytesRemainingInChunk == 0L)
      {
        this.hasMoreChunks = false;
        Headers.Builder localBuilder = new Headers.Builder();
        HttpConnection.this.readHeaders(localBuilder);
        this.httpEngine.receiveHeaders(localBuilder.build());
        endOfInput(true);
      }
    }
    
    public void close()
    {
      if (this.closed) {
        return;
      }
      if ((this.hasMoreChunks) && (!Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
        unexpectedEndOfInput();
      }
      this.closed = true;
    }
    
    public long read(ue paramue, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (!this.hasMoreChunks) {
        return -1L;
      }
      if ((this.bytesRemainingInChunk == 0L) || (this.bytesRemainingInChunk == -1L))
      {
        readChunkSize();
        if (!this.hasMoreChunks) {
          return -1L;
        }
      }
      paramLong = HttpConnection.this.source.read(paramue, Math.min(paramLong, this.bytesRemainingInChunk));
      if (paramLong == -1L)
      {
        unexpectedEndOfInput();
        throw new IOException("unexpected end of stream");
      }
      this.bytesRemainingInChunk -= paramLong;
      return paramLong;
    }
  }
  
  final class FixedLengthSink
    implements uz
  {
    private long bytesRemaining;
    private boolean closed;
    
    private FixedLengthSink(long paramLong)
    {
      this.bytesRemaining = paramLong;
    }
    
    public void close()
    {
      if (this.closed) {
        return;
      }
      this.closed = true;
      if (this.bytesRemaining > 0L) {
        throw new ProtocolException("unexpected end of stream");
      }
      HttpConnection.access$402(HttpConnection.this, 3);
    }
    
    public void flush()
    {
      if (this.closed) {
        return;
      }
      HttpConnection.this.sink.flush();
    }
    
    public vb timeout()
    {
      return HttpConnection.this.sink.timeout();
    }
    
    public void write(ue paramue, long paramLong)
    {
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      Util.checkOffsetAndCount(paramue.size(), 0L, paramLong);
      if (paramLong > this.bytesRemaining) {
        throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + paramLong);
      }
      HttpConnection.this.sink.write(paramue, paramLong);
      this.bytesRemaining -= paramLong;
    }
  }
  
  class FixedLengthSource
    extends HttpConnection.AbstractSource
  {
    private long bytesRemaining;
    
    public FixedLengthSource(long paramLong)
    {
      super(null);
      this.bytesRemaining = paramLong;
      if (this.bytesRemaining == 0L) {
        endOfInput(true);
      }
    }
    
    public void close()
    {
      if (this.closed) {
        return;
      }
      if ((this.bytesRemaining != 0L) && (!Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
        unexpectedEndOfInput();
      }
      this.closed = true;
    }
    
    public long read(ue paramue, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (this.bytesRemaining == 0L) {
        return -1L;
      }
      paramLong = HttpConnection.this.source.read(paramue, Math.min(this.bytesRemaining, paramLong));
      if (paramLong == -1L)
      {
        unexpectedEndOfInput();
        throw new ProtocolException("unexpected end of stream");
      }
      this.bytesRemaining -= paramLong;
      if (this.bytesRemaining == 0L) {
        endOfInput(true);
      }
      return paramLong;
    }
  }
  
  class UnknownLengthSource
    extends HttpConnection.AbstractSource
  {
    private boolean inputExhausted;
    
    private UnknownLengthSource()
    {
      super(null);
    }
    
    public void close()
    {
      if (this.closed) {
        return;
      }
      if (!this.inputExhausted) {
        unexpectedEndOfInput();
      }
      this.closed = true;
    }
    
    public long read(ue paramue, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      if (this.closed) {
        throw new IllegalStateException("closed");
      }
      if (this.inputExhausted) {
        return -1L;
      }
      paramLong = HttpConnection.this.source.read(paramue, paramLong);
      if (paramLong == -1L)
      {
        this.inputExhausted = true;
        endOfInput(false);
        return -1L;
      }
      return paramLong;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpConnection
 * JD-Core Version:    0.7.0.1
 */