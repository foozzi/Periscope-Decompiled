package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ọ;
import o.בֿ;
import o.בֿ.if;

public class zzaa
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzaa> CREATOR = new ọ();
  public final int BH;
  public IBinder DF;
  private boolean DG;
  private boolean Dc;
  private ConnectionResult Dy;
  
  public zzaa(int paramInt)
  {
    this(new ConnectionResult(paramInt, null));
  }
  
  public zzaa(int paramInt, IBinder paramIBinder, ConnectionResult paramConnectionResult, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.BH = paramInt;
    this.DF = paramIBinder;
    this.Dy = paramConnectionResult;
    this.Dc = paramBoolean1;
    this.DG = paramBoolean2;
  }
  
  public zzaa(ConnectionResult paramConnectionResult)
  {
    this(1, null, paramConnectionResult, false, false);
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
    if (!(paramObject instanceof zzaa)) {
      return false;
    }
    paramObject = (zzaa)paramObject;
    return (this.Dy.equals(paramObject.Dy)) && (ᒴ().equals(paramObject.ᒴ()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ọ.ˊ(this, paramParcel, paramInt);
  }
  
  public בֿ ᒴ()
  {
    return בֿ.if.ˎ(this.DF);
  }
  
  public ConnectionResult ᒵ()
  {
    return this.Dy;
  }
  
  public boolean ᒸ()
  {
    return this.Dc;
  }
  
  public boolean ᒹ()
  {
    return this.DG;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.zzaa
 * JD-Core Version:    0.7.0.1
 */