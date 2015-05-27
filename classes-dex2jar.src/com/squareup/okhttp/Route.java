package com.squareup.okhttp;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;

public final class Route
{
  final Address address;
  final ConnectionSpec connectionSpec;
  final InetSocketAddress inetSocketAddress;
  final Proxy proxy;
  final boolean shouldSendTlsFallbackIndicator;
  
  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, ConnectionSpec paramConnectionSpec)
  {
    this(paramAddress, paramProxy, paramInetSocketAddress, paramConnectionSpec, false);
  }
  
  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, ConnectionSpec paramConnectionSpec, boolean paramBoolean)
  {
    if (paramAddress == null) {
      throw new NullPointerException("address == null");
    }
    if (paramProxy == null) {
      throw new NullPointerException("proxy == null");
    }
    if (paramInetSocketAddress == null) {
      throw new NullPointerException("inetSocketAddress == null");
    }
    if (paramConnectionSpec == null) {
      throw new NullPointerException("connectionConfiguration == null");
    }
    this.address = paramAddress;
    this.proxy = paramProxy;
    this.inetSocketAddress = paramInetSocketAddress;
    this.connectionSpec = paramConnectionSpec;
    this.shouldSendTlsFallbackIndicator = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Route))
    {
      paramObject = (Route)paramObject;
      return (this.address.equals(paramObject.address)) && (this.proxy.equals(paramObject.proxy)) && (this.inetSocketAddress.equals(paramObject.inetSocketAddress)) && (this.connectionSpec.equals(paramObject.connectionSpec)) && (this.shouldSendTlsFallbackIndicator == paramObject.shouldSendTlsFallbackIndicator);
    }
    return false;
  }
  
  public Address getAddress()
  {
    return this.address;
  }
  
  public ConnectionSpec getConnectionSpec()
  {
    return this.connectionSpec;
  }
  
  public Proxy getProxy()
  {
    return this.proxy;
  }
  
  public boolean getShouldSendTlsFallbackIndicator()
  {
    return this.shouldSendTlsFallbackIndicator;
  }
  
  public InetSocketAddress getSocketAddress()
  {
    return this.inetSocketAddress;
  }
  
  public int hashCode()
  {
    int j = this.address.hashCode();
    int k = this.proxy.hashCode();
    int m = this.inetSocketAddress.hashCode();
    int n = this.connectionSpec.hashCode();
    int i;
    if (this.shouldSendTlsFallbackIndicator) {
      i = 1;
    } else {
      i = 0;
    }
    return ((((j + 527) * 31 + k) * 31 + m) * 31 + n) * 31 + i;
  }
  
  public boolean requiresTunnel()
  {
    return (this.address.sslSocketFactory != null) && (this.proxy.type() == Proxy.Type.HTTP);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Route
 * JD-Core Version:    0.7.0.1
 */