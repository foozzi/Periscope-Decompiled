package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import o.cg;
import o.ch;
import o.ey;
import o.ez;
import o.ห.ˊ;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final ey CREATOR = new ey();
  private final int BH;
  private Boolean HW;
  private Boolean HX;
  private int HY = -1;
  private CameraPosition HZ;
  private Boolean Ia;
  private Boolean Ib;
  private Boolean Ic;
  private Boolean Id;
  private Boolean Ie;
  private Boolean If;
  private Boolean Ig;
  private Boolean Ih;
  
  public GoogleMapOptions()
  {
    this.BH = 1;
  }
  
  public GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    this.BH = paramInt1;
    this.HW = cg.ʻ(paramByte1);
    this.HX = cg.ʻ(paramByte2);
    this.HY = paramInt2;
    this.HZ = paramCameraPosition;
    this.Ia = cg.ʻ(paramByte3);
    this.Ib = cg.ʻ(paramByte4);
    this.Ic = cg.ʻ(paramByte5);
    this.Id = cg.ʻ(paramByte6);
    this.Ie = cg.ʻ(paramByte7);
    this.If = cg.ʻ(paramByte8);
    this.Ig = cg.ʻ(paramByte9);
    this.Ih = cg.ʻ(paramByte10);
  }
  
  public static GoogleMapOptions ˋ(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, ห.ˊ.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_mapType)) {
      localGoogleMapOptions.ŗ(localTypedArray.getInt(ห.ˊ.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.ᗮ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.ᴶ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiCompass)) {
      localGoogleMapOptions.ᵀ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.ı(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.ᵋ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.ﾟ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.ᵗ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.ᴸ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_liteMode)) {
      localGoogleMapOptions.ǃ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(ห.ˊ.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.ʲ(localTypedArray.getBoolean(ห.ˊ.MapAttrs_uiMapToolbar, true));
    }
    localGoogleMapOptions.ˊ(CameraPosition.ˎ(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ez.ˊ(this, paramParcel, paramInt);
      return;
    }
    ey.ˊ(this, paramParcel, paramInt);
  }
  
  public GoogleMapOptions ı(boolean paramBoolean)
  {
    this.If = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ŗ(int paramInt)
  {
    this.HY = paramInt;
    return this;
  }
  
  public GoogleMapOptions ǃ(boolean paramBoolean)
  {
    this.Ig = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ʲ(boolean paramBoolean)
  {
    this.Ih = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ˊ(CameraPosition paramCameraPosition)
  {
    this.HZ = paramCameraPosition;
    return this;
  }
  
  public byte Ҭ()
  {
    return cg.ˋ(this.HW);
  }
  
  public byte ӟ()
  {
    return cg.ˋ(this.HX);
  }
  
  public byte Ӵ()
  {
    return cg.ˋ(this.Ia);
  }
  
  public byte Ԇ()
  {
    return cg.ˋ(this.Ib);
  }
  
  public byte Ն()
  {
    return cg.ˋ(this.Ic);
  }
  
  public byte յ()
  {
    return cg.ˋ(this.Id);
  }
  
  public byte ո()
  {
    return cg.ˋ(this.Ie);
  }
  
  public byte ս()
  {
    return cg.ˋ(this.If);
  }
  
  public byte פ()
  {
    return cg.ˋ(this.Ig);
  }
  
  public byte ק()
  {
    return cg.ˋ(this.Ih);
  }
  
  public int ת()
  {
    return this.HY;
  }
  
  public CameraPosition ث()
  {
    return this.HZ;
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public GoogleMapOptions ᗮ(boolean paramBoolean)
  {
    this.HW = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ᴶ(boolean paramBoolean)
  {
    this.HX = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ᴸ(boolean paramBoolean)
  {
    this.Ia = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ᵀ(boolean paramBoolean)
  {
    this.Ib = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ᵋ(boolean paramBoolean)
  {
    this.Ic = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ᵗ(boolean paramBoolean)
  {
    this.Id = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions ﾟ(boolean paramBoolean)
  {
    this.Ie = Boolean.valueOf(paramBoolean);
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * JD-Core Version:    0.7.0.1
 */