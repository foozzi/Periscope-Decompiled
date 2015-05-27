package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Call
{
  volatile boolean canceled;
  private final OkHttpClient client;
  HttpEngine engine;
  private boolean executed;
  Request originalRequest;
  
  protected Call(OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    this.client = paramOkHttpClient.copyWithDefaults();
    this.originalRequest = paramRequest;
  }
  
  private Response getResponseWithInterceptorChain(boolean paramBoolean)
  {
    return new ApplicationInterceptorChain(0, this.originalRequest, paramBoolean).proceed(this.originalRequest);
  }
  
  private String toLoggableString()
  {
    String str1;
    if (this.canceled) {
      str1 = "canceled call";
    } else {
      str1 = "call";
    }
    try
    {
      String str2 = new URL(this.originalRequest.url(), "/...").toString();
      str2 = str1 + " to " + str2;
      return str2;
    }
    catch (MalformedURLException localMalformedURLException) {}
    return str1;
  }
  
  public void cancel()
  {
    this.canceled = true;
    if (this.engine != null) {
      this.engine.disconnect();
    }
  }
  
  public void enqueue(Callback paramCallback)
  {
    enqueue(paramCallback, false);
  }
  
  void enqueue(Callback paramCallback, boolean paramBoolean)
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already Executed");
      }
      this.executed = true;
    }
    finally {}
    this.client.getDispatcher().enqueue(new AsyncCall(paramCallback, paramBoolean, null));
  }
  
  public Response execute()
  {
    try
    {
      if (this.executed) {
        throw new IllegalStateException("Already Executed");
      }
      this.executed = true;
    }
    finally {}
    try
    {
      this.client.getDispatcher().executed(this);
      Response localResponse = getResponseWithInterceptorChain(false);
      if (localResponse == null) {
        throw new IOException("Canceled");
      }
      return localResponse;
    }
    finally
    {
      this.client.getDispatcher().finished(this);
    }
  }
  
  Response getResponse(Request paramRequest, boolean paramBoolean)
  {
    Object localObject2 = paramRequest.body();
    Object localObject1 = paramRequest;
    if (localObject2 != null)
    {
      paramRequest = paramRequest.newBuilder();
      localObject1 = ((RequestBody)localObject2).contentType();
      if (localObject1 != null) {
        paramRequest.header("Content-Type", ((MediaType)localObject1).toString());
      }
      long l = ((RequestBody)localObject2).contentLength();
      if (l != -1L)
      {
        paramRequest.header("Content-Length", Long.toString(l));
        paramRequest.removeHeader("Transfer-Encoding");
      }
      else
      {
        paramRequest.header("Transfer-Encoding", "chunked");
        paramRequest.removeHeader("Content-Length");
      }
      localObject1 = paramRequest.build();
    }
    this.engine = new HttpEngine(this.client, (Request)localObject1, false, false, paramBoolean, null, null, null, null);
    int i = 0;
    for (;;)
    {
      if (this.canceled)
      {
        this.engine.releaseConnection();
        return null;
      }
      try
      {
        this.engine.sendRequest();
        this.engine.readResponse();
      }
      catch (IOException paramRequest)
      {
        localObject1 = this.engine.recover(paramRequest, null);
        if (localObject1 != null)
        {
          this.engine = ((HttpEngine)localObject1);
          continue;
        }
        throw paramRequest;
      }
      paramRequest = this.engine.getResponse();
      localObject1 = this.engine.followUpRequest();
      if (localObject1 == null)
      {
        if (!paramBoolean) {
          this.engine.releaseConnection();
        }
        return paramRequest;
      }
      i += 1;
      if (i > 20) {
        throw new ProtocolException("Too many follow-up requests: " + i);
      }
      if (!this.engine.sameConnection(((Request)localObject1).url())) {
        this.engine.releaseConnection();
      }
      localObject2 = this.engine.close();
      this.engine = new HttpEngine(this.client, (Request)localObject1, false, false, paramBoolean, (Connection)localObject2, null, null, paramRequest);
    }
  }
  
  public boolean isCanceled()
  {
    return this.canceled;
  }
  
  Object tag()
  {
    return this.originalRequest.tag();
  }
  
  class ApplicationInterceptorChain
    implements Interceptor.Chain
  {
    private final boolean forWebSocket;
    private final int index;
    private final Request request;
    
    ApplicationInterceptorChain(int paramInt, Request paramRequest, boolean paramBoolean)
    {
      this.index = paramInt;
      this.request = paramRequest;
      this.forWebSocket = paramBoolean;
    }
    
    public Connection connection()
    {
      return null;
    }
    
    public Response proceed(Request paramRequest)
    {
      if (this.index < Call.this.client.interceptors().size())
      {
        paramRequest = new ApplicationInterceptorChain(Call.this, this.index + 1, paramRequest, this.forWebSocket);
        return ((Interceptor)Call.this.client.interceptors().get(this.index)).intercept(paramRequest);
      }
      return Call.this.getResponse(paramRequest, this.forWebSocket);
    }
    
    public Request request()
    {
      return this.request;
    }
  }
  
  final class AsyncCall
    extends NamedRunnable
  {
    private final boolean forWebSocket;
    private final Callback responseCallback;
    
    private AsyncCall(Callback paramCallback, boolean paramBoolean)
    {
      super(new Object[] { Call.this.originalRequest.urlString() });
      this.responseCallback = paramCallback;
      this.forWebSocket = paramBoolean;
    }
    
    void cancel()
    {
      Call.this.cancel();
    }
    
    protected void execute()
    {
      int j = 0;
      int i = j;
      try
      {
        Response localResponse = Call.this.getResponseWithInterceptorChain(this.forWebSocket);
        i = j;
        if (Call.this.canceled)
        {
          i = 1;
          this.responseCallback.onFailure(Call.this.originalRequest, new IOException("Canceled"));
        }
        else
        {
          i = 1;
          this.responseCallback.onResponse(localResponse);
        }
        return;
      }
      catch (IOException localIOException)
      {
        if (i != 0) {
          Internal.logger.log(Level.INFO, "Callback failure for " + Call.this.toLoggableString(), localIOException);
        } else {
          this.responseCallback.onFailure(Call.this.engine.getRequest(), localIOException);
        }
        return;
      }
      finally
      {
        Call.this.client.getDispatcher().finished(this);
      }
    }
    
    Call get()
    {
      return Call.this;
    }
    
    String host()
    {
      return Call.this.originalRequest.url().getHost();
    }
    
    Request request()
    {
      return Call.this.originalRequest;
    }
    
    Object tag()
    {
      return Call.this.originalRequest.tag();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Call
 * JD-Core Version:    0.7.0.1
 */