package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import o.ch;
import o.em;
import o.en;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final em CREATOR = new em();
  private final int BH;
  private float IS = 0.0F;
  private boolean IT = true;
  private float IW = 10.0F;
  private final List<LatLng> Jp;
  private boolean Jr = false;
  private int ϊ = -16777216;
  
  public PolylineOptions()
  {
    this.BH = 1;
    this.Jp = new ArrayList();
  }
  
  public PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.BH = paramInt1;
    this.Jp = paramList;
    this.IW = paramFloat1;
    this.ϊ = paramInt2;
    this.IS = paramFloat2;
    this.IT = paramBoolean1;
    this.Jr = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getColor()
  {
    return this.ϊ;
  }
  
  public float getWidth()
  {
    return this.IW;
  }
  
  public boolean isVisible()
  {
    return this.IT;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      en.ˊ(this, paramParcel, paramInt);
      return;
    }
    em.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public float っ()
  {
    return this.IS;
  }
  
  public List<LatLng> ﭖ()
  {
    return this.Jp;
  }
  
  public boolean ﭴ()
  {
    return this.Jr;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * JD-Core Version:    0.7.0.1
 */