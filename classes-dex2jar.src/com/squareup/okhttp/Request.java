package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpMethod;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

public final class Request
{
  private final RequestBody body;
  private volatile CacheControl cacheControl;
  private final Headers headers;
  private final String method;
  private final Object tag;
  private volatile URI uri;
  private volatile URL url;
  private final String urlString;
  
  private Request(Builder paramBuilder)
  {
    this.urlString = paramBuilder.urlString;
    this.method = paramBuilder.method;
    this.headers = paramBuilder.headers.build();
    this.body = paramBuilder.body;
    Object localObject;
    if (paramBuilder.tag != null) {
      localObject = paramBuilder.tag;
    } else {
      localObject = this;
    }
    this.tag = localObject;
    this.url = paramBuilder.url;
  }
  
  public RequestBody body()
  {
    return this.body;
  }
  
  public CacheControl cacheControl()
  {
    CacheControl localCacheControl = this.cacheControl;
    if (localCacheControl != null) {
      return localCacheControl;
    }
    localCacheControl = CacheControl.parse(this.headers);
    this.cacheControl = localCacheControl;
    return localCacheControl;
  }
  
  public String header(String paramString)
  {
    return this.headers.get(paramString);
  }
  
  public Headers headers()
  {
    return this.headers;
  }
  
  public List<String> headers(String paramString)
  {
    return this.headers.values(paramString);
  }
  
  public boolean isHttps()
  {
    return url().getProtocol().equals("https");
  }
  
  public String method()
  {
    return this.method;
  }
  
  public Builder newBuilder()
  {
    return new Builder(this, null);
  }
  
  public Object tag()
  {
    return this.tag;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Request{method=").append(this.method).append(", url=").append(this.urlString).append(", tag=");
    Object localObject;
    if (this.tag != this) {
      localObject = this.tag;
    } else {
      localObject = null;
    }
    return localObject + '}';
  }
  
  public URI uri()
  {
    try
    {
      URI localURI = this.uri;
      if (localURI != null) {
        return localURI;
      }
      localURI = Platform.get().toUriLenient(url());
      this.uri = localURI;
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }
  
  public URL url()
  {
    try
    {
      URL localURL = this.url;
      if (localURL != null) {
        return localURL;
      }
      localURL = new URL(this.urlString);
      this.url = localURL;
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException("Malformed URL: " + this.urlString, localMalformedURLException);
    }
  }
  
  public String urlString()
  {
    return this.urlString;
  }
  
  public static class Builder
  {
    private RequestBody body;
    private Headers.Builder headers;
    private String method;
    private Object tag;
    private URL url;
    private String urlString;
    
    public Builder()
    {
      this.method = "GET";
      this.headers = new Headers.Builder();
    }
    
    private Builder(Request paramRequest)
    {
      this.urlString = paramRequest.urlString;
      this.url = paramRequest.url;
      this.method = paramRequest.method;
      this.body = paramRequest.body;
      this.tag = paramRequest.tag;
      this.headers = paramRequest.headers.newBuilder();
    }
    
    public Builder addHeader(String paramString1, String paramString2)
    {
      this.headers.add(paramString1, paramString2);
      return this;
    }
    
    public Request build()
    {
      if (this.urlString == null) {
        throw new IllegalStateException("url == null");
      }
      return new Request(this, null);
    }
    
    public Builder cacheControl(CacheControl paramCacheControl)
    {
      paramCacheControl = paramCacheControl.toString();
      if (paramCacheControl.isEmpty()) {
        return removeHeader("Cache-Control");
      }
      return header("Cache-Control", paramCacheControl);
    }
    
    public Builder delete()
    {
      return method("DELETE", null);
    }
    
    public Builder delete(RequestBody paramRequestBody)
    {
      return method("DELETE", paramRequestBody);
    }
    
    public Builder get()
    {
      return method("GET", null);
    }
    
    public Builder head()
    {
      return method("HEAD", null);
    }
    
    public Builder header(String paramString1, String paramString2)
    {
      this.headers.set(paramString1, paramString2);
      return this;
    }
    
    public Builder headers(Headers paramHeaders)
    {
      this.headers = paramHeaders.newBuilder();
      return this;
    }
    
    public Builder method(String paramString, RequestBody paramRequestBody)
    {
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("method == null || method.length() == 0");
      }
      if ((paramRequestBody != null) && (!HttpMethod.permitsRequestBody(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      RequestBody localRequestBody = paramRequestBody;
      if (paramRequestBody == null)
      {
        localRequestBody = paramRequestBody;
        if (HttpMethod.permitsRequestBody(paramString)) {
          localRequestBody = RequestBody.create(null, Util.EMPTY_BYTE_ARRAY);
        }
      }
      this.method = paramString;
      this.body = localRequestBody;
      return this;
    }
    
    public Builder patch(RequestBody paramRequestBody)
    {
      return method("PATCH", paramRequestBody);
    }
    
    public Builder post(RequestBody paramRequestBody)
    {
      return method("POST", paramRequestBody);
    }
    
    public Builder put(RequestBody paramRequestBody)
    {
      return method("PUT", paramRequestBody);
    }
    
    public Builder removeHeader(String paramString)
    {
      this.headers.removeAll(paramString);
      return this;
    }
    
    public Builder tag(Object paramObject)
    {
      this.tag = paramObject;
      return this;
    }
    
    public Builder url(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("url == null");
      }
      this.urlString = paramString;
      this.url = null;
      return this;
    }
    
    public Builder url(URL paramURL)
    {
      if (paramURL == null) {
        throw new IllegalArgumentException("url == null");
      }
      this.url = paramURL;
      this.urlString = paramURL.toString();
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Request
 * JD-Core Version:    0.7.0.1
 */