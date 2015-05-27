package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.bf;
import o.bf.if;
import o.bg;
import o.bg.if;
import o.z;

public class zzpi
  implements SafeParcelable
{
  public static final z CREATOR = new z();
  private final int BH;
  public PendingIntent BJ;
  public int Gr;
  public zzpg Gs;
  bf Gt;
  bg Gu;
  
  public zzpi(int paramInt1, int paramInt2, zzpg paramzzpg, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2)
  {
    this.BH = paramInt1;
    this.Gr = paramInt2;
    this.Gs = paramzzpg;
    if (paramIBinder1 == null) {
      paramzzpg = null;
    } else {
      paramzzpg = bf.if.ˌ(paramIBinder1);
    }
    this.Gt = paramzzpg;
    this.BJ = paramPendingIntent;
    if (paramIBinder2 == null) {
      paramzzpg = null;
    } else {
      paramzzpg = bg.if.ˍ(paramIBinder2);
    }
    this.Gu = paramzzpg;
  }
  
  public static zzpi ˊ(bg parambg)
  {
    return new zzpi(1, 2, null, null, null, parambg.asBinder());
  }
  
  public static zzpi ˋ(zzpg paramzzpg, bf parambf)
  {
    return new zzpi(1, 1, paramzzpg, parambf.asBinder(), null, null);
  }
  
  public static zzpi ˋ(bf parambf)
  {
    return new zzpi(1, 2, null, parambf.asBinder(), null, null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public IBinder ｓ()
  {
    if (this.Gt == null) {
      return null;
    }
    return this.Gt.asBinder();
  }
  
  public IBinder ｦ()
  {
    if (this.Gu == null) {
      return null;
    }
    return this.Gu.asBinder();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzpi
 * JD-Core Version:    0.7.0.1
 */