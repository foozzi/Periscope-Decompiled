package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public final class Address
{
  final Authenticator authenticator;
  final CertificatePinner certificatePinner;
  final List<ConnectionSpec> connectionSpecs;
  final HostnameVerifier hostnameVerifier;
  final List<Protocol> protocols;
  final Proxy proxy;
  final ProxySelector proxySelector;
  final SocketFactory socketFactory;
  final SSLSocketFactory sslSocketFactory;
  final String uriHost;
  final int uriPort;
  
  public Address(String paramString, int paramInt, SocketFactory paramSocketFactory, SSLSocketFactory paramSSLSocketFactory, HostnameVerifier paramHostnameVerifier, CertificatePinner paramCertificatePinner, Authenticator paramAuthenticator, Proxy paramProxy, List<Protocol> paramList, List<ConnectionSpec> paramList1, ProxySelector paramProxySelector)
  {
    if (paramString == null) {
      throw new NullPointerException("uriHost == null");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("uriPort <= 0: " + paramInt);
    }
    if (paramAuthenticator == null) {
      throw new IllegalArgumentException("authenticator == null");
    }
    if (paramList == null) {
      throw new IllegalArgumentException("protocols == null");
    }
    if (paramProxySelector == null) {
      throw new IllegalArgumentException("proxySelector == null");
    }
    this.proxy = paramProxy;
    this.uriHost = paramString;
    this.uriPort = paramInt;
    this.socketFactory = paramSocketFactory;
    this.sslSocketFactory = paramSSLSocketFactory;
    this.hostnameVerifier = paramHostnameVerifier;
    this.certificatePinner = paramCertificatePinner;
    this.authenticator = paramAuthenticator;
    this.protocols = Util.immutableList(paramList);
    this.connectionSpecs = Util.immutableList(paramList1);
    this.proxySelector = paramProxySelector;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Address))
    {
      paramObject = (Address)paramObject;
      return (Util.equal(this.proxy, paramObject.proxy)) && (this.uriHost.equals(paramObject.uriHost)) && (this.uriPort == paramObject.uriPort) && (Util.equal(this.sslSocketFactory, paramObject.sslSocketFactory)) && (Util.equal(this.hostnameVerifier, paramObject.hostnameVerifier)) && (Util.equal(this.certificatePinner, paramObject.certificatePinner)) && (Util.equal(this.authenticator, paramObject.authenticator)) && (Util.equal(this.protocols, paramObject.protocols)) && (Util.equal(this.connectionSpecs, paramObject.connectionSpecs)) && (Util.equal(this.proxySelector, paramObject.proxySelector));
    }
    return false;
  }
  
  public Authenticator getAuthenticator()
  {
    return this.authenticator;
  }
  
  public List<ConnectionSpec> getConnectionSpecs()
  {
    return this.connectionSpecs;
  }
  
  public HostnameVerifier getHostnameVerifier()
  {
    return this.hostnameVerifier;
  }
  
  public List<Protocol> getProtocols()
  {
    return this.protocols;
  }
  
  public Proxy getProxy()
  {
    return this.proxy;
  }
  
  public ProxySelector getProxySelector()
  {
    return this.proxySelector;
  }
  
  public SocketFactory getSocketFactory()
  {
    return this.socketFactory;
  }
  
  public SSLSocketFactory getSslSocketFactory()
  {
    return this.sslSocketFactory;
  }
  
  public String getUriHost()
  {
    return this.uriHost;
  }
  
  public int getUriPort()
  {
    return this.uriPort;
  }
  
  public int hashCode()
  {
    int i;
    if (this.proxy != null) {
      i = this.proxy.hashCode();
    } else {
      i = 0;
    }
    int n = this.uriHost.hashCode();
    int i1 = this.uriPort;
    int j;
    if (this.sslSocketFactory != null) {
      j = this.sslSocketFactory.hashCode();
    } else {
      j = 0;
    }
    int k;
    if (this.hostnameVerifier != null) {
      k = this.hostnameVerifier.hashCode();
    } else {
      k = 0;
    }
    int m;
    if (this.certificatePinner != null) {
      m = this.certificatePinner.hashCode();
    } else {
      m = 0;
    }
    return (((((((((i + 527) * 31 + n) * 31 + i1) * 31 + j) * 31 + k) * 31 + m) * 31 + this.authenticator.hashCode()) * 31 + this.protocols.hashCode()) * 31 + this.connectionSpecs.hashCode()) * 31 + this.proxySelector.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Address
 * JD-Core Version:    0.7.0.1
 */