package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.ea;
import o.eb;

public final class CircleOptions
  implements SafeParcelable
{
  public static final ea CREATOR = new ea();
  private final int BH;
  private LatLng IN = null;
  private double IO = 0.0D;
  private float IP = 10.0F;
  private int IQ = -16777216;
  private int IR = 0;
  private float IS = 0.0F;
  private boolean IT = true;
  
  public CircleOptions()
  {
    this.BH = 1;
  }
  
  public CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    this.BH = paramInt1;
    this.IN = paramLatLng;
    this.IO = paramDouble;
    this.IP = paramFloat1;
    this.IQ = paramInt2;
    this.IR = paramInt3;
    this.IS = paramFloat2;
    this.IT = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getStrokeWidth()
  {
    return this.IP;
  }
  
  public boolean isVisible()
  {
    return this.IT;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      eb.ˊ(this, paramParcel, paramInt);
      return;
    }
    ea.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public LatLng K()
  {
    return this.IN;
  }
  
  public double Ⅽ()
  {
    return this.IO;
  }
  
  public int Ↄ()
  {
    return this.IQ;
  }
  
  public int く()
  {
    return this.IR;
  }
  
  public float っ()
  {
    return this.IS;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * JD-Core Version:    0.7.0.1
 */