package retrofit.appengine;

import com.google.appengine.api.urlfetch.HTTPHeader;
import com.google.appengine.api.urlfetch.HTTPMethod;
import com.google.appengine.api.urlfetch.HTTPRequest;
import com.google.appengine.api.urlfetch.HTTPResponse;
import com.google.appengine.api.urlfetch.URLFetchService;
import com.google.appengine.api.urlfetch.URLFetchServiceFactory;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import retrofit.client.Client;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.client.Response;
import retrofit.mime.TypedByteArray;
import retrofit.mime.TypedOutput;

public class UrlFetchClient
  implements Client
{
  private final URLFetchService urlFetchService;
  
  public UrlFetchClient()
  {
    this(URLFetchServiceFactory.getURLFetchService());
  }
  
  public UrlFetchClient(URLFetchService paramURLFetchService)
  {
    this.urlFetchService = paramURLFetchService;
  }
  
  static HTTPRequest createRequest(Request paramRequest)
  {
    Object localObject1 = getHttpMethod(paramRequest.getMethod());
    localObject1 = new HTTPRequest(new URL(paramRequest.getUrl()), (HTTPMethod)localObject1);
    Object localObject2 = paramRequest.getHeaders().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Header localHeader = (Header)((Iterator)localObject2).next();
      ((HTTPRequest)localObject1).addHeader(new HTTPHeader(localHeader.getName(), localHeader.getValue()));
    }
    paramRequest = paramRequest.getBody();
    if (paramRequest != null)
    {
      localObject2 = paramRequest.mimeType();
      if (localObject2 != null) {
        ((HTTPRequest)localObject1).addHeader(new HTTPHeader("Content-Type", (String)localObject2));
      }
      localObject2 = new ByteArrayOutputStream();
      paramRequest.writeTo((OutputStream)localObject2);
      ((HTTPRequest)localObject1).setPayload(((ByteArrayOutputStream)localObject2).toByteArray());
    }
    return localObject1;
  }
  
  private static HTTPMethod getHttpMethod(String paramString)
  {
    if ("GET".equals(paramString)) {
      return HTTPMethod.GET;
    }
    if ("POST".equals(paramString)) {
      return HTTPMethod.POST;
    }
    if ("PATCH".equals(paramString)) {
      return HTTPMethod.PATCH;
    }
    if ("PUT".equals(paramString)) {
      return HTTPMethod.PUT;
    }
    if ("DELETE".equals(paramString)) {
      return HTTPMethod.DELETE;
    }
    if ("HEAD".equals(paramString)) {
      return HTTPMethod.HEAD;
    }
    throw new IllegalStateException("Illegal HTTP method: " + paramString);
  }
  
  static Response parseResponse(HTTPResponse paramHTTPResponse, HTTPRequest paramHTTPRequest)
  {
    Object localObject1 = paramHTTPResponse.getFinalUrl();
    if (localObject1 != null) {
      paramHTTPRequest = (HTTPRequest)localObject1;
    } else {
      paramHTTPRequest = paramHTTPRequest.getURL();
    }
    String str1 = paramHTTPRequest.toString();
    int i = paramHTTPResponse.getResponseCode();
    localObject1 = paramHTTPResponse.getHeaders();
    ArrayList localArrayList = new ArrayList(((List)localObject1).size());
    paramHTTPRequest = "application/octet-stream";
    Object localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (HTTPHeader)((Iterator)localObject2).next();
      String str2 = ((HTTPHeader)localObject1).getName();
      localObject1 = ((HTTPHeader)localObject1).getValue();
      if ("Content-Type".equalsIgnoreCase(str2)) {
        paramHTTPRequest = (HTTPRequest)localObject1;
      }
      localArrayList.add(new Header(str2, (String)localObject1));
    }
    localObject1 = null;
    localObject2 = paramHTTPResponse.getContent();
    paramHTTPResponse = (HTTPResponse)localObject1;
    if (localObject2 != null) {
      paramHTTPResponse = new TypedByteArray(paramHTTPRequest, (byte[])localObject2);
    }
    return new Response(str1, i, "", localArrayList, paramHTTPResponse);
  }
  
  protected HTTPResponse execute(URLFetchService paramURLFetchService, HTTPRequest paramHTTPRequest)
  {
    return paramURLFetchService.fetch(paramHTTPRequest);
  }
  
  public Response execute(Request paramRequest)
  {
    paramRequest = createRequest(paramRequest);
    return parseResponse(execute(this.urlFetchService, paramRequest), paramRequest);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.appengine.UrlFetchClient
 * JD-Core Version:    0.7.0.1
 */