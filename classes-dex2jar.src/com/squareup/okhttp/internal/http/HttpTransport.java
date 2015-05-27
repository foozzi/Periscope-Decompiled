package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import java.net.Proxy;
import o.up;
import o.uz;
import o.va;

public final class HttpTransport
  implements Transport
{
  private final HttpConnection httpConnection;
  private final HttpEngine httpEngine;
  
  public HttpTransport(HttpEngine paramHttpEngine, HttpConnection paramHttpConnection)
  {
    this.httpEngine = paramHttpEngine;
    this.httpConnection = paramHttpConnection;
  }
  
  private va getTransferStream(Response paramResponse)
  {
    if (!HttpEngine.hasBody(paramResponse)) {
      return this.httpConnection.newFixedLengthSource(0L);
    }
    if ("chunked".equalsIgnoreCase(paramResponse.header("Transfer-Encoding"))) {
      return this.httpConnection.newChunkedSource(this.httpEngine);
    }
    long l = OkHeaders.contentLength(paramResponse);
    if (l != -1L) {
      return this.httpConnection.newFixedLengthSource(l);
    }
    return this.httpConnection.newUnknownLengthSource();
  }
  
  public boolean canReuseConnection()
  {
    if ("close".equalsIgnoreCase(this.httpEngine.getRequest().header("Connection"))) {
      return false;
    }
    if ("close".equalsIgnoreCase(this.httpEngine.getResponse().header("Connection"))) {
      return false;
    }
    return !this.httpConnection.isClosed();
  }
  
  public uz createRequestBody(Request paramRequest, long paramLong)
  {
    if ("chunked".equalsIgnoreCase(paramRequest.header("Transfer-Encoding"))) {
      return this.httpConnection.newChunkedSink();
    }
    if (paramLong != -1L) {
      return this.httpConnection.newFixedLengthSink(paramLong);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public void disconnect(HttpEngine paramHttpEngine)
  {
    this.httpConnection.closeIfOwnedBy(paramHttpEngine);
  }
  
  public void finishRequest()
  {
    this.httpConnection.flush();
  }
  
  public ResponseBody openResponseBody(Response paramResponse)
  {
    va localva = getTransferStream(paramResponse);
    return new RealResponseBody(paramResponse.headers(), up.ˋ(localva));
  }
  
  public Response.Builder readResponseHeaders()
  {
    return this.httpConnection.readResponse();
  }
  
  public void releaseConnectionOnIdle()
  {
    if (canReuseConnection())
    {
      this.httpConnection.poolOnIdle();
      return;
    }
    this.httpConnection.closeOnIdle();
  }
  
  public void writeRequestBody(RetryableSink paramRetryableSink)
  {
    this.httpConnection.writeRequestBody(paramRetryableSink);
  }
  
  public void writeRequestHeaders(Request paramRequest)
  {
    this.httpEngine.writingRequestHeaders();
    String str = RequestLine.get(paramRequest, this.httpEngine.getConnection().getRoute().getProxy().type(), this.httpEngine.getConnection().getProtocol());
    this.httpConnection.writeRequest(paramRequest.headers(), str);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpTransport
 * JD-Core Version:    0.7.0.1
 */