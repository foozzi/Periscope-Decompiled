package com.squareup.okhttp.ws;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.ws.RealWebSocket;
import java.net.ProtocolException;
import java.net.Socket;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.uh;
import o.ui;
import o.uj;
import o.up;

public class WebSocketCall
{
  private final Call call;
  private final String key;
  private final Random random;
  private final Request request;
  
  protected WebSocketCall(OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    this(paramOkHttpClient, paramRequest, new SecureRandom());
  }
  
  WebSocketCall(OkHttpClient paramOkHttpClient, Request paramRequest, Random paramRandom)
  {
    if (!"GET".equals(paramRequest.method())) {
      throw new IllegalArgumentException("Request must be GET: " + paramRequest.method());
    }
    String str = paramRequest.urlString();
    if (str.startsWith("ws://")) {
      str = "http://" + str.substring(5);
    } else if (str.startsWith("wss://")) {
      str = "https://" + str.substring(6);
    } else if ((str.startsWith("http://")) || (!str.startsWith("https://"))) {
      throw new IllegalArgumentException("Request url must use 'ws', 'wss', 'http', or 'https' scheme: " + str);
    }
    this.random = paramRandom;
    byte[] arrayOfByte = new byte[16];
    paramRandom.nextBytes(arrayOfByte);
    this.key = uj.ᐨ(arrayOfByte).ej();
    paramOkHttpClient = paramOkHttpClient.clone();
    paramOkHttpClient.setProtocols(Collections.singletonList(Protocol.HTTP_1_1));
    paramRequest = paramRequest.newBuilder().url(str).header("Upgrade", "websocket").header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").build();
    this.request = paramRequest;
    this.call = paramOkHttpClient.newCall(paramRequest);
  }
  
  public static WebSocketCall create(OkHttpClient paramOkHttpClient, Request paramRequest)
  {
    return new WebSocketCall(paramOkHttpClient, paramRequest);
  }
  
  private void createWebSocket(Response paramResponse, WebSocketListener paramWebSocketListener)
  {
    if (paramResponse.code() != 101)
    {
      Internal.instance.callEngineReleaseConnection(this.call);
      throw new ProtocolException("Expected HTTP 101 response but was '" + paramResponse.code() + " " + paramResponse.message() + "'");
    }
    Object localObject1 = paramResponse.header("Connection");
    if (!"Upgrade".equalsIgnoreCase((String)localObject1)) {
      throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + (String)localObject1 + "'");
    }
    localObject1 = paramResponse.header("Upgrade");
    if (!"websocket".equalsIgnoreCase((String)localObject1)) {
      throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + (String)localObject1 + "'");
    }
    localObject1 = paramResponse.header("Sec-WebSocket-Accept");
    Object localObject2 = Util.shaBase64(this.key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
    if (!((String)localObject2).equals(localObject1)) {
      throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + (String)localObject2 + "' but was '" + (String)localObject1 + "'");
    }
    localObject1 = Internal.instance.callEngineGetConnection(this.call);
    if (!Internal.instance.clearOwner((Connection)localObject1)) {
      throw new IllegalStateException("Unable to take ownership of connection.");
    }
    localObject2 = ((Connection)localObject1).getSocket();
    localObject2 = ConnectionWebSocket.create(paramResponse, (Connection)localObject1, up.ˋ(up.ˋ((Socket)localObject2)), up.ˊ(up.ˊ((Socket)localObject2)), this.random, paramWebSocketListener);
    new Thread(new WebSocketCall.2(this, "OkHttp WebSocket reader %s", new Object[] { this.request.urlString() }, (RealWebSocket)localObject2)).start();
    Internal.instance.connectionSetOwner((Connection)localObject1, localObject2);
    paramWebSocketListener.onOpen((WebSocket)localObject2, this.request, paramResponse);
  }
  
  public void cancel()
  {
    this.call.cancel();
  }
  
  public void enqueue(WebSocketListener paramWebSocketListener)
  {
    paramWebSocketListener = new WebSocketCall.1(this, paramWebSocketListener);
    Internal.instance.callEnqueue(this.call, paramWebSocketListener, true);
  }
  
  static class ConnectionWebSocket
    extends RealWebSocket
  {
    private final Connection connection;
    
    private ConnectionWebSocket(Connection paramConnection, ui paramui, uh paramuh, Random paramRandom, Executor paramExecutor, WebSocketListener paramWebSocketListener, String paramString)
    {
      super(paramui, paramuh, paramRandom, paramExecutor, paramWebSocketListener, paramString);
      this.connection = paramConnection;
    }
    
    static RealWebSocket create(Response paramResponse, Connection paramConnection, ui paramui, uh paramuh, Random paramRandom, WebSocketListener paramWebSocketListener)
    {
      paramResponse = paramResponse.request().urlString();
      ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new LinkedBlockingDeque(), Util.threadFactory(String.format("OkHttp %s WebSocket", new Object[] { paramResponse }), true));
      localThreadPoolExecutor.allowCoreThreadTimeOut(true);
      return new ConnectionWebSocket(paramConnection, paramui, paramuh, paramRandom, localThreadPoolExecutor, paramWebSocketListener, paramResponse);
    }
    
    protected void closeConnection()
    {
      Internal.instance.closeIfOwnedBy(this.connection, this);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ws.WebSocketCall
 * JD-Core Version:    0.7.0.1
 */