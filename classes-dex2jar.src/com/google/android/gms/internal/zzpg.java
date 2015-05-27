package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
import o.y;
import o.ﺟ;

public class zzpg
  implements SafeParcelable
{
  public static final y CREATOR = new y();
  public static final List<zzox> Gl = ;
  private final int BH;
  public LocationRequest Gm;
  public boolean Gn;
  public boolean Go;
  public boolean Gp;
  public List<zzox> Gq;
  public final String mTag;
  
  public zzpg(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<zzox> paramList, String paramString)
  {
    this.BH = paramInt;
    this.Gm = paramLocationRequest;
    this.Gn = paramBoolean1;
    this.Go = paramBoolean2;
    this.Gp = paramBoolean3;
    this.Gq = paramList;
    this.mTag = paramString;
  }
  
  private zzpg(String paramString, LocationRequest paramLocationRequest)
  {
    this(1, paramLocationRequest, false, true, true, Gl, paramString);
  }
  
  public static zzpg ˊ(LocationRequest paramLocationRequest)
  {
    return ˊ(null, paramLocationRequest);
  }
  
  public static zzpg ˊ(String paramString, LocationRequest paramLocationRequest)
  {
    return new zzpg(paramString, paramLocationRequest);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzpg)) {
      return false;
    }
    paramObject = (zzpg)paramObject;
    return (ﺟ.equal(this.Gm, paramObject.Gm)) && (this.Gn == paramObject.Gn) && (this.Go == paramObject.Go) && (this.Gp == paramObject.Gp) && (ﺟ.equal(this.Gq, paramObject.Gq));
  }
  
  public int hashCode()
  {
    return this.Gm.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.Gm.toString());
    localStringBuilder.append(" requestNlpDebugInfo=");
    localStringBuilder.append(this.Gn);
    localStringBuilder.append(" restorePendingIntentListeners=");
    localStringBuilder.append(this.Go);
    localStringBuilder.append(" triggerUpdate=");
    localStringBuilder.append(this.Gp);
    localStringBuilder.append(" clients=");
    localStringBuilder.append(this.Gq);
    if (this.mTag != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(this.mTag);
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzpg
 * JD-Core Version:    0.7.0.1
 */