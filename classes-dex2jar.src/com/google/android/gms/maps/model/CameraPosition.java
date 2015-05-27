package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.dy;
import o.dz;
import o.ห.ˊ;
import o.ﺟ;
import o.ﺟ.if;
import o.ﺧ;

public final class CameraPosition
  implements SafeParcelable
{
  public static final dy CREATOR = new dy();
  private final int BH;
  public final LatLng IF;
  public final float IG;
  public final float IH;
  public final float II;
  
  public CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    ﺧ.ʼ(paramLatLng, "null camera target");
    boolean bool;
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F)) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˏ(bool, "Tilt needs to be between 0 and 90 inclusive");
    this.BH = paramInt;
    this.IF = paramLatLng;
    this.IG = paramFloat1;
    this.IH = (0.0F + paramFloat2);
    if (paramFloat3 <= 0.0D) {
      paramFloat3 = paramFloat3 % 360.0F + 360.0F;
    }
    this.II = (paramFloat3 % 360.0F);
  }
  
  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }
  
  public static CameraPosition ˎ(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    paramContext = paramContext.getResources().obtainAttributes(paramAttributeSet, ห.ˊ.MapAttrs);
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (paramContext.hasValue(ห.ˊ.MapAttrs_cameraTargetLat)) {
      f1 = paramContext.getFloat(ห.ˊ.MapAttrs_cameraTargetLat, 0.0F);
    }
    if (paramContext.hasValue(ห.ˊ.MapAttrs_cameraTargetLng)) {
      f2 = paramContext.getFloat(ห.ˊ.MapAttrs_cameraTargetLng, 0.0F);
    }
    paramAttributeSet = new LatLng(f1, f2);
    if localif = Ὺ();
    localif.ʽ(paramAttributeSet);
    if (paramContext.hasValue(ห.ˊ.MapAttrs_cameraZoom)) {
      localif.ᴵ(paramContext.getFloat(ห.ˊ.MapAttrs_cameraZoom, 0.0F));
    }
    if (paramContext.hasValue(ห.ˊ.MapAttrs_cameraBearing)) {
      localif.ᵔ(paramContext.getFloat(ห.ˊ.MapAttrs_cameraBearing, 0.0F));
    }
    if (paramContext.hasValue(ห.ˊ.MapAttrs_cameraTilt)) {
      localif.ᵎ(paramContext.getFloat(ห.ˊ.MapAttrs_cameraTilt, 0.0F));
    }
    return localif.Ύ();
  }
  
  public static if Ὺ()
  {
    return new if();
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
    if (!(paramObject instanceof CameraPosition)) {
      return false;
    }
    paramObject = (CameraPosition)paramObject;
    return (this.IF.equals(paramObject.IF)) && (Float.floatToIntBits(this.IG) == Float.floatToIntBits(paramObject.IG)) && (Float.floatToIntBits(this.IH) == Float.floatToIntBits(paramObject.IH)) && (Float.floatToIntBits(this.II) == Float.floatToIntBits(paramObject.II));
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { this.IF, Float.valueOf(this.IG), Float.valueOf(this.IH), Float.valueOf(this.II) });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("target", this.IF).ˊ("zoom", Float.valueOf(this.IG)).ˊ("tilt", Float.valueOf(this.IH)).ˊ("bearing", Float.valueOf(this.II)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      dz.ˊ(this, paramParcel, paramInt);
      return;
    }
    dy.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public static final class if
  {
    private LatLng IJ;
    private float IK;
    private float IL;
    private float IM;
    
    public if ʽ(LatLng paramLatLng)
    {
      this.IJ = paramLatLng;
      return this;
    }
    
    public if ᴵ(float paramFloat)
    {
      this.IK = paramFloat;
      return this;
    }
    
    public if ᵎ(float paramFloat)
    {
      this.IL = paramFloat;
      return this;
    }
    
    public if ᵔ(float paramFloat)
    {
      this.IM = paramFloat;
      return this;
    }
    
    public CameraPosition Ύ()
    {
      return new CameraPosition(this.IJ, this.IK, this.IL, this.IM);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * JD-Core Version:    0.7.0.1
 */