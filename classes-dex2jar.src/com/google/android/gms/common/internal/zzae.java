package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ℷ;
import o.בֿ;

public class zzae
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzae> CREATOR = new ℷ();
  public final int BH;
  public final IBinder DF;
  private final int DH;
  private final Scope[] DI;
  private final Bundle DJ;
  private final String DK;
  
  public zzae(int paramInt1, int paramInt2, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, String paramString)
  {
    this.BH = paramInt1;
    this.DH = paramInt2;
    this.DF = paramIBinder;
    this.DI = paramArrayOfScope;
    this.DJ = paramBundle;
    this.DK = paramString;
  }
  
  public zzae(בֿ paramבֿ, Scope[] paramArrayOfScope, String paramString, Bundle paramBundle)
  {
    this(1, 7095000, paramבֿ, paramArrayOfScope, paramBundle, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCallingPackage()
  {
    return this.DK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ℷ.ˊ(this, paramParcel, paramInt);
  }
  
  public int ᓙ()
  {
    return this.DH;
  }
  
  public Scope[] ᔬ()
  {
    return this.DI;
  }
  
  public Bundle ᖧ()
  {
    return this.DJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.zzae
 * JD-Core Version:    0.7.0.1
 */