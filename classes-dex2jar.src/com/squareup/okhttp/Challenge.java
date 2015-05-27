package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;

public final class Challenge
{
  private final String realm;
  private final String scheme;
  
  public Challenge(String paramString1, String paramString2)
  {
    this.scheme = paramString1;
    this.realm = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof Challenge)) && (Util.equal(this.scheme, ((Challenge)paramObject).scheme)) && (Util.equal(this.realm, ((Challenge)paramObject).realm));
  }
  
  public String getRealm()
  {
    return this.realm;
  }
  
  public String getScheme()
  {
    return this.scheme;
  }
  
  public int hashCode()
  {
    int i;
    if (this.realm != null) {
      i = this.realm.hashCode();
    } else {
      i = 0;
    }
    int j;
    if (this.scheme != null) {
      j = this.scheme.hashCode();
    } else {
      j = 0;
    }
    return (i + 899) * 31 + j;
  }
  
  public String toString()
  {
    return this.scheme + " realm=\"" + this.realm + "\"";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Challenge
 * JD-Core Version:    0.7.0.1
 */