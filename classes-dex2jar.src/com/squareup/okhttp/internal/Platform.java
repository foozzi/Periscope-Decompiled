package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import o.ue;

public class Platform
{
  private static final Platform PLATFORM = ;
  
  static byte[] concatLengthPrefixed(List<Protocol> paramList)
  {
    ue localue = new ue();
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      Protocol localProtocol = (Protocol)paramList.get(i);
      if (localProtocol != Protocol.HTTP_1_0)
      {
        localue.ﺜ(localProtocol.toString().length());
        localue.ﯾ(localProtocol.toString());
      }
      i += 1;
    }
    return localue.ef();
  }
  
  private static Platform findPlatform()
  {
    try
    {
      try
      {
        Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
      }
      catch (ClassNotFoundException localClassNotFoundException1)
      {
        Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
      }
      OptionalMethod localOptionalMethod3 = new OptionalMethod(null, "setUseSessionTickets", new Class[] { Boolean.TYPE });
      OptionalMethod localOptionalMethod4 = new OptionalMethod(null, "setHostname", new Class[] { String.class });
      Object localObject8 = null;
      Object localObject6 = null;
      OptionalMethod localOptionalMethod2 = null;
      OptionalMethod localOptionalMethod1 = null;
      Object localObject11 = null;
      Object localObject10 = null;
      Object localObject1 = localObject8;
      localObject4 = localObject6;
      localObject5 = localOptionalMethod2;
      Object localObject9;
      try
      {
        Class localClass = Class.forName("android.net.TrafficStats");
        localObject1 = localObject8;
        localObject4 = localObject6;
        localObject5 = localOptionalMethod2;
        localObject9 = localClass.getMethod("tagSocket", new Class[] { Socket.class });
        localObject1 = localObject9;
        localObject4 = localObject6;
        localObject5 = localOptionalMethod2;
        localObject6 = localClass.getMethod("untagSocket", new Class[] { Socket.class });
        localObject8 = localOptionalMethod1;
        localObject1 = localObject9;
        localObject4 = localObject6;
        localObject5 = localOptionalMethod2;
        try
        {
          Class.forName("android.net.Network");
          localObject8 = localOptionalMethod1;
          localObject1 = localObject9;
          localObject4 = localObject6;
          localObject5 = localOptionalMethod2;
          localOptionalMethod1 = new OptionalMethod([B.class, "getAlpnSelectedProtocol", new Class[0]);
          localObject8 = localOptionalMethod1;
          localObject1 = localObject9;
          localObject4 = localObject6;
          localObject5 = localOptionalMethod1;
          localOptionalMethod2 = new OptionalMethod(null, "setAlpnProtocols", new Class[] { [B.class });
          localObject1 = localOptionalMethod2;
          localObject8 = localOptionalMethod1;
        }
        catch (ClassNotFoundException localClassNotFoundException2)
        {
          localObject2 = localObject10;
        }
        localObject4 = localObject6;
        localObject5 = localObject8;
        localObject6 = localObject2;
      }
      catch (ClassNotFoundException|NoSuchMethodException localClassNotFoundException5)
      {
        localObject7 = localObject11;
        localObject9 = localObject2;
      }
      Object localObject2 = new Android(localOptionalMethod3, localOptionalMethod4, (Method)localObject9, (Method)localObject4, (OptionalMethod)localObject5, (OptionalMethod)localObject7);
      return localObject2;
    }
    catch (ClassNotFoundException localClassNotFoundException3)
    {
      try
      {
        Object localObject3 = Class.forName("org.eclipse.jetty.alpn.ALPN");
        Object localObject4 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$Provider");
        Object localObject5 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ClientProvider");
        Object localObject7 = Class.forName("org.eclipse.jetty.alpn.ALPN" + "$ServerProvider");
        localObject3 = new JdkWithJettyBootPlatform(((Class)localObject3).getMethod("put", new Class[] { SSLSocket.class, localObject4 }), ((Class)localObject3).getMethod("get", new Class[] { SSLSocket.class }), ((Class)localObject3).getMethod("remove", new Class[] { SSLSocket.class }), (Class)localObject5, (Class)localObject7);
        return localObject3;
      }
      catch (ClassNotFoundException|NoSuchMethodException localClassNotFoundException4) {}
    }
    return new Platform();
  }
  
  public static Platform get()
  {
    return PLATFORM;
  }
  
  public void afterHandshake(SSLSocket paramSSLSocket) {}
  
  public void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList) {}
  
  public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  public String getPrefix()
  {
    return "OkHttp";
  }
  
  public String getSelectedProtocol(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public void logW(String paramString)
  {
    System.out.println(paramString);
  }
  
  public void tagSocket(Socket paramSocket) {}
  
  public URI toUriLenient(URL paramURL)
  {
    return paramURL.toURI();
  }
  
  public void untagSocket(Socket paramSocket) {}
  
  static class Android
    extends Platform
  {
    private final OptionalMethod<Socket> getAlpnSelectedProtocol;
    private final OptionalMethod<Socket> setAlpnProtocols;
    private final OptionalMethod<Socket> setHostname;
    private final OptionalMethod<Socket> setUseSessionTickets;
    private final Method trafficStatsTagSocket;
    private final Method trafficStatsUntagSocket;
    
    public Android(OptionalMethod<Socket> paramOptionalMethod1, OptionalMethod<Socket> paramOptionalMethod2, Method paramMethod1, Method paramMethod2, OptionalMethod<Socket> paramOptionalMethod3, OptionalMethod<Socket> paramOptionalMethod4)
    {
      this.setUseSessionTickets = paramOptionalMethod1;
      this.setHostname = paramOptionalMethod2;
      this.trafficStatsTagSocket = paramMethod1;
      this.trafficStatsUntagSocket = paramMethod2;
      this.getAlpnSelectedProtocol = paramOptionalMethod3;
      this.setAlpnProtocols = paramOptionalMethod4;
    }
    
    public void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
    {
      if (paramString != null)
      {
        this.setUseSessionTickets.invokeOptionalWithoutCheckedException(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
        this.setHostname.invokeOptionalWithoutCheckedException(paramSSLSocket, new Object[] { paramString });
      }
      if ((this.setAlpnProtocols != null) && (this.setAlpnProtocols.isSupported(paramSSLSocket)))
      {
        paramString = concatLengthPrefixed(paramList);
        this.setAlpnProtocols.invokeWithoutCheckedException(paramSSLSocket, new Object[] { paramString });
      }
    }
    
    public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    {
      try
      {
        paramSocket.connect(paramInetSocketAddress, paramInt);
        return;
      }
      catch (SecurityException paramSocket)
      {
        paramInetSocketAddress = new IOException("Exception in connect");
        paramInetSocketAddress.initCause(paramSocket);
        throw paramInetSocketAddress;
      }
    }
    
    public String getSelectedProtocol(SSLSocket paramSSLSocket)
    {
      if (this.getAlpnSelectedProtocol == null) {
        return null;
      }
      if (!this.getAlpnSelectedProtocol.isSupported(paramSSLSocket)) {
        return null;
      }
      paramSSLSocket = (byte[])this.getAlpnSelectedProtocol.invokeWithoutCheckedException(paramSSLSocket, new Object[0]);
      if (paramSSLSocket != null) {
        return new String(paramSSLSocket, Util.UTF_8);
      }
      return null;
    }
    
    public void tagSocket(Socket paramSocket)
    {
      if (this.trafficStatsTagSocket == null) {
        return;
      }
      try
      {
        this.trafficStatsTagSocket.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
    
    public void untagSocket(Socket paramSocket)
    {
      if (this.trafficStatsUntagSocket == null) {
        return;
      }
      try
      {
        this.trafficStatsUntagSocket.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
  }
  
  static class JdkWithJettyBootPlatform
    extends Platform
  {
    private final Class<?> clientProviderClass;
    private final Method getMethod;
    private final Method putMethod;
    private final Method removeMethod;
    private final Class<?> serverProviderClass;
    
    public JdkWithJettyBootPlatform(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
    {
      this.putMethod = paramMethod1;
      this.getMethod = paramMethod2;
      this.removeMethod = paramMethod3;
      this.clientProviderClass = paramClass1;
      this.serverProviderClass = paramClass2;
    }
    
    public void afterHandshake(SSLSocket paramSSLSocket)
    {
      try
      {
        this.removeMethod.invoke(null, new Object[] { paramSSLSocket });
        return;
      }
      catch (IllegalAccessException|InvocationTargetException paramSSLSocket)
      {
        throw new AssertionError();
      }
    }
    
    public void configureTlsExtensions(SSLSocket paramSSLSocket, String paramString, List<Protocol> paramList)
    {
      paramString = new ArrayList(paramList.size());
      int i = 0;
      int j = paramList.size();
      Object localObject;
      while (i < j)
      {
        localObject = (Protocol)paramList.get(i);
        if (localObject != Protocol.HTTP_1_0) {
          paramString.add(((Protocol)localObject).toString());
        }
        i += 1;
      }
      try
      {
        paramList = Platform.class.getClassLoader();
        localObject = this.clientProviderClass;
        Class localClass = this.serverProviderClass;
        paramString = new Platform.JettyNegoProvider(paramString);
        paramString = Proxy.newProxyInstance(paramList, new Class[] { localObject, localClass }, paramString);
        this.putMethod.invoke(null, new Object[] { paramSSLSocket, paramString });
        return;
      }
      catch (InvocationTargetException|IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
    }
    
    public String getSelectedProtocol(SSLSocket paramSSLSocket)
    {
      try
      {
        paramSSLSocket = (Platform.JettyNegoProvider)Proxy.getInvocationHandler(this.getMethod.invoke(null, new Object[] { paramSSLSocket }));
        if ((!Platform.JettyNegoProvider.access$000(paramSSLSocket)) && (Platform.JettyNegoProvider.access$100(paramSSLSocket) == null))
        {
          Internal.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
          return null;
        }
        if (Platform.JettyNegoProvider.access$000(paramSSLSocket)) {
          return null;
        }
        paramSSLSocket = Platform.JettyNegoProvider.access$100(paramSSLSocket);
        return paramSSLSocket;
      }
      catch (InvocationTargetException|IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError();
      }
    }
  }
  
  static class JettyNegoProvider
    implements InvocationHandler
  {
    private final List<String> protocols;
    private String selected;
    private boolean unsupported;
    
    public JettyNegoProvider(List<String> paramList)
    {
      this.protocols = paramList;
    }
    
    public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    {
      String str = paramMethod.getName();
      Class localClass = paramMethod.getReturnType();
      paramObject = paramArrayOfObject;
      if (paramArrayOfObject == null) {
        paramObject = Util.EMPTY_STRING_ARRAY;
      }
      if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
        return Boolean.valueOf(true);
      }
      if ((str.equals("unsupported")) && (Void.TYPE == localClass))
      {
        this.unsupported = true;
        return null;
      }
      if ((str.equals("protocols")) && (paramObject.length == 0)) {
        return this.protocols;
      }
      if (((str.equals("selectProtocol")) || (str.equals("select"))) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] instanceof List)))
      {
        paramObject = (List)paramObject[0];
        int i = 0;
        int j = paramObject.size();
        while (i < j)
        {
          if (this.protocols.contains(paramObject.get(i)))
          {
            paramObject = (String)paramObject.get(i);
            this.selected = paramObject;
            return paramObject;
          }
          i += 1;
        }
        paramObject = (String)this.protocols.get(0);
        this.selected = paramObject;
        return paramObject;
      }
      if (((str.equals("protocolSelected")) || (str.equals("selected"))) && (paramObject.length == 1))
      {
        this.selected = ((String)paramObject[0]);
        return null;
      }
      return paramMethod.invoke(this, paramObject);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.Platform
 * JD-Core Version:    0.7.0.1
 */