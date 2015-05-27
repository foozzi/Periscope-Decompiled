package com.google.android.gms.location;

import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.bh;
import o.ﺟ;

public final class LocationRequest
  implements SafeParcelable
{
  public static final bh CREATOR = new bh();
  private final int BH;
  public long Hk;
  public long Hl;
  public boolean Hm;
  public long Hn;
  public int Ho;
  public float Hp;
  public long Hq;
  public int ﭔ;
  
  public LocationRequest()
  {
    this.BH = 1;
    this.ﭔ = 102;
    this.Hk = 3600000L;
    this.Hl = 600000L;
    this.Hm = false;
    this.Hn = 9223372036854775807L;
    this.Ho = 2147483647;
    this.Hp = 0.0F;
    this.Hq = 0L;
  }
  
  public LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat, long paramLong4)
  {
    this.BH = paramInt1;
    this.ﭔ = paramInt2;
    this.Hk = paramLong1;
    this.Hl = paramLong2;
    this.Hm = paramBoolean;
    this.Hn = paramLong3;
    this.Ho = paramInt3;
    this.Hp = paramFloat;
    this.Hq = paramLong4;
  }
  
  private static void ՙ(float paramFloat)
  {
    if (paramFloat < 0.0F) {
      throw new IllegalArgumentException("invalid displacement: " + paramFloat);
    }
  }
  
  private static void ᐣ(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("invalid interval: " + paramLong);
    }
  }
  
  private static void ﯿ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 100: 
    case 102: 
    case 104: 
    case 105: 
      return;
    }
    throw new IllegalArgumentException("invalid quality: " + paramInt);
  }
  
  public static String ﹹ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 100: 
      return "PRIORITY_HIGH_ACCURACY";
    case 102: 
      return "PRIORITY_BALANCED_POWER_ACCURACY";
    case 104: 
      return "PRIORITY_LOW_POWER";
    case 105: 
      return "PRIORITY_NO_POWER";
    }
    return "???";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof LocationRequest)) {
      return false;
    }
    paramObject = (LocationRequest)paramObject;
    return (this.ﭔ == paramObject.ﭔ) && (this.Hk == paramObject.Hk) && (this.Hl == paramObject.Hl) && (this.Hm == paramObject.Hm) && (this.Hn == paramObject.Hn) && (this.Ho == paramObject.Ho) && (this.Hp == paramObject.Hp);
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Integer.valueOf(this.ﭔ), Long.valueOf(this.Hk), Long.valueOf(this.Hl), Boolean.valueOf(this.Hm), Long.valueOf(this.Hn), Integer.valueOf(this.Ho), Float.valueOf(this.Hp) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Request[").append(ﹹ(this.ﭔ));
    if (this.ﭔ != 105)
    {
      localStringBuilder.append(" requested=");
      localStringBuilder.append(this.Hk + "ms");
    }
    localStringBuilder.append(" fastest=");
    localStringBuilder.append(this.Hl + "ms");
    if (this.Hq > this.Hk)
    {
      localStringBuilder.append(" maxWait=");
      localStringBuilder.append(this.Hq + "ms");
    }
    if (this.Hn != 9223372036854775807L)
    {
      long l1 = this.Hn;
      long l2 = SystemClock.elapsedRealtime();
      localStringBuilder.append(" expireIn=");
      localStringBuilder.append(l1 - l2 + "ms");
    }
    if (this.Ho != 2147483647) {
      localStringBuilder.append(" num=").append(this.Ho);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bh.ˊ(this, paramParcel, paramInt);
  }
  
  public LocationRequest ʹ(float paramFloat)
  {
    ՙ(paramFloat);
    this.Hp = paramFloat;
    return this;
  }
  
  public LocationRequest ۥ(long paramLong)
  {
    ᐣ(paramLong);
    this.Hk = paramLong;
    if (!this.Hm) {
      this.Hl = ((this.Hk / 6.0D));
    }
    return this;
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public LocationRequest ᐠ(long paramLong)
  {
    ᐣ(paramLong);
    this.Hm = true;
    this.Hl = paramLong;
    return this;
  }
  
  public LocationRequest ﯧ(int paramInt)
  {
    ﯿ(paramInt);
    this.ﭔ = paramInt;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * JD-Core Version:    0.7.0.1
 */