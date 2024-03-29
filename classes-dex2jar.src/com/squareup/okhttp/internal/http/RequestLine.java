package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import java.net.Proxy.Type;
import java.net.URL;

public final class RequestLine
{
  static String get(Request paramRequest, Proxy.Type paramType, Protocol paramProtocol)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramRequest.method());
    localStringBuilder.append(' ');
    if (includeAuthorityInRequestLine(paramRequest, paramType)) {
      localStringBuilder.append(paramRequest.url());
    } else {
      localStringBuilder.append(requestPath(paramRequest.url()));
    }
    localStringBuilder.append(' ');
    localStringBuilder.append(version(paramProtocol));
    return localStringBuilder.toString();
  }
  
  private static boolean includeAuthorityInRequestLine(Request paramRequest, Proxy.Type paramType)
  {
    return (!paramRequest.isHttps()) && (paramType == Proxy.Type.HTTP);
  }
  
  public static String requestPath(URL paramURL)
  {
    paramURL = paramURL.getFile();
    if (paramURL == null) {
      return "/";
    }
    if (!paramURL.startsWith("/")) {
      return "/" + paramURL;
    }
    return paramURL;
  }
  
  public static String version(Protocol paramProtocol)
  {
    if (paramProtocol == Protocol.HTTP_1_0) {
      return "HTTP/1.0";
    }
    return "HTTP/1.1";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.RequestLine
 * JD-Core Version:    0.7.0.1
 */