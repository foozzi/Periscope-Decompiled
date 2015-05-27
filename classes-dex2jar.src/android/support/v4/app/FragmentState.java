package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import o.ˉ;
import o.ᐧ;
import o.ι;

public final class FragmentState
  implements Parcelable
{
  public static final Parcelable.Creator<FragmentState> CREATOR = new ᐧ();
  final Bundle mArguments;
  final int mContainerId;
  final boolean mDetached;
  final int mFragmentId;
  final boolean mFromLayout;
  final int mIndex;
  final boolean mRetainInstance;
  public Bundle mSavedFragmentState;
  final String mTag;
  final String ˀ;
  public Fragment ˁ;
  
  public FragmentState(Parcel paramParcel)
  {
    this.ˀ = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mFromLayout = bool;
    this.mFragmentId = paramParcel.readInt();
    this.mContainerId = paramParcel.readInt();
    this.mTag = paramParcel.readString();
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mRetainInstance = bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.mDetached = bool;
    this.mArguments = paramParcel.readBundle();
    this.mSavedFragmentState = paramParcel.readBundle();
  }
  
  public FragmentState(Fragment paramFragment)
  {
    this.ˀ = paramFragment.getClass().getName();
    this.mIndex = paramFragment.mIndex;
    this.mFromLayout = paramFragment.mFromLayout;
    this.mFragmentId = paramFragment.mFragmentId;
    this.mContainerId = paramFragment.mContainerId;
    this.mTag = paramFragment.mTag;
    this.mRetainInstance = paramFragment.mRetainInstance;
    this.mDetached = paramFragment.mDetached;
    this.mArguments = paramFragment.mArguments;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.ˀ);
    paramParcel.writeInt(this.mIndex);
    if (this.mFromLayout) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramParcel.writeInt(paramInt);
    paramParcel.writeInt(this.mFragmentId);
    paramParcel.writeInt(this.mContainerId);
    paramParcel.writeString(this.mTag);
    if (this.mRetainInstance) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramParcel.writeInt(paramInt);
    if (this.mDetached) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramParcel.writeInt(paramInt);
    paramParcel.writeBundle(this.mArguments);
    paramParcel.writeBundle(this.mSavedFragmentState);
  }
  
  public Fragment ˊ(ι paramι, Fragment paramFragment)
  {
    if (this.ˁ != null) {
      return this.ˁ;
    }
    if (this.mArguments != null) {
      this.mArguments.setClassLoader(paramι.getClassLoader());
    }
    this.ˁ = Fragment.instantiate(paramι, this.ˀ, this.mArguments);
    if (this.mSavedFragmentState != null)
    {
      this.mSavedFragmentState.setClassLoader(paramι.getClassLoader());
      this.ˁ.mSavedFragmentState = this.mSavedFragmentState;
    }
    this.ˁ.setIndex(this.mIndex, paramFragment);
    this.ˁ.mFromLayout = this.mFromLayout;
    this.ˁ.mRestored = true;
    this.ˁ.mFragmentId = this.mFragmentId;
    this.ˁ.mContainerId = this.mContainerId;
    this.ˁ.mTag = this.mTag;
    this.ˁ.mRetainInstance = this.mRetainInstance;
    this.ˁ.mDetached = this.mDetached;
    this.ˁ.mFragmentManager = paramι.mFragments;
    if (ˉ.DEBUG) {
      Log.v("FragmentManager", "Instantiated fragment " + this.ˁ);
    }
    return this.ˁ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentState
 * JD-Core Version:    0.7.0.1
 */