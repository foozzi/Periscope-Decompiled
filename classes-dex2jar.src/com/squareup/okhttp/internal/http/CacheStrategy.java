package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import java.net.URL;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public final class CacheStrategy
{
  public final Response cacheResponse;
  public final Request networkRequest;
  
  private CacheStrategy(Request paramRequest, Response paramResponse)
  {
    this.networkRequest = paramRequest;
    this.cacheResponse = paramResponse;
  }
  
  public static boolean isCacheable(Response paramResponse, Request paramRequest)
  {
    switch (paramResponse.code())
    {
    default: 
      break;
    case 200: 
    case 203: 
    case 204: 
    case 300: 
    case 301: 
    case 308: 
    case 404: 
    case 405: 
    case 410: 
    case 414: 
    case 501: 
      break;
    case 302: 
    case 307: 
      if ((paramResponse.header("Expires") != null) || (paramResponse.cacheControl().maxAgeSeconds() != -1) || (paramResponse.cacheControl().isPublic()) || (paramResponse.cacheControl().isPrivate())) {
        break label171;
      }
    }
    return false;
    label171:
    return (!paramResponse.cacheControl().noStore()) && (!paramRequest.cacheControl().noStore());
  }
  
  public static class Factory
  {
    private int ageSeconds = -1;
    final Response cacheResponse;
    private String etag;
    private Date expires;
    private Date lastModified;
    private String lastModifiedString;
    final long nowMillis;
    private long receivedResponseMillis;
    final Request request;
    private long sentRequestMillis;
    private Date servedDate;
    private String servedDateString;
    
    public Factory(long paramLong, Request paramRequest, Response paramResponse)
    {
      this.nowMillis = paramLong;
      this.request = paramRequest;
      this.cacheResponse = paramResponse;
      if (paramResponse != null)
      {
        paramRequest = paramResponse.headers();
        int i = 0;
        int j = paramRequest.size();
        while (i < j)
        {
          paramResponse = paramRequest.name(i);
          String str = paramRequest.value(i);
          if ("Date".equalsIgnoreCase(paramResponse))
          {
            this.servedDate = HttpDate.parse(str);
            this.servedDateString = str;
          }
          else if ("Expires".equalsIgnoreCase(paramResponse))
          {
            this.expires = HttpDate.parse(str);
          }
          else if ("Last-Modified".equalsIgnoreCase(paramResponse))
          {
            this.lastModified = HttpDate.parse(str);
            this.lastModifiedString = str;
          }
          else if ("ETag".equalsIgnoreCase(paramResponse))
          {
            this.etag = str;
          }
          else if ("Age".equalsIgnoreCase(paramResponse))
          {
            this.ageSeconds = HeaderParser.parseSeconds(str, -1);
          }
          else if (OkHeaders.SENT_MILLIS.equalsIgnoreCase(paramResponse))
          {
            this.sentRequestMillis = Long.parseLong(str);
          }
          else if (OkHeaders.RECEIVED_MILLIS.equalsIgnoreCase(paramResponse))
          {
            this.receivedResponseMillis = Long.parseLong(str);
          }
          i += 1;
        }
      }
    }
    
    private long cacheResponseAge()
    {
      long l;
      if (this.servedDate != null) {
        l = Math.max(0L, this.receivedResponseMillis - this.servedDate.getTime());
      } else {
        l = 0L;
      }
      if (this.ageSeconds != -1) {
        l = Math.max(l, TimeUnit.SECONDS.toMillis(this.ageSeconds));
      }
      return l + (this.receivedResponseMillis - this.sentRequestMillis) + (this.nowMillis - this.receivedResponseMillis);
    }
    
    private long computeFreshnessLifetime()
    {
      CacheControl localCacheControl = this.cacheResponse.cacheControl();
      if (localCacheControl.maxAgeSeconds() != -1) {
        return TimeUnit.SECONDS.toMillis(localCacheControl.maxAgeSeconds());
      }
      long l;
      if (this.expires != null)
      {
        if (this.servedDate != null) {
          l = this.servedDate.getTime();
        } else {
          l = this.receivedResponseMillis;
        }
        l = this.expires.getTime() - l;
        if (l > 0L) {
          return l;
        }
        return 0L;
      }
      if ((this.lastModified != null) && (this.cacheResponse.request().url().getQuery() == null))
      {
        if (this.servedDate != null) {
          l = this.servedDate.getTime();
        } else {
          l = this.sentRequestMillis;
        }
        l -= this.lastModified.getTime();
        if (l > 0L) {
          return l / 10L;
        }
        return 0L;
      }
      return 0L;
    }
    
    private CacheStrategy getCandidate()
    {
      if (this.cacheResponse == null) {
        return new CacheStrategy(this.request, null, null);
      }
      if ((this.request.isHttps()) && (this.cacheResponse.handshake() == null)) {
        return new CacheStrategy(this.request, null, null);
      }
      if (!CacheStrategy.isCacheable(this.cacheResponse, this.request)) {
        return new CacheStrategy(this.request, null, null);
      }
      Object localObject = this.request.cacheControl();
      if ((((CacheControl)localObject).noCache()) || (hasConditions(this.request))) {
        return new CacheStrategy(this.request, null, null);
      }
      long l5 = cacheResponseAge();
      long l2 = computeFreshnessLifetime();
      long l1 = l2;
      if (((CacheControl)localObject).maxAgeSeconds() != -1) {
        l1 = Math.min(l2, TimeUnit.SECONDS.toMillis(((CacheControl)localObject).maxAgeSeconds()));
      }
      l2 = 0L;
      if (((CacheControl)localObject).minFreshSeconds() != -1) {
        l2 = TimeUnit.SECONDS.toMillis(((CacheControl)localObject).minFreshSeconds());
      }
      long l4 = 0L;
      CacheControl localCacheControl = this.cacheResponse.cacheControl();
      long l3 = l4;
      if (!localCacheControl.mustRevalidate())
      {
        l3 = l4;
        if (((CacheControl)localObject).maxStaleSeconds() != -1) {
          l3 = TimeUnit.SECONDS.toMillis(((CacheControl)localObject).maxStaleSeconds());
        }
      }
      if ((!localCacheControl.noCache()) && (l5 + l2 < l1 + l3))
      {
        localObject = this.cacheResponse.newBuilder();
        if (l5 + l2 >= l1) {
          ((Response.Builder)localObject).addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
        }
        if ((l5 > 86400000L) && (isFreshnessLifetimeHeuristic())) {
          ((Response.Builder)localObject).addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
        }
        return new CacheStrategy(null, ((Response.Builder)localObject).build(), null);
      }
      localObject = this.request.newBuilder();
      if (this.etag != null) {
        ((Request.Builder)localObject).header("If-None-Match", this.etag);
      } else if (this.lastModified != null) {
        ((Request.Builder)localObject).header("If-Modified-Since", this.lastModifiedString);
      } else if (this.servedDate != null) {
        ((Request.Builder)localObject).header("If-Modified-Since", this.servedDateString);
      }
      localObject = ((Request.Builder)localObject).build();
      if (hasConditions((Request)localObject)) {
        return new CacheStrategy((Request)localObject, this.cacheResponse, null);
      }
      return new CacheStrategy((Request)localObject, null, null);
    }
    
    private static boolean hasConditions(Request paramRequest)
    {
      return (paramRequest.header("If-Modified-Since") != null) || (paramRequest.header("If-None-Match") != null);
    }
    
    private boolean isFreshnessLifetimeHeuristic()
    {
      return (this.cacheResponse.cacheControl().maxAgeSeconds() == -1) && (this.expires == null);
    }
    
    public CacheStrategy get()
    {
      CacheStrategy localCacheStrategy = getCandidate();
      if ((localCacheStrategy.networkRequest != null) && (this.request.cacheControl().onlyIfCached())) {
        return new CacheStrategy(null, null, null);
      }
      return localCacheStrategy;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.CacheStrategy
 * JD-Core Version:    0.7.0.1
 */