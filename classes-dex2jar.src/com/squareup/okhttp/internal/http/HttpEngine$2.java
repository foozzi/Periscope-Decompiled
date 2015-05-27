package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import o.ue;
import o.uh;
import o.ui;
import o.va;
import o.vb;

class HttpEngine$2
  implements va
{
  boolean cacheRequestClosed;
  
  HttpEngine$2(HttpEngine paramHttpEngine, ui paramui, CacheRequest paramCacheRequest, uh paramuh) {}
  
  public void close()
  {
    if ((!this.cacheRequestClosed) && (!Util.discard(this, 100, TimeUnit.MILLISECONDS)))
    {
      this.cacheRequestClosed = true;
      this.val$cacheRequest.abort();
    }
    this.val$source.close();
  }
  
  public long read(ue paramue, long paramLong)
  {
    try
    {
      paramLong = this.val$source.read(paramue, paramLong);
    }
    catch (IOException paramue)
    {
      if (!this.cacheRequestClosed)
      {
        this.cacheRequestClosed = true;
        this.val$cacheRequest.abort();
      }
      throw paramue;
    }
    if (paramLong == -1L)
    {
      if (!this.cacheRequestClosed)
      {
        this.cacheRequestClosed = true;
        this.val$cacheBody.close();
      }
      return -1L;
    }
    paramue.ˊ(this.val$cacheBody.dS(), paramue.size() - paramLong, paramLong);
    this.val$cacheBody.eh();
    return paramLong;
  }
  
  public vb timeout()
  {
    return this.val$source.timeout();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpEngine.2
 * JD-Core Version:    0.7.0.1
 */