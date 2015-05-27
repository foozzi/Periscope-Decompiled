package com.squareup.okhttp.internal.spdy;

import o.uj;

public final class Header
{
  public static final uj RESPONSE_STATUS = uj.ﺗ(":status");
  public static final uj TARGET_AUTHORITY = uj.ﺗ(":authority");
  public static final uj TARGET_HOST = uj.ﺗ(":host");
  public static final uj TARGET_METHOD = uj.ﺗ(":method");
  public static final uj TARGET_PATH = uj.ﺗ(":path");
  public static final uj TARGET_SCHEME = uj.ﺗ(":scheme");
  public static final uj VERSION = uj.ﺗ(":version");
  final int hpackSize;
  public final uj name;
  public final uj value;
  
  public Header(String paramString1, String paramString2)
  {
    this(uj.ﺗ(paramString1), uj.ﺗ(paramString2));
  }
  
  public Header(uj paramuj, String paramString)
  {
    this(paramuj, uj.ﺗ(paramString));
  }
  
  public Header(uj paramuj1, uj paramuj2)
  {
    this.name = paramuj1;
    this.value = paramuj2;
    this.hpackSize = (paramuj1.size() + 32 + paramuj2.size());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Header))
    {
      paramObject = (Header)paramObject;
      return (this.name.equals(paramObject.name)) && (this.value.equals(paramObject.value));
    }
    return false;
  }
  
  public int hashCode()
  {
    return (this.name.hashCode() + 527) * 31 + this.value.hashCode();
  }
  
  public String toString()
  {
    return String.format("%s: %s", new Object[] { this.name.ei(), this.value.ei() });
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.Header
 * JD-Core Version:    0.7.0.1
 */