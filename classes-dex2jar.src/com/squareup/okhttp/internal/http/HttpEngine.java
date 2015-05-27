package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.Interceptor.Chain;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.Version;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import o.ue;
import o.uh;
import o.un;
import o.up;
import o.uz;

public final class HttpEngine
{
  private static final ResponseBody EMPTY_BODY = new HttpEngine.1();
  public static final int MAX_FOLLOW_UPS = 20;
  private Address address;
  public final boolean bufferRequestBody;
  private uh bufferedRequestBody;
  private Response cacheResponse;
  private CacheStrategy cacheStrategy;
  private final boolean callerWritesRequestBody;
  final OkHttpClient client;
  private Connection connection;
  private final boolean forWebSocket;
  private Request networkRequest;
  private final Response priorResponse;
  private uz requestBodyOut;
  private Route route;
  private RouteSelector routeSelector;
  long sentRequestMillis = -1L;
  private CacheRequest storeRequest;
  private boolean transparentGzip;
  private Transport transport;
  private final Request userRequest;
  private Response userResponse;
  
  public HttpEngine(OkHttpClient paramOkHttpClient, Request paramRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, Connection paramConnection, RouteSelector paramRouteSelector, RetryableSink paramRetryableSink, Response paramResponse)
  {
    this.client = paramOkHttpClient;
    this.userRequest = paramRequest;
    this.bufferRequestBody = paramBoolean1;
    this.callerWritesRequestBody = paramBoolean2;
    this.forWebSocket = paramBoolean3;
    this.connection = paramConnection;
    this.routeSelector = paramRouteSelector;
    this.requestBodyOut = paramRetryableSink;
    this.priorResponse = paramResponse;
    if (paramConnection != null)
    {
      Internal.instance.setOwner(paramConnection, this);
      this.route = paramConnection.getRoute();
      return;
    }
    this.route = null;
  }
  
  private Response cacheWritingResponse(CacheRequest paramCacheRequest, Response paramResponse)
  {
    if (paramCacheRequest == null) {
      return paramResponse;
    }
    uz localuz = paramCacheRequest.body();
    if (localuz == null) {
      return paramResponse;
    }
    paramCacheRequest = new HttpEngine.2(this, paramResponse.body().source(), paramCacheRequest, up.ˊ(localuz));
    return paramResponse.newBuilder().body(new RealResponseBody(paramResponse.headers(), up.ˋ(paramCacheRequest))).build();
  }
  
  private static Headers combine(Headers paramHeaders1, Headers paramHeaders2)
  {
    Headers.Builder localBuilder = new Headers.Builder();
    int i = 0;
    int j = paramHeaders1.size();
    while (i < j)
    {
      String str1 = paramHeaders1.name(i);
      String str2 = paramHeaders1.value(i);
      if (((!"Warning".equalsIgnoreCase(str1)) || (!str2.startsWith("1"))) && ((!OkHeaders.isEndToEnd(str1)) || (paramHeaders2.get(str1) == null))) {
        localBuilder.add(str1, str2);
      }
      i += 1;
    }
    i = 0;
    j = paramHeaders2.size();
    while (i < j)
    {
      paramHeaders1 = paramHeaders2.name(i);
      if ((!"Content-Length".equalsIgnoreCase(paramHeaders1)) && (OkHeaders.isEndToEnd(paramHeaders1))) {
        localBuilder.add(paramHeaders1, paramHeaders2.value(i));
      }
      i += 1;
    }
    return localBuilder.build();
  }
  
  private void connect()
  {
    if (this.connection != null) {
      throw new IllegalStateException();
    }
    if (this.routeSelector == null)
    {
      this.address = createAddress(this.client, this.networkRequest);
      this.routeSelector = RouteSelector.get(this.address, this.networkRequest, this.client);
    }
    this.connection = nextConnection();
    this.route = this.connection.getRoute();
  }
  
  private void connectFailed(RouteSelector paramRouteSelector, IOException paramIOException)
  {
    if (Internal.instance.recycleCount(this.connection) > 0) {
      return;
    }
    paramRouteSelector.connectFailed(this.connection.getRoute(), paramIOException);
  }
  
  private static Address createAddress(OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    String str = paramRequest.url().getHost();
    if ((str == null) || (str.length() == 0)) {
      throw new UnknownHostException(paramRequest.url().toString());
    }
    SSLSocketFactory localSSLSocketFactory = null;
    HostnameVerifier localHostnameVerifier = null;
    CertificatePinner localCertificatePinner = null;
    if (paramRequest.isHttps())
    {
      localSSLSocketFactory = paramOkHttpClient.getSslSocketFactory();
      localHostnameVerifier = paramOkHttpClient.getHostnameVerifier();
      localCertificatePinner = paramOkHttpClient.getCertificatePinner();
    }
    return new Address(str, Util.getEffectivePort(paramRequest.url()), paramOkHttpClient.getSocketFactory(), localSSLSocketFactory, localHostnameVerifier, localCertificatePinner, paramOkHttpClient.getAuthenticator(), paramOkHttpClient.getProxy(), paramOkHttpClient.getProtocols(), paramOkHttpClient.getConnectionSpecs(), paramOkHttpClient.getProxySelector());
  }
  
  private Connection createNextConnection()
  {
    ConnectionPool localConnectionPool = this.client.getConnectionPool();
    for (;;)
    {
      Connection localConnection = localConnectionPool.get(this.address);
      if (localConnection == null) {
        break;
      }
      if ((this.networkRequest.method().equals("GET")) || (Internal.instance.isReadable(localConnection))) {
        return localConnection;
      }
      localConnection.getSocket().close();
    }
    return new Connection(localConnectionPool, this.routeSelector.next());
  }
  
  public static boolean hasBody(Response paramResponse)
  {
    if (paramResponse.request().method().equals("HEAD")) {
      return false;
    }
    int i = paramResponse.code();
    if (((i < 100) || (i >= 200)) && (i != 204) && (i != 304)) {
      return true;
    }
    return (OkHeaders.contentLength(paramResponse) != -1L) || ("chunked".equalsIgnoreCase(paramResponse.header("Transfer-Encoding")));
  }
  
  public static String hostHeader(URL paramURL)
  {
    if (Util.getEffectivePort(paramURL) != Util.getDefaultPort(paramURL.getProtocol())) {
      return paramURL.getHost() + ":" + paramURL.getPort();
    }
    return paramURL.getHost();
  }
  
  private boolean isRecoverable(IOException paramIOException)
  {
    if (!this.client.getRetryOnConnectionFailure()) {
      return false;
    }
    if (((paramIOException instanceof SSLPeerUnverifiedException)) || (((paramIOException instanceof SSLHandshakeException)) && ((paramIOException.getCause() instanceof CertificateException)))) {
      return false;
    }
    if ((paramIOException instanceof ProtocolException)) {
      return false;
    }
    return !(paramIOException instanceof InterruptedIOException);
  }
  
  private void maybeCache()
  {
    InternalCache localInternalCache = Internal.instance.internalCache(this.client);
    if (localInternalCache == null) {
      return;
    }
    if (!CacheStrategy.isCacheable(this.userResponse, this.networkRequest))
    {
      if (HttpMethod.invalidatesCache(this.networkRequest.method())) {
        try
        {
          localInternalCache.remove(this.networkRequest);
          return;
        }
        catch (IOException localIOException) {}
      }
      return;
    }
    this.storeRequest = localIOException.put(stripBody(this.userResponse));
  }
  
  private Request networkRequest(Request paramRequest)
  {
    Request.Builder localBuilder = paramRequest.newBuilder();
    if (paramRequest.header("Host") == null) {
      localBuilder.header("Host", hostHeader(paramRequest.url()));
    }
    if (((this.connection == null) || (this.connection.getProtocol() != Protocol.HTTP_1_0)) && (paramRequest.header("Connection") == null)) {
      localBuilder.header("Connection", "Keep-Alive");
    }
    if (paramRequest.header("Accept-Encoding") == null)
    {
      this.transparentGzip = true;
      localBuilder.header("Accept-Encoding", "gzip");
    }
    CookieHandler localCookieHandler = this.client.getCookieHandler();
    if (localCookieHandler != null)
    {
      Map localMap = OkHeaders.toMultimap(localBuilder.build().headers(), null);
      OkHeaders.addCookies(localBuilder, localCookieHandler.get(paramRequest.uri(), localMap));
    }
    if (paramRequest.header("User-Agent") == null) {
      localBuilder.header("User-Agent", Version.userAgent());
    }
    return localBuilder.build();
  }
  
  private Connection nextConnection()
  {
    Connection localConnection = createNextConnection();
    Internal.instance.connectAndSetOwner(this.client, localConnection, this, this.networkRequest);
    return localConnection;
  }
  
  private Response readNetworkResponse()
  {
    this.transport.finishRequest();
    Response localResponse2 = this.transport.readResponseHeaders().request(this.networkRequest).handshake(this.connection.getHandshake()).header(OkHeaders.SENT_MILLIS, Long.toString(this.sentRequestMillis)).header(OkHeaders.RECEIVED_MILLIS, Long.toString(System.currentTimeMillis())).build();
    Response localResponse1 = localResponse2;
    if (!this.forWebSocket) {
      localResponse1 = localResponse2.newBuilder().body(this.transport.openResponseBody(localResponse2)).build();
    }
    Internal.instance.setProtocol(this.connection, localResponse1.protocol());
    return localResponse1;
  }
  
  private static Response stripBody(Response paramResponse)
  {
    if ((paramResponse != null) && (paramResponse.body() != null)) {
      return paramResponse.newBuilder().body(null).build();
    }
    return paramResponse;
  }
  
  private Response unzip(Response paramResponse)
  {
    if ((!this.transparentGzip) || (!"gzip".equalsIgnoreCase(this.userResponse.header("Content-Encoding")))) {
      return paramResponse;
    }
    if (paramResponse.body() == null) {
      return paramResponse;
    }
    un localun = new un(paramResponse.body().source());
    Headers localHeaders = paramResponse.headers().newBuilder().removeAll("Content-Encoding").removeAll("Content-Length").build();
    return paramResponse.newBuilder().headers(localHeaders).body(new RealResponseBody(localHeaders, up.ˋ(localun))).build();
  }
  
  private static boolean validate(Response paramResponse1, Response paramResponse2)
  {
    if (paramResponse2.code() == 304) {
      return true;
    }
    paramResponse1 = paramResponse1.headers().getDate("Last-Modified");
    if (paramResponse1 != null)
    {
      paramResponse2 = paramResponse2.headers().getDate("Last-Modified");
      if ((paramResponse2 != null) && (paramResponse2.getTime() < paramResponse1.getTime())) {
        return true;
      }
    }
    return false;
  }
  
  public Connection close()
  {
    if (this.bufferedRequestBody != null) {
      Util.closeQuietly(this.bufferedRequestBody);
    } else if (this.requestBodyOut != null) {
      Util.closeQuietly(this.requestBodyOut);
    }
    if (this.userResponse == null)
    {
      if (this.connection != null) {
        Util.closeQuietly(this.connection.getSocket());
      }
      this.connection = null;
      return null;
    }
    Util.closeQuietly(this.userResponse.body());
    if ((this.transport != null) && (this.connection != null) && (!this.transport.canReuseConnection()))
    {
      Util.closeQuietly(this.connection.getSocket());
      this.connection = null;
      return null;
    }
    if ((this.connection != null) && (!Internal.instance.clearOwner(this.connection))) {
      this.connection = null;
    }
    Connection localConnection = this.connection;
    this.connection = null;
    return localConnection;
  }
  
  public void disconnect()
  {
    if (this.transport != null) {
      try
      {
        this.transport.disconnect(this);
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public Request followUpRequest()
  {
    if (this.userResponse == null) {
      throw new IllegalStateException();
    }
    if (getRoute() != null) {
      localObject = getRoute().getProxy();
    } else {
      localObject = this.client.getProxy();
    }
    switch (this.userResponse.code())
    {
    default: 
      break;
    case 407: 
      if (((Proxy)localObject).type() != Proxy.Type.HTTP) {
        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
      }
    case 401: 
      return OkHeaders.processAuthHeader(this.client.getAuthenticator(), this.userResponse, (Proxy)localObject);
    case 307: 
    case 308: 
      if ((!this.userRequest.method().equals("GET")) && (!this.userRequest.method().equals("HEAD"))) {
        return null;
      }
      break;
    }
    if (!this.client.getFollowRedirects()) {
      return null;
    }
    Object localObject = this.userResponse.header("Location");
    if (localObject == null) {
      return null;
    }
    localObject = new URL(this.userRequest.url(), (String)localObject);
    if ((!((URL)localObject).getProtocol().equals("https")) && (!((URL)localObject).getProtocol().equals("http"))) {
      return null;
    }
    if ((!((URL)localObject).getProtocol().equals(this.userRequest.url().getProtocol())) && (!this.client.getFollowSslRedirects())) {
      return null;
    }
    Request.Builder localBuilder = this.userRequest.newBuilder();
    if (HttpMethod.permitsRequestBody(this.userRequest.method()))
    {
      localBuilder.method("GET", null);
      localBuilder.removeHeader("Transfer-Encoding");
      localBuilder.removeHeader("Content-Length");
      localBuilder.removeHeader("Content-Type");
    }
    if (!sameConnection((URL)localObject)) {
      localBuilder.removeHeader("Authorization");
    }
    return localBuilder.url((URL)localObject).build();
    return null;
  }
  
  public uh getBufferedRequestBody()
  {
    Object localObject = this.bufferedRequestBody;
    if (localObject != null) {
      return localObject;
    }
    localObject = getRequestBody();
    if (localObject != null)
    {
      localObject = up.ˊ((uz)localObject);
      this.bufferedRequestBody = ((uh)localObject);
      return localObject;
    }
    return null;
  }
  
  public Connection getConnection()
  {
    return this.connection;
  }
  
  public Request getRequest()
  {
    return this.userRequest;
  }
  
  public uz getRequestBody()
  {
    if (this.cacheStrategy == null) {
      throw new IllegalStateException();
    }
    return this.requestBodyOut;
  }
  
  public Response getResponse()
  {
    if (this.userResponse == null) {
      throw new IllegalStateException();
    }
    return this.userResponse;
  }
  
  public Route getRoute()
  {
    return this.route;
  }
  
  public boolean hasResponse()
  {
    return this.userResponse != null;
  }
  
  boolean permitsRequestBody()
  {
    return HttpMethod.permitsRequestBody(this.userRequest.method());
  }
  
  public void readResponse()
  {
    if (this.userResponse != null) {
      return;
    }
    if ((this.networkRequest == null) && (this.cacheResponse == null)) {
      throw new IllegalStateException("call sendRequest() first!");
    }
    if (this.networkRequest == null) {
      return;
    }
    Object localObject;
    if (this.forWebSocket)
    {
      this.transport.writeRequestHeaders(this.networkRequest);
      localObject = readNetworkResponse();
    }
    else if (!this.callerWritesRequestBody)
    {
      localObject = new NetworkInterceptorChain(0, this.networkRequest).proceed(this.networkRequest);
    }
    else
    {
      if ((this.bufferedRequestBody != null) && (this.bufferedRequestBody.dS().size() > 0L)) {
        this.bufferedRequestBody.dV();
      }
      if (this.sentRequestMillis == -1L)
      {
        if ((OkHeaders.contentLength(this.networkRequest) == -1L) && ((this.requestBodyOut instanceof RetryableSink)))
        {
          long l = ((RetryableSink)this.requestBodyOut).contentLength();
          this.networkRequest = this.networkRequest.newBuilder().header("Content-Length", Long.toString(l)).build();
        }
        this.transport.writeRequestHeaders(this.networkRequest);
      }
      if (this.requestBodyOut != null)
      {
        if (this.bufferedRequestBody != null) {
          this.bufferedRequestBody.close();
        } else {
          this.requestBodyOut.close();
        }
        if ((this.requestBodyOut instanceof RetryableSink)) {
          this.transport.writeRequestBody((RetryableSink)this.requestBodyOut);
        }
      }
      localObject = readNetworkResponse();
    }
    receiveHeaders(((Response)localObject).headers());
    if (this.cacheResponse != null)
    {
      if (validate(this.cacheResponse, (Response)localObject))
      {
        this.userResponse = this.cacheResponse.newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).headers(combine(this.cacheResponse.headers(), ((Response)localObject).headers())).cacheResponse(stripBody(this.cacheResponse)).networkResponse(stripBody((Response)localObject)).build();
        ((Response)localObject).body().close();
        releaseConnection();
        localObject = Internal.instance.internalCache(this.client);
        ((InternalCache)localObject).trackConditionalCacheHit();
        ((InternalCache)localObject).update(this.cacheResponse, stripBody(this.userResponse));
        this.userResponse = unzip(this.userResponse);
        return;
      }
      Util.closeQuietly(this.cacheResponse.body());
    }
    this.userResponse = ((Response)localObject).newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).cacheResponse(stripBody(this.cacheResponse)).networkResponse(stripBody((Response)localObject)).build();
    if (hasBody(this.userResponse))
    {
      maybeCache();
      this.userResponse = unzip(cacheWritingResponse(this.storeRequest, this.userResponse));
    }
  }
  
  public void receiveHeaders(Headers paramHeaders)
  {
    CookieHandler localCookieHandler = this.client.getCookieHandler();
    if (localCookieHandler != null) {
      localCookieHandler.put(this.userRequest.uri(), OkHeaders.toMultimap(paramHeaders, null));
    }
  }
  
  public HttpEngine recover(IOException paramIOException)
  {
    return recover(paramIOException, this.requestBodyOut);
  }
  
  public HttpEngine recover(IOException paramIOException, uz paramuz)
  {
    if ((this.routeSelector != null) && (this.connection != null)) {
      connectFailed(this.routeSelector, paramIOException);
    }
    int i;
    if ((paramuz == null) || ((paramuz instanceof RetryableSink))) {
      i = 1;
    } else {
      i = 0;
    }
    if (((this.routeSelector == null) && (this.connection == null)) || ((this.routeSelector != null) && (!this.routeSelector.hasNext())) || (!isRecoverable(paramIOException)) || (i == 0)) {
      return null;
    }
    paramIOException = close();
    return new HttpEngine(this.client, this.userRequest, this.bufferRequestBody, this.callerWritesRequestBody, this.forWebSocket, paramIOException, this.routeSelector, (RetryableSink)paramuz, this.priorResponse);
  }
  
  public void releaseConnection()
  {
    if ((this.transport != null) && (this.connection != null)) {
      this.transport.releaseConnectionOnIdle();
    }
    this.connection = null;
  }
  
  public boolean sameConnection(URL paramURL)
  {
    URL localURL = this.userRequest.url();
    return (localURL.getHost().equals(paramURL.getHost())) && (Util.getEffectivePort(localURL) == Util.getEffectivePort(paramURL)) && (localURL.getProtocol().equals(paramURL.getProtocol()));
  }
  
  public void sendRequest()
  {
    if (this.cacheStrategy != null) {
      return;
    }
    if (this.transport != null) {
      throw new IllegalStateException();
    }
    Request localRequest = networkRequest(this.userRequest);
    InternalCache localInternalCache = Internal.instance.internalCache(this.client);
    Response localResponse;
    if (localInternalCache != null) {
      localResponse = localInternalCache.get(localRequest);
    } else {
      localResponse = null;
    }
    this.cacheStrategy = new CacheStrategy.Factory(System.currentTimeMillis(), localRequest, localResponse).get();
    this.networkRequest = this.cacheStrategy.networkRequest;
    this.cacheResponse = this.cacheStrategy.cacheResponse;
    if (localInternalCache != null) {
      localInternalCache.trackResponse(this.cacheStrategy);
    }
    if ((localResponse != null) && (this.cacheResponse == null)) {
      Util.closeQuietly(localResponse.body());
    }
    if (this.networkRequest != null)
    {
      if (this.connection == null) {
        connect();
      }
      this.transport = Internal.instance.newTransport(this.connection, this);
      if ((this.callerWritesRequestBody) && (permitsRequestBody()) && (this.requestBodyOut == null))
      {
        long l = OkHeaders.contentLength(localRequest);
        if (this.bufferRequestBody)
        {
          if (l > 2147483647L) {
            throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
          }
          if (l != -1L)
          {
            this.transport.writeRequestHeaders(this.networkRequest);
            this.requestBodyOut = new RetryableSink((int)l);
          }
          else
          {
            this.requestBodyOut = new RetryableSink();
          }
        }
        else
        {
          this.transport.writeRequestHeaders(this.networkRequest);
          this.requestBodyOut = this.transport.createRequestBody(this.networkRequest, l);
        }
      }
    }
    else
    {
      if (this.connection != null)
      {
        Internal.instance.recycle(this.client.getConnectionPool(), this.connection);
        this.connection = null;
      }
      if (this.cacheResponse != null) {
        this.userResponse = this.cacheResponse.newBuilder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).cacheResponse(stripBody(this.cacheResponse)).build();
      } else {
        this.userResponse = new Response.Builder().request(this.userRequest).priorResponse(stripBody(this.priorResponse)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(EMPTY_BODY).build();
      }
      this.userResponse = unzip(this.userResponse);
    }
  }
  
  public void writingRequestHeaders()
  {
    if (this.sentRequestMillis != -1L) {
      throw new IllegalStateException();
    }
    this.sentRequestMillis = System.currentTimeMillis();
  }
  
  class NetworkInterceptorChain
    implements Interceptor.Chain
  {
    private int calls;
    private final int index;
    private final Request request;
    
    NetworkInterceptorChain(int paramInt, Request paramRequest)
    {
      this.index = paramInt;
      this.request = paramRequest;
    }
    
    public Connection connection()
    {
      return HttpEngine.this.connection;
    }
    
    public Response proceed(Request paramRequest)
    {
      this.calls += 1;
      Object localObject1;
      Object localObject2;
      if (this.index > 0)
      {
        localObject1 = (Interceptor)HttpEngine.this.client.networkInterceptors().get(this.index - 1);
        localObject2 = connection().getRoute().getAddress();
        if ((!paramRequest.url().getHost().equals(((Address)localObject2).getUriHost())) || (Util.getEffectivePort(paramRequest.url()) != ((Address)localObject2).getUriPort())) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must retain the same host and port");
        }
        if (this.calls > 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
      }
      if (this.index < HttpEngine.this.client.networkInterceptors().size())
      {
        paramRequest = new NetworkInterceptorChain(HttpEngine.this, this.index + 1, paramRequest);
        localObject1 = (Interceptor)HttpEngine.this.client.networkInterceptors().get(this.index);
        localObject2 = ((Interceptor)localObject1).intercept(paramRequest);
        if (paramRequest.calls != 1) {
          throw new IllegalStateException("network interceptor " + localObject1 + " must call proceed() exactly once");
        }
        return localObject2;
      }
      HttpEngine.this.transport.writeRequestHeaders(paramRequest);
      if ((HttpEngine.this.permitsRequestBody()) && (paramRequest.body() != null))
      {
        localObject1 = up.ˊ(HttpEngine.this.transport.createRequestBody(paramRequest, paramRequest.body().contentLength()));
        paramRequest.body().writeTo((uh)localObject1);
        ((uh)localObject1).close();
      }
      return HttpEngine.this.readNetworkResponse();
    }
    
    public Request request()
    {
      return this.request;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpEngine
 * JD-Core Version:    0.7.0.1
 */