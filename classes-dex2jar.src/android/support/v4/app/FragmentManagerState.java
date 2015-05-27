package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import o.ـ;

public final class FragmentManagerState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentManagerState> CREATOR = new ـ();
  public FragmentState[] ɩ;
  public int[] ʵ;
  public BackStackState[] ʸ;
  
  public FragmentManagerState() {}
  
  public FragmentManagerState(Parcel paramParcel)
  {
    this.ɩ = ((FragmentState[])paramParcel.createTypedArray(FragmentState.CREATOR));
    this.ʵ = paramParcel.createIntArray();
    this.ʸ = ((BackStackState[])paramParcel.createTypedArray(BackStackState.CREATOR));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(this.ɩ, paramInt);
    paramParcel.writeIntArray(this.ʵ);
    paramParcel.writeTypedArray(this.ʸ, paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentManagerState
 * JD-Core Version:    0.7.0.1
 */