package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ﻋ;

public class zzy
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzy> CREATOR = new ﻋ();
  public final int BH;
  private final Account Cc;
  private final int EO;
  
  public zzy(int paramInt1, Account paramAccount, int paramInt2)
  {
    this.BH = paramInt1;
    this.Cc = paramAccount;
    this.EO = paramInt2;
  }
  
  public zzy(Account paramAccount, int paramInt)
  {
    this(1, paramAccount, paramInt);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getSessionId()
  {
    return this.EO;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ﻋ.ˊ(this, paramParcel, paramInt);
  }
  
  public Account ᒱ()
  {
    return this.Cc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.zzy
 * JD-Core Version:    0.7.0.1
 */