package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Set;
import o.Ⅱ;
import o.בֿ;

public class zzc
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzc> CREATOR = new Ⅱ();
  public final int BH;
  public final IBinder DF;
  public final Scope[] DI;
  
  public zzc(int paramInt, IBinder paramIBinder, Scope[] paramArrayOfScope)
  {
    this.BH = paramInt;
    this.DF = paramIBinder;
    this.DI = paramArrayOfScope;
  }
  
  public zzc(בֿ paramבֿ, Set<Scope> paramSet)
  {
    this(1, paramבֿ.asBinder(), (Scope[])paramSet.toArray(new Scope[paramSet.size()]));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Ⅱ.ˊ(this, paramParcel, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.zzc
 * JD-Core Version:    0.7.0.1
 */