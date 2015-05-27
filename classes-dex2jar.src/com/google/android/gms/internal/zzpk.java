package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
import o.aa;

public class zzpk
  implements SafeParcelable
{
  public static final aa CREATOR = new aa();
  private final int BH;
  private final float GA;
  private final int GB;
  private final int GC;
  private final int GD;
  private final String Gv;
  private final long Gw;
  private final short Gx;
  private final double Gy;
  private final double Gz;
  
  public zzpk(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt3, int paramInt4)
  {
    ᵗ(paramString);
    ﾞ(paramFloat);
    ˊ(paramDouble1, paramDouble2);
    paramInt2 = 一(paramInt2);
    this.BH = paramInt1;
    this.Gx = paramShort;
    this.Gv = paramString;
    this.Gy = paramDouble1;
    this.Gz = paramDouble2;
    this.GA = paramFloat;
    this.Gw = paramLong;
    this.GB = paramInt2;
    this.GC = paramInt3;
    this.GD = paramInt4;
  }
  
  private static void ˊ(double paramDouble1, double paramDouble2)
  {
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D)) {
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    }
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D)) {
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    }
  }
  
  private static void ᵗ(String paramString)
  {
    if ((paramString == null) || (paramString.length() > 100)) {
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    }
  }
  
  private static int 一(int paramInt)
  {
    int i = paramInt & 0x7;
    if (i == 0) {
      throw new IllegalArgumentException("No supported transition specified: " + paramInt);
    }
    return i;
  }
  
  private static String גּ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      return "CIRCLE";
    }
    return null;
  }
  
  private static void ﾞ(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    }
  }
  
  public int describeContents()
  {
    aa localaa = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (!(paramObject instanceof zzpk)) {
      return false;
    }
    paramObject = (zzpk)paramObject;
    if (this.GA != paramObject.GA) {
      return false;
    }
    if (this.Gy != paramObject.Gy) {
      return false;
    }
    if (this.Gz != paramObject.Gz) {
      return false;
    }
    return this.Gx == paramObject.Gx;
  }
  
  public double getLatitude()
  {
    return this.Gy;
  }
  
  public double getLongitude()
  {
    return this.Gz;
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(this.Gy);
    int i = (int)(l >>> 32 ^ l);
    l = Double.doubleToLongBits(this.Gz);
    return ((((i + 31) * 31 + (int)(l >>> 32 ^ l)) * 31 + Float.floatToIntBits(this.GA)) * 31 + this.Gx) * 31 + this.GB;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[] { גּ(this.Gx), this.Gv, Integer.valueOf(this.GB), Double.valueOf(this.Gy), Double.valueOf(this.Gz), Float.valueOf(this.GA), Integer.valueOf(this.GC / 1000), Integer.valueOf(this.GD), Long.valueOf(this.Gw) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aa localaa = CREATOR;
    aa.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public short ｳ()
  {
    return this.Gx;
  }
  
  public float ｷ()
  {
    return this.GA;
  }
  
  public String ｸ()
  {
    return this.Gv;
  }
  
  public long ｹ()
  {
    return this.Gw;
  }
  
  public int ｽ()
  {
    return this.GB;
  }
  
  public int ﾁ()
  {
    return this.GC;
  }
  
  public int ﾊ()
  {
    return this.GD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzpk
 * JD-Core Version:    0.7.0.1
 */