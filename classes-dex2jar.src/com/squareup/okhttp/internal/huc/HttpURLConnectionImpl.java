package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Handshake;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpDate;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.RetryableSink;
import com.squareup.okhttp.internal.http.StatusLine;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import o.uh;
import o.uz;

public class HttpURLConnectionImpl
  extends HttpURLConnection
{
  private static final Set<String> METHODS = new LinkedHashSet(Arrays.asList(new String[] { "OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH" }));
  final OkHttpClient client;
  private long fixedContentLength = -1L;
  private int followUpCount;
  Handshake handshake;
  protected HttpEngine httpEngine;
  protected IOException httpEngineFailure;
  private Headers.Builder requestHeaders = new Headers.Builder();
  private Headers responseHeaders;
  private Route route;
  
  public HttpURLConnectionImpl(URL paramURL, OkHttpClient paramOkHttpClient)
  {
    super(paramURL);
    this.client = paramOkHttpClient;
  }
  
  private String defaultUserAgent()
  {
    String str = System.getProperty("http.agent");
    if (str != null) {
      return str;
    }
    return "Java" + System.getProperty("java.version");
  }
  
  private boolean execute(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        this.httpEngine.sendRequest();
        this.route = this.httpEngine.getRoute();
        if (this.httpEngine.getConnection() != null)
        {
          Handshake localHandshake = this.httpEngine.getConnection().getHandshake();
          this.handshake = localHandshake;
          if (paramBoolean) {
            this.httpEngine.readResponse();
          }
          return true;
        }
      }
      catch (IOException localIOException)
      {
        HttpEngine localHttpEngine = this.httpEngine.recover(localIOException);
        if (localHttpEngine != null)
        {
          this.httpEngine = localHttpEngine;
          return false;
        }
        this.httpEngineFailure = localIOException;
        throw localIOException;
      }
      Object localObject = null;
    }
  }
  
  private Headers getHeaders()
  {
    if (this.responseHeaders == null)
    {
      Response localResponse = getResponse().getResponse();
      this.responseHeaders = localResponse.headers().newBuilder().add(Platform.get().getPrefix() + "-Response-Source", responseSourceHeader(localResponse)).build();
    }
    return this.responseHeaders;
  }
  
  private HttpEngine getResponse()
  {
    initHttpEngine();
    if (this.httpEngine.hasResponse()) {
      return this.httpEngine;
    }
    for (;;)
    {
      if (execute(true))
      {
        Response localResponse = this.httpEngine.getResponse();
        Request localRequest = this.httpEngine.followUpRequest();
        if (localRequest == null)
        {
          this.httpEngine.releaseConnection();
          return this.httpEngine;
        }
        int i = this.followUpCount + 1;
        this.followUpCount = i;
        if (i > 20) {
          throw new ProtocolException("Too many follow-up requests: " + this.followUpCount);
        }
        this.url = localRequest.url();
        this.requestHeaders = localRequest.headers().newBuilder();
        uz localuz = this.httpEngine.getRequestBody();
        if (!localRequest.method().equals(this.method)) {
          localuz = null;
        }
        if ((localuz != null) && (!(localuz instanceof RetryableSink))) {
          throw new HttpRetryException("Cannot retry streamed HTTP body", this.responseCode);
        }
        if (!this.httpEngine.sameConnection(localRequest.url())) {
          this.httpEngine.releaseConnection();
        }
        Connection localConnection = this.httpEngine.close();
        this.httpEngine = newHttpEngine(localRequest.method(), localConnection, (RetryableSink)localuz, localResponse);
      }
    }
  }
  
  private void initHttpEngine()
  {
    if (this.httpEngineFailure != null) {
      throw this.httpEngineFailure;
    }
    if (this.httpEngine != null) {
      return;
    }
    this.connected = true;
    try
    {
      if (this.doOutput) {
        if (this.method.equals("GET")) {
          this.method = "POST";
        } else if (!HttpMethod.permitsRequestBody(this.method)) {
          throw new ProtocolException(this.method + " does not support writing");
        }
      }
      this.httpEngine = newHttpEngine(this.method, null, null, null);
      return;
    }
    catch (IOException localIOException)
    {
      this.httpEngineFailure = localIOException;
      throw localIOException;
    }
  }
  
  private HttpEngine newHttpEngine(String paramString, Connection paramConnection, RetryableSink paramRetryableSink, Response paramResponse)
  {
    Object localObject1 = new Request.Builder().url(getURL()).method(paramString, null);
    Object localObject2 = this.requestHeaders.build();
    int i = 0;
    int j = ((Headers)localObject2).size();
    while (i < j)
    {
      ((Request.Builder)localObject1).addHeader(((Headers)localObject2).name(i), ((Headers)localObject2).value(i));
      i += 1;
    }
    boolean bool2 = false;
    boolean bool1 = false;
    if (HttpMethod.permitsRequestBody(paramString))
    {
      if (this.fixedContentLength != -1L) {
        ((Request.Builder)localObject1).header("Content-Length", Long.toString(this.fixedContentLength));
      } else if (this.chunkLength > 0) {
        ((Request.Builder)localObject1).header("Transfer-Encoding", "chunked");
      } else {
        bool1 = true;
      }
      bool2 = bool1;
      if (((Headers)localObject2).get("Content-Type") == null)
      {
        ((Request.Builder)localObject1).header("Content-Type", "application/x-www-form-urlencoded");
        bool2 = bool1;
      }
    }
    if (((Headers)localObject2).get("User-Agent") == null) {
      ((Request.Builder)localObject1).header("User-Agent", defaultUserAgent());
    }
    localObject2 = ((Request.Builder)localObject1).build();
    localObject1 = this.client;
    paramString = (String)localObject1;
    if (Internal.instance.internalCache((OkHttpClient)localObject1) != null)
    {
      paramString = (String)localObject1;
      if (!getUseCaches()) {
        paramString = this.client.clone().setCache(null);
      }
    }
    return new HttpEngine(paramString, (Request)localObject2, bool2, true, false, paramConnection, null, paramRetryableSink, paramResponse);
  }
  
  private static String responseSourceHeader(Response paramResponse)
  {
    if (paramResponse.networkResponse() == null)
    {
      if (paramResponse.cacheResponse() == null) {
        return "NONE";
      }
      return "CACHE " + paramResponse.code();
    }
    if (paramResponse.cacheResponse() == null) {
      return "NETWORK " + paramResponse.code();
    }
    return "CONDITIONAL_CACHE " + paramResponse.networkResponse().code();
  }
  
  private void setProtocols(String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramBoolean) {
      localArrayList.addAll(this.client.getProtocols());
    }
    paramString = paramString.split(",", -1);
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramString[i];
      try
      {
        localArrayList.add(Protocol.get(str));
      }
      catch (IOException paramString)
      {
        throw new IllegalStateException(paramString);
      }
      i += 1;
    }
    this.client.setProtocols(localArrayList);
  }
  
  public final void addRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected) {
      throw new IllegalStateException("Cannot add request property after connection is made");
    }
    if (paramString1 == null) {
      throw new NullPointerException("field == null");
    }
    if (paramString2 == null)
    {
      Platform.get().logW("Ignoring header " + paramString1 + " because its value was null.");
      return;
    }
    if (("X-Android-Transports".equals(paramString1)) || ("X-Android-Protocols".equals(paramString1)))
    {
      setProtocols(paramString2, true);
      return;
    }
    this.requestHeaders.add(paramString1, paramString2);
  }
  
  public final void connect()
  {
    initHttpEngine();
    while (!execute(false)) {}
  }
  
  public final void disconnect()
  {
    if (this.httpEngine == null) {
      return;
    }
    this.httpEngine.disconnect();
  }
  
  public int getConnectTimeout()
  {
    return this.client.getConnectTimeout();
  }
  
  public final InputStream getErrorStream()
  {
    try
    {
      Object localObject = getResponse();
      if ((HttpEngine.hasBody(((HttpEngine)localObject).getResponse())) && (((HttpEngine)localObject).getResponse().code() >= 400))
      {
        localObject = ((HttpEngine)localObject).getResponse().body().byteStream();
        return localObject;
      }
      return null;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public final String getHeaderField(int paramInt)
  {
    try
    {
      String str = getHeaders().value(paramInt);
      return str;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public final String getHeaderField(String paramString)
  {
    if (paramString == null) {}
    try
    {
      return StatusLine.get(getResponse().getResponse()).toString();
    }
    catch (IOException paramString) {}
    paramString = getHeaders().get(paramString);
    return paramString;
    return null;
  }
  
  public final String getHeaderFieldKey(int paramInt)
  {
    try
    {
      String str = getHeaders().name(paramInt);
      return str;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public final Map<String, List<String>> getHeaderFields()
  {
    try
    {
      Map localMap = OkHeaders.toMultimap(getHeaders(), StatusLine.get(getResponse().getResponse()).toString());
      return localMap;
    }
    catch (IOException localIOException) {}
    return Collections.emptyMap();
  }
  
  public final InputStream getInputStream()
  {
    if (!this.doInput) {
      throw new ProtocolException("This protocol does not support input");
    }
    HttpEngine localHttpEngine = getResponse();
    if (getResponseCode() >= 400) {
      throw new FileNotFoundException(this.url.toString());
    }
    return localHttpEngine.getResponse().body().byteStream();
  }
  
  public final OutputStream getOutputStream()
  {
    connect();
    uh localuh = this.httpEngine.getBufferedRequestBody();
    if (localuh == null) {
      throw new ProtocolException("method does not support a request body: " + this.method);
    }
    if (this.httpEngine.hasResponse()) {
      throw new ProtocolException("cannot write request body after response has been read");
    }
    return localuh.dT();
  }
  
  public final Permission getPermission()
  {
    String str = getURL().getHost();
    int i = Util.getEffectivePort(getURL());
    if (usingProxy())
    {
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)this.client.getProxy().address();
      str = localInetSocketAddress.getHostName();
      i = localInetSocketAddress.getPort();
    }
    return new SocketPermission(str + ":" + i, "connect, resolve");
  }
  
  public int getReadTimeout()
  {
    return this.client.getReadTimeout();
  }
  
  public final Map<String, List<String>> getRequestProperties()
  {
    if (this.connected) {
      throw new IllegalStateException("Cannot access request header fields after connection is set");
    }
    return OkHeaders.toMultimap(this.requestHeaders.build(), null);
  }
  
  public final String getRequestProperty(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return this.requestHeaders.get(paramString);
  }
  
  public final int getResponseCode()
  {
    return getResponse().getResponse().code();
  }
  
  public String getResponseMessage()
  {
    return getResponse().getResponse().message();
  }
  
  public void setConnectTimeout(int paramInt)
  {
    this.client.setConnectTimeout(paramInt, TimeUnit.MILLISECONDS);
  }
  
  public void setFixedLengthStreamingMode(int paramInt)
  {
    setFixedLengthStreamingMode(paramInt);
  }
  
  public void setFixedLengthStreamingMode(long paramLong)
  {
    if (this.connected) {
      throw new IllegalStateException("Already connected");
    }
    if (this.chunkLength > 0) {
      throw new IllegalStateException("Already in chunked mode");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("contentLength < 0");
    }
    this.fixedContentLength = paramLong;
    this.fixedContentLength = ((int)Math.min(paramLong, 2147483647L));
  }
  
  public void setIfModifiedSince(long paramLong)
  {
    super.setIfModifiedSince(paramLong);
    if (this.ifModifiedSince != 0L)
    {
      this.requestHeaders.set("If-Modified-Since", HttpDate.format(new Date(this.ifModifiedSince)));
      return;
    }
    this.requestHeaders.removeAll("If-Modified-Since");
  }
  
  public void setInstanceFollowRedirects(boolean paramBoolean)
  {
    this.client.setFollowRedirects(paramBoolean);
  }
  
  public void setReadTimeout(int paramInt)
  {
    this.client.setReadTimeout(paramInt, TimeUnit.MILLISECONDS);
  }
  
  public void setRequestMethod(String paramString)
  {
    if (!METHODS.contains(paramString)) {
      throw new ProtocolException("Expected one of " + METHODS + " but was " + paramString);
    }
    this.method = paramString;
  }
  
  public final void setRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected) {
      throw new IllegalStateException("Cannot set request property after connection is made");
    }
    if (paramString1 == null) {
      throw new NullPointerException("field == null");
    }
    if (paramString2 == null)
    {
      Platform.get().logW("Ignoring header " + paramString1 + " because its value was null.");
      return;
    }
    if (("X-Android-Transports".equals(paramString1)) || ("X-Android-Protocols".equals(paramString1)))
    {
      setProtocols(paramString2, false);
      return;
    }
    this.requestHeaders.set(paramString1, paramString2);
  }
  
  public final boolean usingProxy()
  {
    Proxy localProxy;
    if (this.route != null) {
      localProxy = this.route.getProxy();
    } else {
      localProxy = this.client.getProxy();
    }
    return (localProxy != null) && (localProxy.type() != Proxy.Type.DIRECT);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.huc.HttpURLConnectionImpl
 * JD-Core Version:    0.7.0.1
 */