package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HeaderParser;
import java.util.concurrent.TimeUnit;

public final class CacheControl
{
  public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(2147483647, TimeUnit.SECONDS).build();
  public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
  String headerValue;
  private final boolean isPrivate;
  private final boolean isPublic;
  private final int maxAgeSeconds;
  private final int maxStaleSeconds;
  private final int minFreshSeconds;
  private final boolean mustRevalidate;
  private final boolean noCache;
  private final boolean noStore;
  private final boolean noTransform;
  private final boolean onlyIfCached;
  private final int sMaxAgeSeconds;
  
  private CacheControl(Builder paramBuilder)
  {
    this.noCache = paramBuilder.noCache;
    this.noStore = paramBuilder.noStore;
    this.maxAgeSeconds = paramBuilder.maxAgeSeconds;
    this.sMaxAgeSeconds = -1;
    this.isPrivate = false;
    this.isPublic = false;
    this.mustRevalidate = false;
    this.maxStaleSeconds = paramBuilder.maxStaleSeconds;
    this.minFreshSeconds = paramBuilder.minFreshSeconds;
    this.onlyIfCached = paramBuilder.onlyIfCached;
    this.noTransform = paramBuilder.noTransform;
  }
  
  private CacheControl(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, boolean paramBoolean7, String paramString)
  {
    this.noCache = paramBoolean1;
    this.noStore = paramBoolean2;
    this.maxAgeSeconds = paramInt1;
    this.sMaxAgeSeconds = paramInt2;
    this.isPrivate = paramBoolean3;
    this.isPublic = paramBoolean4;
    this.mustRevalidate = paramBoolean5;
    this.maxStaleSeconds = paramInt3;
    this.minFreshSeconds = paramInt4;
    this.onlyIfCached = paramBoolean6;
    this.noTransform = paramBoolean7;
    this.headerValue = paramString;
  }
  
  private String headerValue()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.noCache) {
      localStringBuilder.append("no-cache, ");
    }
    if (this.noStore) {
      localStringBuilder.append("no-store, ");
    }
    if (this.maxAgeSeconds != -1) {
      localStringBuilder.append("max-age=").append(this.maxAgeSeconds).append(", ");
    }
    if (this.sMaxAgeSeconds != -1) {
      localStringBuilder.append("s-maxage=").append(this.sMaxAgeSeconds).append(", ");
    }
    if (this.isPrivate) {
      localStringBuilder.append("private, ");
    }
    if (this.isPublic) {
      localStringBuilder.append("public, ");
    }
    if (this.mustRevalidate) {
      localStringBuilder.append("must-revalidate, ");
    }
    if (this.maxStaleSeconds != -1) {
      localStringBuilder.append("max-stale=").append(this.maxStaleSeconds).append(", ");
    }
    if (this.minFreshSeconds != -1) {
      localStringBuilder.append("min-fresh=").append(this.minFreshSeconds).append(", ");
    }
    if (this.onlyIfCached) {
      localStringBuilder.append("only-if-cached, ");
    }
    if (this.noTransform) {
      localStringBuilder.append("no-transform, ");
    }
    if (localStringBuilder.length() == 0) {
      return "";
    }
    localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    return localStringBuilder.toString();
  }
  
  public static CacheControl parse(Headers paramHeaders)
  {
    boolean bool7 = false;
    boolean bool6 = false;
    int i1 = -1;
    int n = -1;
    boolean bool5 = false;
    boolean bool4 = false;
    boolean bool3 = false;
    int m = -1;
    int k = -1;
    boolean bool1 = false;
    boolean bool2 = false;
    int i = 1;
    Object localObject1 = null;
    int i2 = 0;
    int i8 = paramHeaders.size();
    while (i2 < i8)
    {
      String str2 = paramHeaders.name(i2);
      String str1 = paramHeaders.value(i2);
      boolean bool8;
      boolean bool9;
      int j;
      int i3;
      boolean bool10;
      boolean bool11;
      boolean bool12;
      int i4;
      int i5;
      boolean bool13;
      boolean bool14;
      int i7;
      Object localObject2;
      if (str2.equalsIgnoreCase("Cache-Control"))
      {
        if (localObject1 != null) {
          i = 0;
        } else {
          localObject1 = str1;
        }
      }
      else
      {
        bool8 = bool7;
        bool9 = bool6;
        j = i1;
        i3 = n;
        bool10 = bool5;
        bool11 = bool4;
        bool12 = bool3;
        i4 = m;
        i5 = k;
        bool13 = bool1;
        bool14 = bool2;
        i7 = i;
        localObject2 = localObject1;
        if (!str2.equalsIgnoreCase("Pragma")) {
          break label1039;
        }
        i = 0;
      }
      for (int i6 = 0;; i6 = j)
      {
        bool8 = bool7;
        bool9 = bool6;
        j = i1;
        i3 = n;
        bool10 = bool5;
        bool11 = bool4;
        bool12 = bool3;
        i4 = m;
        i5 = k;
        bool13 = bool1;
        bool14 = bool2;
        i7 = i;
        localObject2 = localObject1;
        if (i6 >= str1.length()) {
          break;
        }
        j = HeaderParser.skipUntil(str1, i6, "=,;");
        str2 = str1.substring(i6, j).trim();
        if ((j == str1.length()) || (str1.charAt(j) == ',') || (str1.charAt(j) == ';'))
        {
          j += 1;
          localObject2 = null;
        }
        else
        {
          i3 = HeaderParser.skipWhitespace(str1, j + 1);
          if ((i3 < str1.length()) && (str1.charAt(i3) == '"'))
          {
            j = i3 + 1;
            i3 = HeaderParser.skipUntil(str1, j, "\"");
            localObject2 = str1.substring(j, i3);
            j = i3 + 1;
          }
          else
          {
            j = HeaderParser.skipUntil(str1, i3, ",;");
            localObject2 = str1.substring(i3, j).trim();
          }
        }
        if ("no-cache".equalsIgnoreCase(str2))
        {
          bool8 = true;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("no-store".equalsIgnoreCase(str2))
        {
          bool9 = true;
          bool8 = bool7;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("max-age".equalsIgnoreCase(str2))
        {
          i3 = HeaderParser.parseSeconds((String)localObject2, -1);
          bool8 = bool7;
          bool9 = bool6;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("s-maxage".equalsIgnoreCase(str2))
        {
          i4 = HeaderParser.parseSeconds((String)localObject2, -1);
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("private".equalsIgnoreCase(str2))
        {
          bool10 = true;
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("public".equalsIgnoreCase(str2))
        {
          bool11 = true;
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("must-revalidate".equalsIgnoreCase(str2))
        {
          bool12 = true;
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          i5 = m;
          i6 = k;
          bool13 = bool1;
        }
        else if ("max-stale".equalsIgnoreCase(str2))
        {
          i5 = HeaderParser.parseSeconds((String)localObject2, 2147483647);
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i6 = k;
          bool13 = bool1;
        }
        else if ("min-fresh".equalsIgnoreCase(str2))
        {
          i6 = HeaderParser.parseSeconds((String)localObject2, -1);
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          bool13 = bool1;
        }
        else if ("only-if-cached".equalsIgnoreCase(str2))
        {
          bool13 = true;
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
        }
        else
        {
          bool8 = bool7;
          bool9 = bool6;
          i3 = i1;
          i4 = n;
          bool10 = bool5;
          bool11 = bool4;
          bool12 = bool3;
          i5 = m;
          i6 = k;
          bool13 = bool1;
          if ("no-transform".equalsIgnoreCase(str2))
          {
            bool2 = true;
            bool13 = bool1;
            i6 = k;
            i5 = m;
            bool12 = bool3;
            bool11 = bool4;
            bool10 = bool5;
            i4 = n;
            i3 = i1;
            bool9 = bool6;
            bool8 = bool7;
          }
        }
        bool7 = bool8;
        bool6 = bool9;
        i1 = i3;
        n = i4;
        bool5 = bool10;
        bool4 = bool11;
        bool3 = bool12;
        m = i5;
        k = i6;
        bool1 = bool13;
      }
      label1039:
      i2 += 1;
      bool7 = bool8;
      bool6 = bool9;
      i1 = j;
      n = i3;
      bool5 = bool10;
      bool4 = bool11;
      bool3 = bool12;
      m = i4;
      k = i5;
      bool1 = bool13;
      bool2 = bool14;
      i = i7;
      localObject1 = localObject2;
    }
    if (i == 0) {
      localObject1 = null;
    }
    return new CacheControl(bool7, bool6, i1, n, bool5, bool4, bool3, m, k, bool1, bool2, localObject1);
  }
  
  public boolean isPrivate()
  {
    return this.isPrivate;
  }
  
  public boolean isPublic()
  {
    return this.isPublic;
  }
  
  public int maxAgeSeconds()
  {
    return this.maxAgeSeconds;
  }
  
  public int maxStaleSeconds()
  {
    return this.maxStaleSeconds;
  }
  
  public int minFreshSeconds()
  {
    return this.minFreshSeconds;
  }
  
  public boolean mustRevalidate()
  {
    return this.mustRevalidate;
  }
  
  public boolean noCache()
  {
    return this.noCache;
  }
  
  public boolean noStore()
  {
    return this.noStore;
  }
  
  public boolean noTransform()
  {
    return this.noTransform;
  }
  
  public boolean onlyIfCached()
  {
    return this.onlyIfCached;
  }
  
  public int sMaxAgeSeconds()
  {
    return this.sMaxAgeSeconds;
  }
  
  public String toString()
  {
    String str = this.headerValue;
    if (str != null) {
      return str;
    }
    str = headerValue();
    this.headerValue = str;
    return str;
  }
  
  public static final class Builder
  {
    int maxAgeSeconds = -1;
    int maxStaleSeconds = -1;
    int minFreshSeconds = -1;
    boolean noCache;
    boolean noStore;
    boolean noTransform;
    boolean onlyIfCached;
    
    public CacheControl build()
    {
      return new CacheControl(this, null);
    }
    
    public Builder maxAge(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("maxAge < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {
        paramInt = 2147483647;
      } else {
        paramInt = (int)l;
      }
      this.maxAgeSeconds = paramInt;
      return this;
    }
    
    public Builder maxStale(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("maxStale < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {
        paramInt = 2147483647;
      } else {
        paramInt = (int)l;
      }
      this.maxStaleSeconds = paramInt;
      return this;
    }
    
    public Builder minFresh(int paramInt, TimeUnit paramTimeUnit)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("minFresh < 0: " + paramInt);
      }
      long l = paramTimeUnit.toSeconds(paramInt);
      if (l > 2147483647L) {
        paramInt = 2147483647;
      } else {
        paramInt = (int)l;
      }
      this.minFreshSeconds = paramInt;
      return this;
    }
    
    public Builder noCache()
    {
      this.noCache = true;
      return this;
    }
    
    public Builder noStore()
    {
      this.noStore = true;
      return this;
    }
    
    public Builder noTransform()
    {
      this.noTransform = true;
      return this;
    }
    
    public Builder onlyIfCached()
    {
      this.onlyIfCached = true;
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.CacheControl
 * JD-Core Version:    0.7.0.1
 */