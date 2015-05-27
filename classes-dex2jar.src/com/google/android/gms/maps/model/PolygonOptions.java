package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import o.ch;
import o.ek;
import o.el;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final ek CREATOR = new ek();
  private final int BH;
  private float IP = 10.0F;
  private int IQ = -16777216;
  private int IR = 0;
  private float IS = 0.0F;
  private boolean IT = true;
  private final List<LatLng> Jp;
  private final List<List<LatLng>> Jq;
  private boolean Jr = false;
  
  public PolygonOptions()
  {
    this.BH = 1;
    this.Jp = new ArrayList();
    this.Jq = new ArrayList();
  }
  
  public PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.BH = paramInt1;
    this.Jp = paramList;
    this.Jq = paramList1;
    this.IP = paramFloat1;
    this.IQ = paramInt2;
    this.IR = paramInt3;
    this.IS = paramFloat2;
    this.IT = paramBoolean1;
    this.Jr = paramBoolean2;
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
      el.ˊ(this, paramParcel, paramInt);
      return;
    }
    ek.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
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
  
  public List ףּ()
  {
    return this.Jq;
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
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * JD-Core Version:    0.7.0.1
 */