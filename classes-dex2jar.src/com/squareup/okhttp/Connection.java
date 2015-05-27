package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.RouteDatabase;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpConnection;
import com.squareup.okhttp.internal.http.HttpEngine;
import com.squareup.okhttp.internal.http.HttpTransport;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.SpdyTransport;
import com.squareup.okhttp.internal.http.Transport;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyConnection.Builder;
import com.squareup.okhttp.internal.tls.OkHostnameVerifier;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.URL;
import java.security.Principal;
import java.security.cert.X509Certificate;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import o.va;

public final class Connection
{
  private boolean connected = false;
  private Handshake handshake;
  private HttpConnection httpConnection;
  private long idleStartTimeNs;
  private Object owner;
  private final ConnectionPool pool;
  private Protocol protocol = Protocol.HTTP_1_1;
  private int recycleCount;
  private final Route route;
  private Socket socket;
  private SpdyConnection spdyConnection;
  
  public Connection(ConnectionPool paramConnectionPool, Route paramRoute)
  {
    this.pool = paramConnectionPool;
    this.route = paramRoute;
  }
  
  private void makeTunnel(Request paramRequest, int paramInt1, int paramInt2)
  {
    HttpConnection localHttpConnection = new HttpConnection(this.pool, this, this.socket);
    localHttpConnection.setTimeouts(paramInt1, paramInt2);
    Object localObject = paramRequest.url();
    localObject = "CONNECT " + ((URL)localObject).getHost() + ":" + ((URL)localObject).getPort() + " HTTP/1.1";
    do
    {
      localHttpConnection.writeRequest(paramRequest.headers(), (String)localObject);
      localHttpConnection.flush();
      paramRequest = localHttpConnection.readResponse().request(paramRequest).build();
      long l2 = OkHeaders.contentLength(paramRequest);
      long l1 = l2;
      if (l2 == -1L) {
        l1 = 0L;
      }
      va localva = localHttpConnection.newFixedLengthSource(l1);
      Util.skipAll(localva, 2147483647, TimeUnit.MILLISECONDS);
      localva.close();
      switch (paramRequest.code())
      {
      default: 
        break;
      case 200: 
        if (localHttpConnection.bufferSize() > 0L) {
          throw new IOException("TLS tunnel buffered too many bytes!");
        }
        return;
      case 407: 
        paramRequest = OkHeaders.processAuthHeader(this.route.address.authenticator, paramRequest, this.route.proxy);
      }
    } while (paramRequest != null);
    throw new IOException("Failed to authenticate with proxy");
    throw new IOException("Unexpected response code for CONNECT: " + paramRequest.code());
  }
  
  private Request tunnelRequest(Request paramRequest)
  {
    if (!this.route.requiresTunnel()) {
      return null;
    }
    String str = paramRequest.url().getHost();
    int i = Util.getEffectivePort(paramRequest.url());
    if (i == Util.getDefaultPort("https")) {
      localObject = str;
    } else {
      localObject = str + ":" + i;
    }
    Object localObject = new Request.Builder().url(new URL("https", str, i, "/")).header("Host", (String)localObject).header("Proxy-Connection", "Keep-Alive");
    str = paramRequest.header("User-Agent");
    if (str != null) {
      ((Request.Builder)localObject).header("User-Agent", str);
    }
    paramRequest = paramRequest.header("Proxy-Authorization");
    if (paramRequest != null) {
      ((Request.Builder)localObject).header("Proxy-Authorization", paramRequest);
    }
    return ((Request.Builder)localObject).build();
  }
  
  private void upgradeToTls(Request paramRequest, int paramInt1, int paramInt2)
  {
    Platform localPlatform = Platform.get();
    if (paramRequest != null) {
      makeTunnel(paramRequest, paramInt1, paramInt2);
    }
    this.socket = this.route.address.sslSocketFactory.createSocket(this.socket, this.route.address.uriHost, this.route.address.uriPort, true);
    paramRequest = (SSLSocket)this.socket;
    this.route.connectionSpec.apply(paramRequest, this.route);
    try
    {
      paramRequest.startHandshake();
      if (this.route.connectionSpec.supportsTlsExtensions())
      {
        String str = localPlatform.getSelectedProtocol(paramRequest);
        if (str != null) {
          this.protocol = Protocol.get(str);
        }
      }
    }
    finally
    {
      localPlatform.afterHandshake(paramRequest);
    }
    this.handshake = Handshake.get(paramRequest.getSession());
    if (!this.route.address.hostnameVerifier.verify(this.route.address.uriHost, paramRequest.getSession()))
    {
      paramRequest = (X509Certificate)paramRequest.getSession().getPeerCertificates()[0];
      throw new SSLPeerUnverifiedException("Hostname " + this.route.address.uriHost + " not verified:" + "\n    certificate: " + CertificatePinner.pin(paramRequest) + "\n    DN: " + paramRequest.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.allSubjectAltNames(paramRequest));
    }
    this.route.address.certificatePinner.check(this.route.address.uriHost, this.handshake.peerCertificates());
    if ((this.protocol == Protocol.SPDY_3) || (this.protocol == Protocol.HTTP_2))
    {
      paramRequest.setSoTimeout(0);
      this.spdyConnection = new SpdyConnection.Builder(this.route.address.getUriHost(), true, this.socket).protocol(this.protocol).build();
      this.spdyConnection.sendConnectionPreface();
      return;
    }
    this.httpConnection = new HttpConnection(this.pool, this, this.socket);
  }
  
  boolean clearOwner()
  {
    synchronized (this.pool)
    {
      Object localObject1 = this.owner;
      if (localObject1 == null) {
        return false;
      }
      this.owner = null;
      return true;
    }
  }
  
  void closeIfOwnedBy(Object paramObject)
  {
    if (isSpdy()) {
      throw new IllegalStateException();
    }
    synchronized (this.pool)
    {
      Object localObject = this.owner;
      if (localObject != paramObject) {
        return;
      }
      this.owner = null;
    }
    this.socket.close();
  }
  
  void connect(int paramInt1, int paramInt2, int paramInt3, Request paramRequest)
  {
    if (this.connected) {
      throw new IllegalStateException("already connected");
    }
    if ((this.route.proxy.type() == Proxy.Type.DIRECT) || (this.route.proxy.type() == Proxy.Type.HTTP)) {
      this.socket = this.route.address.socketFactory.createSocket();
    } else {
      this.socket = new Socket(this.route.proxy);
    }
    this.socket.setSoTimeout(paramInt2);
    Platform.get().connectSocket(this.socket, this.route.inetSocketAddress, paramInt1);
    if (this.route.address.sslSocketFactory != null) {
      upgradeToTls(paramRequest, paramInt2, paramInt3);
    } else {
      this.httpConnection = new HttpConnection(this.pool, this, this.socket);
    }
    this.connected = true;
  }
  
  void connectAndSetOwner(OkHttpClient paramOkHttpClient, Object paramObject, Request paramRequest)
  {
    setOwner(paramObject);
    if (!isConnected())
    {
      paramObject = tunnelRequest(paramRequest);
      connect(paramOkHttpClient.getConnectTimeout(), paramOkHttpClient.getReadTimeout(), paramOkHttpClient.getWriteTimeout(), paramObject);
      if (isSpdy()) {
        paramOkHttpClient.getConnectionPool().share(this);
      }
      paramOkHttpClient.routeDatabase().connected(getRoute());
    }
    setTimeouts(paramOkHttpClient.getReadTimeout(), paramOkHttpClient.getWriteTimeout());
  }
  
  public Handshake getHandshake()
  {
    return this.handshake;
  }
  
  long getIdleStartTimeNs()
  {
    if (this.spdyConnection == null) {
      return this.idleStartTimeNs;
    }
    return this.spdyConnection.getIdleStartTimeNs();
  }
  
  Object getOwner()
  {
    synchronized (this.pool)
    {
      Object localObject1 = this.owner;
      return localObject1;
    }
  }
  
  public Protocol getProtocol()
  {
    return this.protocol;
  }
  
  public Route getRoute()
  {
    return this.route;
  }
  
  public Socket getSocket()
  {
    return this.socket;
  }
  
  void incrementRecycleCount()
  {
    this.recycleCount += 1;
  }
  
  boolean isAlive()
  {
    return (!this.socket.isClosed()) && (!this.socket.isInputShutdown()) && (!this.socket.isOutputShutdown());
  }
  
  boolean isConnected()
  {
    return this.connected;
  }
  
  boolean isIdle()
  {
    return (this.spdyConnection == null) || (this.spdyConnection.isIdle());
  }
  
  boolean isReadable()
  {
    if (this.httpConnection != null) {
      return this.httpConnection.isReadable();
    }
    return true;
  }
  
  boolean isSpdy()
  {
    return this.spdyConnection != null;
  }
  
  Transport newTransport(HttpEngine paramHttpEngine)
  {
    if (this.spdyConnection != null) {
      return new SpdyTransport(paramHttpEngine, this.spdyConnection);
    }
    return new HttpTransport(paramHttpEngine, this.httpConnection);
  }
  
  int recycleCount()
  {
    return this.recycleCount;
  }
  
  void resetIdleStartTime()
  {
    if (this.spdyConnection != null) {
      throw new IllegalStateException("spdyConnection != null");
    }
    this.idleStartTimeNs = System.nanoTime();
  }
  
  void setOwner(Object paramObject)
  {
    if (isSpdy()) {
      return;
    }
    synchronized (this.pool)
    {
      if (this.owner != null) {
        throw new IllegalStateException("Connection already has an owner!");
      }
      this.owner = paramObject;
      return;
    }
  }
  
  void setProtocol(Protocol paramProtocol)
  {
    if (paramProtocol == null) {
      throw new IllegalArgumentException("protocol == null");
    }
    this.protocol = paramProtocol;
  }
  
  void setTimeouts(int paramInt1, int paramInt2)
  {
    if (!this.connected) {
      throw new IllegalStateException("setTimeouts - not connected");
    }
    if (this.httpConnection != null)
    {
      this.socket.setSoTimeout(paramInt1);
      this.httpConnection.setTimeouts(paramInt1, paramInt2);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Connection{").append(this.route.address.uriHost).append(":").append(this.route.address.uriPort).append(", proxy=").append(this.route.proxy).append(" hostAddress=").append(this.route.inetSocketAddress.getAddress().getHostAddress()).append(" cipherSuite=");
    String str;
    if (this.handshake != null) {
      str = this.handshake.cipherSuite();
    } else {
      str = "none";
    }
    return str + " protocol=" + this.protocol + '}';
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Connection
 * JD-Core Version:    0.7.0.1
 */