package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ẓ;
import o.ッ;
import o.בֿ;
import o.בֿ.if;

public class zzi
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzi> CREATOR = new ッ();
  public final int DR;
  public int DS;
  public String DT;
  public IBinder DU;
  public Scope[] DV;
  public Bundle DW;
  public Account DX;
  public final int version;
  
  public zzi(int paramInt)
  {
    this.version = 2;
    this.DS = 7095000;
    this.DR = paramInt;
  }
  
  public zzi(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount)
  {
    this.version = paramInt1;
    this.DR = paramInt2;
    this.DS = paramInt3;
    this.DT = paramString;
    if (paramInt1 < 2)
    {
      this.DX = ˊ(paramIBinder);
    }
    else
    {
      this.DU = paramIBinder;
      this.DX = paramAccount;
    }
    this.DV = paramArrayOfScope;
    this.DW = paramBundle;
  }
  
  private Account ˊ(IBinder paramIBinder)
  {
    Account localAccount = null;
    if (paramIBinder != null) {
      localAccount = ẓ.ˎ(בֿ.if.ˎ(paramIBinder));
    }
    return localAccount;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ッ.ˊ(this, paramParcel, paramInt);
  }
  
  public zzi ˊ(Account paramAccount)
  {
    this.DX = paramAccount;
    return this;
  }
  
  public zzi ˊ(Scope[] paramArrayOfScope)
  {
    this.DV = paramArrayOfScope;
    return this;
  }
  
  public zzi ˋ(Bundle paramBundle)
  {
    this.DW = paramBundle;
    return this;
  }
  
  public zzi ˏ(בֿ paramבֿ)
  {
    if (paramבֿ != null) {
      this.DU = paramבֿ.asBinder();
    }
    return this;
  }
  
  public zzi ᕀ(String paramString)
  {
    this.DT = paramString;
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.zzi
 * JD-Core Version:    0.7.0.1
 */