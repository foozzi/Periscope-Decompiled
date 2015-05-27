package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ﾒ;

public final class zzlm
  implements SafeParcelable
{
  public static final ﾒ CREATOR = new ﾒ();
  public final int BH;
  private final long Fo;
  private String Fp;
  private final String Fq;
  private final String Fr;
  private final String Fs;
  private final String Ft;
  private final String Fu;
  private final long Fv;
  private long Fw;
  
  public zzlm(int paramInt, long paramLong1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2)
  {
    this.BH = paramInt;
    this.Fo = paramLong1;
    this.Fp = paramString1;
    this.Fq = paramString2;
    this.Fr = paramString3;
    this.Fs = paramString4;
    this.Ft = paramString5;
    this.Fw = -1L;
    this.Fu = paramString6;
    this.Fv = paramLong2;
  }
  
  public zzlm(long paramLong1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, long paramLong2)
  {
    this(1, paramLong1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramLong2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getTimeMillis()
  {
    return this.Fo;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ﾒ.ˊ(this, paramParcel, paramInt);
  }
  
  public String 乀()
  {
    return this.Fp;
  }
  
  public String 宀()
  {
    return this.Fq;
  }
  
  public String ﬥ()
  {
    return this.Fr;
  }
  
  public String צּ()
  {
    return this.Fs;
  }
  
  public String בֿ()
  {
    return this.Ft;
  }
  
  public String ﭒ()
  {
    return this.Fu;
  }
  
  public long ﭞ()
  {
    return this.Fv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzlm
 * JD-Core Version:    0.7.0.1
 */