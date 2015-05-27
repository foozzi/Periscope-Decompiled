package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.dm;

public final class zza
  implements SafeParcelable
{
  public static final dm CREATOR = new dm();
  private final int BH;
  private byte JH;
  private Bundle JI;
  private Bitmap JJ;
  
  public zza(int paramInt, byte paramByte, Bundle paramBundle, Bitmap paramBitmap)
  {
    this.BH = paramInt;
    this.JH = paramByte;
    this.JI = paramBundle;
    this.JJ = paramBitmap;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap()
  {
    return this.JJ;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dm.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public byte ﱟ()
  {
    return this.JH;
  }
  
  public Bundle ﱡ()
  {
    return this.JI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.internal.zza
 * JD-Core Version:    0.7.0.1
 */