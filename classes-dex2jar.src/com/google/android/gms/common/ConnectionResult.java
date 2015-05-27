package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.โ;
import o.ﺟ;
import o.ﺟ.if;

public final class ConnectionResult
  implements SafeParcelable
{
  public static final ConnectionResult BG = new ConnectionResult(0, null);
  public static final โ CREATOR = new โ();
  public final int BH;
  private final int BI;
  private final PendingIntent BJ;
  
  public ConnectionResult(int paramInt1, int paramInt2, PendingIntent paramPendingIntent)
  {
    this.BH = paramInt1;
    this.BI = paramInt2;
    this.BJ = paramPendingIntent;
  }
  
  public ConnectionResult(int paramInt, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramPendingIntent);
  }
  
  private String ס()
  {
    switch (this.BI)
    {
    default: 
      break;
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    case 13: 
      return "CANCELED";
    case 14: 
      return "TIMEOUT";
    case 15: 
      return "INTERRUPTED";
    case 16: 
      return "API_UNAVAILABLE";
    case 17: 
      return "SIGN_IN_FAILED";
    }
    return "unknown status code " + this.BI;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof ConnectionResult)) {
      return false;
    }
    paramObject = (ConnectionResult)paramObject;
    return (this.BI == paramObject.BI) && (ﺟ.equal(this.BJ, paramObject.BJ));
  }
  
  public int getErrorCode()
  {
    return this.BI;
  }
  
  public int hashCode()
  {
    return ﺟ.hashCode(new Object[] { Integer.valueOf(this.BI), this.BJ });
  }
  
  public String toString()
  {
    return ﺟ.ᔇ(this).ˊ("statusCode", ס()).ˊ("resolution", this.BJ).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    โ.ˊ(this, paramParcel, paramInt);
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
    return (this.BI != 0) && (this.BJ != null);
  }
  
  public boolean չ()
  {
    return this.BI == 0;
  }
  
  public PendingIntent ט()
  {
    return this.BJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.ConnectionResult
 * JD-Core Version:    0.7.0.1
 */