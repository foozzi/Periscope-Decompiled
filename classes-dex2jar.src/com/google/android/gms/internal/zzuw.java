package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import o.al;

public class zzuw
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzuw> CREATOR = new al();
  public final int BH;
  public final boolean GU;
  public final List<Scope> GV;
  
  public zzuw(int paramInt, boolean paramBoolean, List<Scope> paramList)
  {
    this.BH = paramInt;
    this.GU = paramBoolean;
    this.GV = paramList;
  }
  
  public zzuw(boolean paramBoolean, Set<Scope> paramSet)
  {
    this(1, paramBoolean, ˊ(paramSet));
  }
  
  private static List<Scope> ˊ(Set<Scope> paramSet)
  {
    if (paramSet == null) {
      return Collections.emptyList();
    }
    return Collections.unmodifiableList(new ArrayList(paramSet));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    al.ˊ(this, paramParcel, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.zzuw
 * JD-Core Version:    0.7.0.1
 */