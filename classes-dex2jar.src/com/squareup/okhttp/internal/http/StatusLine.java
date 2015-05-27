package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Response;
import java.net.ProtocolException;

public final class StatusLine
{
  public static final int HTTP_CONTINUE = 100;
  public static final int HTTP_PERM_REDIRECT = 308;
  public static final int HTTP_TEMP_REDIRECT = 307;
  public final int code;
  public final String message;
  public final Protocol protocol;
  
  public StatusLine(Protocol paramProtocol, int paramInt, String paramString)
  {
    this.protocol = paramProtocol;
    this.code = paramInt;
    this.message = paramString;
  }
  
  public static StatusLine get(Response paramResponse)
  {
    return new StatusLine(paramResponse.protocol(), paramResponse.code(), paramResponse.message());
  }
  
  public static StatusLine parse(String paramString)
  {
    int j;
    int i;
    Protocol localProtocol;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' ')) {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      j = paramString.charAt(7) - '0';
      i = 9;
      if (j == 0) {
        localProtocol = Protocol.HTTP_1_0;
      } else if (j == 1) {
        localProtocol = Protocol.HTTP_1_1;
      } else {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
    }
    else if (paramString.startsWith("ICY "))
    {
      localProtocol = Protocol.HTTP_1_0;
      i = 4;
    }
    else
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    if (paramString.length() < i + 3) {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    try
    {
      j = Integer.parseInt(paramString.substring(i, i + 3));
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    String str = "";
    if (paramString.length() > i + 3)
    {
      if (paramString.charAt(i + 3) != ' ') {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      str = paramString.substring(i + 4);
    }
    return new StatusLine(localNumberFormatException, j, str);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str;
    if (this.protocol == Protocol.HTTP_1_0) {
      str = "HTTP/1.0";
    } else {
      str = "HTTP/1.1";
    }
    localStringBuilder.append(str);
    localStringBuilder.append(' ').append(this.code);
    if (this.message != null) {
      localStringBuilder.append(' ').append(this.message);
    }
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.StatusLine
 * JD-Core Version:    0.7.0.1
 */