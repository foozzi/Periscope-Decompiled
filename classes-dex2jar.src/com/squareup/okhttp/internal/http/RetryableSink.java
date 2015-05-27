package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.net.ProtocolException;
import o.ue;
import o.uz;
import o.vb;

public final class RetryableSink
  implements uz
{
  private boolean closed;
  private final ue content = new ue();
  private final int limit;
  
  public RetryableSink()
  {
    this(-1);
  }
  
  public RetryableSink(int paramInt)
  {
    this.limit = paramInt;
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    if (this.content.size() < this.limit) {
      throw new ProtocolException("content-length promised " + this.limit + " bytes, but received " + this.content.size());
    }
  }
  
  public long contentLength()
  {
    return this.content.size();
  }
  
  public void flush() {}
  
  public vb timeout()
  {
    return vb.NONE;
  }
  
  public void write(ue paramue, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    Util.checkOffsetAndCount(paramue.size(), 0L, paramLong);
    if ((this.limit != -1) && (this.content.size() > this.limit - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + this.limit + " bytes");
    }
    this.content.write(paramue, paramLong);
  }
  
  public void writeToSocket(uz paramuz)
  {
    ue localue = new ue();
    this.content.ˊ(localue, 0L, this.content.size());
    paramuz.write(localue, localue.size());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.RetryableSink
 * JD-Core Version:    0.7.0.1
 */