package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ch;
import o.df;
import o.ei;
import o.ej;
import o.ﱟ;
import o.ﱟ.if;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final ei CREATOR = new ei();
  private final int BH;
  private boolean IT = true;
  private LatLng Iu;
  private float Ja = 0.5F;
  private float Jb = 1.0F;
  private String Jh;
  private String Ji;
  private df Jj;
  private boolean Jk;
  private boolean Jl = false;
  private float Jm = 0.0F;
  private float Jn = 0.5F;
  private float Jo = 0.0F;
  private float mAlpha = 1.0F;
  
  public MarkerOptions()
  {
    this.BH = 1;
  }
  
  public MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.BH = paramInt;
    this.Iu = paramLatLng;
    this.Jh = paramString1;
    this.Ji = paramString2;
    if (paramIBinder == null) {
      paramLatLng = null;
    } else {
      paramLatLng = new df(ﱟ.if.ʼ(paramIBinder));
    }
    this.Jj = paramLatLng;
    this.Ja = paramFloat1;
    this.Jb = paramFloat2;
    this.Jk = paramBoolean1;
    this.IT = paramBoolean2;
    this.Jl = paramBoolean3;
    this.Jm = paramFloat3;
    this.Jn = paramFloat4;
    this.Jo = paramFloat5;
    this.mAlpha = paramFloat6;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getAlpha()
  {
    return this.mAlpha;
  }
  
  public float getRotation()
  {
    return this.Jm;
  }
  
  public String getTitle()
  {
    return this.Jh;
  }
  
  public boolean isVisible()
  {
    return this.IT;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (ch.ᗀ())
    {
      ej.ˊ(this, paramParcel, paramInt);
      return;
    }
    ei.ˊ(this, paramParcel, paramInt);
  }
  
  public MarkerOptions ˊ(df paramdf)
  {
    this.Jj = paramdf;
    return this;
  }
  
  public MarkerOptions ͺ(LatLng paramLatLng)
  {
    this.Iu = paramLatLng;
    return this;
  }
  
  public LatLng ے()
  {
    return this.Iu;
  }
  
  public int ถ()
  {
    return this.BH;
  }
  
  public float ヮ()
  {
    return this.Ja;
  }
  
  public float ヶ()
  {
    return this.Jb;
  }
  
  public IBinder 丫()
  {
    if (this.Jj == null) {
      return null;
    }
    return this.Jj.п().asBinder();
  }
  
  public String 乁()
  {
    return this.Ji;
  }
  
  public boolean 爫()
  {
    return this.Jk;
  }
  
  public boolean ﬤ()
  {
    return this.Jl;
  }
  
  public float טּ()
  {
    return this.Jn;
  }
  
  public float סּ()
  {
    return this.Jo;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * JD-Core Version:    0.7.0.1
 */