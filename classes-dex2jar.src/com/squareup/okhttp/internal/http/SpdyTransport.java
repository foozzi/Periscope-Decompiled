package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Headers.Builder;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.ErrorCode;
import com.squareup.okhttp.internal.spdy.Header;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyStream;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import o.uj;
import o.up;
import o.uz;
import o.vb;

public final class SpdyTransport
  implements Transport
{
  private static final List<uj> HTTP_2_PROHIBITED_HEADERS = Util.immutableList(new uj[] { uj.ﺗ("connection"), uj.ﺗ("host"), uj.ﺗ("keep-alive"), uj.ﺗ("proxy-connection"), uj.ﺗ("te"), uj.ﺗ("transfer-encoding"), uj.ﺗ("encoding"), uj.ﺗ("upgrade") });
  private static final List<uj> SPDY_3_PROHIBITED_HEADERS = Util.immutableList(new uj[] { uj.ﺗ("connection"), uj.ﺗ("host"), uj.ﺗ("keep-alive"), uj.ﺗ("proxy-connection"), uj.ﺗ("transfer-encoding") });
  private final HttpEngine httpEngine;
  private final SpdyConnection spdyConnection;
  private SpdyStream stream;
  
  public SpdyTransport(HttpEngine paramHttpEngine, SpdyConnection paramSpdyConnection)
  {
    this.httpEngine = paramHttpEngine;
    this.spdyConnection = paramSpdyConnection;
  }
  
  private static boolean isProhibitedHeader(Protocol paramProtocol, uj paramuj)
  {
    if (paramProtocol == Protocol.SPDY_3) {
      return SPDY_3_PROHIBITED_HEADERS.contains(paramuj);
    }
    if (paramProtocol == Protocol.HTTP_2) {
      return HTTP_2_PROHIBITED_HEADERS.contains(paramuj);
    }
    throw new AssertionError(paramProtocol);
  }
  
  private static String joinOnNull(String paramString1, String paramString2)
  {
    return paramString1 + '\000' + paramString2;
  }
  
  public static Response.Builder readNameValueBlock(List<Header> paramList, Protocol paramProtocol)
  {
    Object localObject2 = null;
    Object localObject1 = "HTTP/1.1";
    Headers.Builder localBuilder = new Headers.Builder();
    localBuilder.set(OkHeaders.SELECTED_PROTOCOL, paramProtocol.toString());
    int i = 0;
    int n = paramList.size();
    while (i < n)
    {
      uj localuj = ((Header)paramList.get(i)).name;
      String str2 = ((Header)paramList.get(i)).value.ei();
      int j = 0;
      while (j < str2.length())
      {
        int m = str2.indexOf(0, j);
        int k = m;
        if (m == -1) {
          k = str2.length();
        }
        String str1 = str2.substring(j, k);
        Object localObject3;
        Object localObject4;
        if (localuj.equals(Header.RESPONSE_STATUS))
        {
          localObject3 = str1;
          localObject4 = localObject1;
        }
        else if (localuj.equals(Header.VERSION))
        {
          localObject3 = localObject2;
          localObject4 = str1;
        }
        else
        {
          localObject3 = localObject2;
          localObject4 = localObject1;
          if (!isProhibitedHeader(paramProtocol, localuj))
          {
            localBuilder.add(localuj.ei(), str1);
            localObject4 = localObject1;
            localObject3 = localObject2;
          }
        }
        j = k + 1;
        localObject2 = localObject3;
        localObject1 = localObject4;
      }
      i += 1;
    }
    if (localObject2 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    paramList = StatusLine.parse((String)localObject1 + " " + localObject2);
    return new Response.Builder().protocol(paramProtocol).code(paramList.code).message(paramList.message).headers(localBuilder.build());
  }
  
  public static List<Header> writeNameValueBlock(Request paramRequest, Protocol paramProtocol, String paramString)
  {
    Headers localHeaders = paramRequest.headers();
    ArrayList localArrayList = new ArrayList(localHeaders.size() + 10);
    localArrayList.add(new Header(Header.TARGET_METHOD, paramRequest.method()));
    localArrayList.add(new Header(Header.TARGET_PATH, RequestLine.requestPath(paramRequest.url())));
    String str = HttpEngine.hostHeader(paramRequest.url());
    if (Protocol.SPDY_3 == paramProtocol)
    {
      localArrayList.add(new Header(Header.VERSION, paramString));
      localArrayList.add(new Header(Header.TARGET_HOST, str));
    }
    else if (Protocol.HTTP_2 == paramProtocol)
    {
      localArrayList.add(new Header(Header.TARGET_AUTHORITY, str));
    }
    else
    {
      throw new AssertionError();
    }
    localArrayList.add(new Header(Header.TARGET_SCHEME, paramRequest.url().getProtocol()));
    paramRequest = new LinkedHashSet();
    int i = 0;
    int k = localHeaders.size();
    while (i < k)
    {
      paramString = uj.ﺗ(localHeaders.name(i).toLowerCase(Locale.US));
      str = localHeaders.value(i);
      if ((!isProhibitedHeader(paramProtocol, paramString)) && (!paramString.equals(Header.TARGET_METHOD)) && (!paramString.equals(Header.TARGET_PATH)) && (!paramString.equals(Header.TARGET_SCHEME)) && (!paramString.equals(Header.TARGET_AUTHORITY)) && (!paramString.equals(Header.TARGET_HOST)) && (!paramString.equals(Header.VERSION))) {
        if (paramRequest.add(paramString))
        {
          localArrayList.add(new Header(paramString, str));
        }
        else
        {
          int j = 0;
          while (j < localArrayList.size())
          {
            if (((Header)localArrayList.get(j)).name.equals(paramString))
            {
              localArrayList.set(j, new Header(paramString, joinOnNull(((Header)localArrayList.get(j)).value.ei(), str)));
              break;
            }
            j += 1;
          }
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public boolean canReuseConnection()
  {
    return true;
  }
  
  public uz createRequestBody(Request paramRequest, long paramLong)
  {
    return this.stream.getSink();
  }
  
  public void disconnect(HttpEngine paramHttpEngine)
  {
    if (this.stream != null) {
      this.stream.close(ErrorCode.CANCEL);
    }
  }
  
  public void finishRequest()
  {
    this.stream.getSink().close();
  }
  
  public ResponseBody openResponseBody(Response paramResponse)
  {
    return new RealResponseBody(paramResponse.headers(), up.ˋ(this.stream.getSource()));
  }
  
  public Response.Builder readResponseHeaders()
  {
    return readNameValueBlock(this.stream.getResponseHeaders(), this.spdyConnection.getProtocol());
  }
  
  public void releaseConnectionOnIdle() {}
  
  public void writeRequestBody(RetryableSink paramRetryableSink)
  {
    paramRetryableSink.writeToSocket(this.stream.getSink());
  }
  
  public void writeRequestHeaders(Request paramRequest)
  {
    if (this.stream != null) {
      return;
    }
    this.httpEngine.writingRequestHeaders();
    boolean bool = this.httpEngine.permitsRequestBody();
    String str = RequestLine.version(this.httpEngine.getConnection().getProtocol());
    this.stream = this.spdyConnection.newStream(writeNameValueBlock(paramRequest, this.spdyConnection.getProtocol(), str), bool, true);
    this.stream.readTimeout().timeout(this.httpEngine.client.getReadTimeout(), TimeUnit.MILLISECONDS);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.SpdyTransport
 * JD-Core Version:    0.7.0.1
 */