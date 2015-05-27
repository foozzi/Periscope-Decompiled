package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.es;
import o.et;

public final class Tile
  implements SafeParcelable
{
  public static final es CREATOR = new es();
  private final int BH;
  public final byte[] fw;
  public final int height;
  public final int width;
  
  public Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    this.BH = paramInt1;
    this.width = paramInt2;
    this.height = paramInt3;
    this.fw = paramArrayOfByte;
  }
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this(1, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      et.ˊ(this, paramParcel, paramInt);
      return;
    }
    es.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * JD-Core Version:    0.7.0.1
 */