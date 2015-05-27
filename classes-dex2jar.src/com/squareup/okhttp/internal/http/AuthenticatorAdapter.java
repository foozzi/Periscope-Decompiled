package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Challenge;
import com.squareup.okhttp.Credentials;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.List;

public final class AuthenticatorAdapter
  implements com.squareup.okhttp.Authenticator
{
  public static final com.squareup.okhttp.Authenticator INSTANCE = new AuthenticatorAdapter();
  
  private InetAddress getConnectToInetAddress(Proxy paramProxy, URL paramURL)
  {
    if ((paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT)) {
      return ((InetSocketAddress)paramProxy.address()).getAddress();
    }
    return InetAddress.getByName(paramURL.getHost());
  }
  
  public Request authenticate(Proxy paramProxy, Response paramResponse)
  {
    List localList = paramResponse.challenges();
    paramResponse = paramResponse.request();
    URL localURL = paramResponse.url();
    int i = 0;
    int j = localList.size();
    while (i < j)
    {
      Object localObject = (Challenge)localList.get(i);
      if ("Basic".equalsIgnoreCase(((Challenge)localObject).getScheme()))
      {
        localObject = java.net.Authenticator.requestPasswordAuthentication(localURL.getHost(), getConnectToInetAddress(paramProxy, localURL), localURL.getPort(), localURL.getProtocol(), ((Challenge)localObject).getRealm(), ((Challenge)localObject).getScheme(), localURL, Authenticator.RequestorType.SERVER);
        if (localObject != null)
        {
          paramProxy = Credentials.basic(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return paramResponse.newBuilder().header("Authorization", paramProxy).build();
        }
      }
      i += 1;
    }
    return null;
  }
  
  public Request authenticateProxy(Proxy paramProxy, Response paramResponse)
  {
    List localList = paramResponse.challenges();
    paramResponse = paramResponse.request();
    URL localURL = paramResponse.url();
    int i = 0;
    int j = localList.size();
    while (i < j)
    {
      Object localObject = (Challenge)localList.get(i);
      if ("Basic".equalsIgnoreCase(((Challenge)localObject).getScheme()))
      {
        InetSocketAddress localInetSocketAddress = (InetSocketAddress)paramProxy.address();
        localObject = java.net.Authenticator.requestPasswordAuthentication(localInetSocketAddress.getHostName(), getConnectToInetAddress(paramProxy, localURL), localInetSocketAddress.getPort(), localURL.getProtocol(), ((Challenge)localObject).getRealm(), ((Challenge)localObject).getScheme(), localURL, Authenticator.RequestorType.PROXY);
        if (localObject != null)
        {
          paramProxy = Credentials.basic(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
          return paramResponse.newBuilder().header("Proxy-Authorization", paramProxy).build();
        }
      }
      i += 1;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.AuthenticatorAdapter
 * JD-Core Version:    0.7.0.1
 */