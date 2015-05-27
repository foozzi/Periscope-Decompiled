package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.dn;

public final class zzc
  implements SafeParcelable
{
  public static final dn CREATOR = new dn();
  private final int BH;
  private Bundle JI;
  private int type;
  
  public zzc(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    this.BH = paramInt1;
    this.type = paramInt2;
    this.JI = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dn.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public Bundle ﱡ()
  {
    return this.JI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzc
 * JD-Core Version:    0.7.0.1
 */