package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import o.o;
import o.ﺟ;

public class zzox
  implements SafeParcelable
{
  public static final o CREATOR = new o();
  private final int BH;
  public final String packageName;
  public final int uid;
  
  public zzox(int paramInt1, int paramInt2, String paramString)
  {
    this.BH = paramInt1;
    this.uid = paramInt2;
    this.packageName = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzox)) {
      return false;
    }
    paramObject = (zzox)paramObject;
    return (paramObject.uid == this.uid) && (ﺟ.equal(paramObject.packageName, this.packageName));
  }
  
  public int hashCode()
  {
    return this.uid;
  }
  
  public String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(this.uid), this.packageName });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.ˊ(this, paramParcel, paramInt);
  }
  
  public int ถ()
  {
    return this.BH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzox
 * JD-Core Version:    0.7.0.1
 */