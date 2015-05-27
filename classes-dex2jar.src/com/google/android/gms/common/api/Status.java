package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.ᒱ;
import o.ᒹ;
import o.ᔬ;
import o.ﺟ;
import o.ﺟ.if;

public final class Status
  implements ᒹ, SafeParcelable
{
  public static final ᔬ CREATOR = new ᔬ();
  public static final Status Cu = new Status(0);
  public static final Status Cv = new Status(14);
  public static final Status Cw = new Status(8);
  public static final Status Cx = new Status(15);
  public static final Status Cy = new Status(16);
  private final int BH;
  private final int BI;
  private final PendingIntent BJ;
  private final String Cz;
  
  public Status(int paramInt)
  {
    this(paramInt, null);
  }
  
  public Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    this.BH = paramInt1;
    this.BI = paramInt2;
    this.Cz = paramString;
    this.BJ = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString)
  {
    this(1, paramInt, paramString, null);
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String ס()
  {
    if (this.Cz != null) {
      return this.Cz;
    }
    return ᒱ.ڊ(this.BI);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {
      return false;
    }
    paramObject = (Status)paramObject;
    return (this.BH == paramObject.BH) && (this.BI == paramObject.BI) && (ﺟ.equal(this.Cz, paramObject.Cz)) && (ﺟ.equal(this.BJ, paramObject.BJ));
  }
  
  public int getStatusCode()
  {
    return this.BI;
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Integer.valueOf(this.BH), Integer.valueOf(this.BI), this.Cz, this.BJ });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("statusCode", ס()).ˊ("resolution", this.BJ).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ᔬ.ˊ(this, paramParcel, paramInt);
  }
  
  public void ˊ(Activity paramActivity, int paramInt)
  {
    if (!Դ()) {
      return;
    }
    paramActivity.startIntentSenderForResult(this.BJ.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public boolean Դ()
  {
    return this.BJ != null;
  }
  
  public boolean չ()
  {
    return this.BI <= 0;
  }
  
  public Status হ()
  {
    return this;
  }
  
  public PendingIntent ค()
  {
    return this.BJ;
  }
  
  public String ฅ()
  {
    return this.Cz;
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.api.Status
 * JD-Core Version:    0.7.0.1
 */