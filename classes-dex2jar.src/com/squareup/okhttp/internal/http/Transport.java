package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import o.uz;

public abstract interface Transport
{
  public static final int DISCARD_STREAM_TIMEOUT_MILLIS = 100;
  
  public abstract boolean canReuseConnection();
  
  public abstract uz createRequestBody(Request paramRequest, long paramLong);
  
  public abstract void disconnect(HttpEngine paramHttpEngine);
  
  public abstract void finishRequest();
  
  public abstract ResponseBody openResponseBody(Response paramResponse);
  
  public abstract Response.Builder readResponseHeaders();
  
  public abstract void releaseConnectionOnIdle();
  
  public abstract void writeRequestBody(RetryableSink paramRetryableSink);
  
  public abstract void writeRequestHeaders(Request paramRequest);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.Transport
 * JD-Core Version:    0.7.0.1
 */