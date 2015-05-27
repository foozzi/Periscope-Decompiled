package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import o.ʻ;
import o.ˉ;
import o.ˎ;
import o.ˎ.if;

public final class BackStackState
  implements Parcelable
{
  public static final Parcelable.Creator<BackStackState> CREATOR = new ʻ();
  final int mIndex;
  final String mName;
  final int ʿ;
  final int ˈ;
  final int ˑ;
  final CharSequence ـ;
  final int ᐧ;
  final CharSequence ᐨ;
  final int[] ᕀ;
  final ArrayList<String> ﹳ;
  final ArrayList<String> ﾞ;
  
  public BackStackState(Parcel paramParcel)
  {
    this.ᕀ = paramParcel.createIntArray();
    this.ʿ = paramParcel.readInt();
    this.ˈ = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.ˑ = paramParcel.readInt();
    this.ـ = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.ᐧ = paramParcel.readInt();
    this.ᐨ = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.ﹳ = paramParcel.createStringArrayList();
    this.ﾞ = paramParcel.createStringArrayList();
  }
  
  public BackStackState(ˉ paramˉ, ˎ paramˎ)
  {
    int i = 0;
    paramˉ = paramˎ.ᐝ;
    int j;
    while (paramˉ != null)
    {
      j = i;
      if (paramˉ.ۥ != null) {
        j = i + paramˉ.ۥ.size();
      }
      paramˉ = paramˉ.ﹺ;
      i = j;
    }
    this.ᕀ = new int[paramˎ.ʼ * 7 + i];
    if (!paramˎ.ˉ) {
      throw new IllegalStateException("Not on back stack");
    }
    paramˉ = paramˎ.ᐝ;
    i = 0;
    while (paramˉ != null)
    {
      int[] arrayOfInt = this.ᕀ;
      j = i + 1;
      arrayOfInt[i] = paramˉ.ʳ;
      arrayOfInt = this.ᕀ;
      int k = j + 1;
      if (paramˉ.ʴ != null) {
        i = paramˉ.ʴ.mIndex;
      } else {
        i = -1;
      }
      arrayOfInt[j] = i;
      arrayOfInt = this.ᕀ;
      i = k + 1;
      arrayOfInt[k] = paramˉ.ˆ;
      arrayOfInt = this.ᕀ;
      j = i + 1;
      arrayOfInt[i] = paramˉ.ˇ;
      arrayOfInt = this.ᕀ;
      i = j + 1;
      arrayOfInt[j] = paramˉ.ˡ;
      arrayOfInt = this.ᕀ;
      j = i + 1;
      arrayOfInt[i] = paramˉ.ˮ;
      if (paramˉ.ۥ != null)
      {
        int m = paramˉ.ۥ.size();
        arrayOfInt = this.ᕀ;
        i = j + 1;
        arrayOfInt[j] = m;
        j = 0;
        while (j < m)
        {
          arrayOfInt = this.ᕀ;
          k = i + 1;
          arrayOfInt[i] = ((Fragment)paramˉ.ۥ.get(j)).mIndex;
          j += 1;
          i = k;
        }
      }
      else
      {
        arrayOfInt = this.ᕀ;
        i = j + 1;
        arrayOfInt[j] = 0;
      }
      paramˉ = paramˉ.ﹺ;
    }
    this.ʿ = paramˎ.ʿ;
    this.ˈ = paramˎ.ˈ;
    this.mName = paramˎ.mName;
    this.mIndex = paramˎ.mIndex;
    this.ˑ = paramˎ.ˑ;
    this.ـ = paramˎ.ـ;
    this.ᐧ = paramˎ.ᐧ;
    this.ᐨ = paramˎ.ᐨ;
    this.ﹳ = paramˎ.ﹳ;
    this.ﾞ = paramˎ.ﾞ;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(this.ᕀ);
    paramParcel.writeInt(this.ʿ);
    paramParcel.writeInt(this.ˈ);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.ˑ);
    TextUtils.writeToParcel(this.ـ, paramParcel, 0);
    paramParcel.writeInt(this.ᐧ);
    TextUtils.writeToParcel(this.ᐨ, paramParcel, 0);
    paramParcel.writeStringList(this.ﹳ);
    paramParcel.writeStringList(this.ﾞ);
  }
  
  public ˎ ˊ(ˉ paramˉ)
  {
    ˎ localˎ = new ˎ(paramˉ);
    int i = 0;
    int j = 0;
    while (i < this.ᕀ.length)
    {
      ˎ.if localif = new ˎ.if();
      Object localObject = this.ᕀ;
      int k = i + 1;
      localif.ʳ = localObject[i];
      if (ˉ.DEBUG) {
        Log.v("FragmentManager", "Instantiate " + localˎ + " op #" + j + " base fragment #" + this.ᕀ[k]);
      }
      localObject = this.ᕀ;
      i = k + 1;
      k = localObject[k];
      if (k >= 0) {
        localif.ʴ = ((Fragment)paramˉ.ᴸ.get(k));
      } else {
        localif.ʴ = null;
      }
      localObject = this.ᕀ;
      k = i + 1;
      localif.ˆ = localObject[i];
      localObject = this.ᕀ;
      i = k + 1;
      localif.ˇ = localObject[k];
      localObject = this.ᕀ;
      k = i + 1;
      localif.ˡ = localObject[i];
      localObject = this.ᕀ;
      i = k + 1;
      localif.ˮ = localObject[k];
      localObject = this.ᕀ;
      int m = i + 1;
      int n = localObject[i];
      i = m;
      if (n > 0)
      {
        localif.ۥ = new ArrayList(n);
        k = 0;
        i = m;
        for (;;)
        {
          m = i;
          i = m;
          if (k >= n) {
            break;
          }
          if (ˉ.DEBUG) {
            Log.v("FragmentManager", "Instantiate " + localˎ + " set remove fragment #" + this.ᕀ[m]);
          }
          localObject = paramˉ.ᴸ;
          int[] arrayOfInt = this.ᕀ;
          i = m + 1;
          localObject = (Fragment)((ArrayList)localObject).get(arrayOfInt[m]);
          localif.ۥ.add(localObject);
          k += 1;
        }
      }
      localˎ.ˊ(localif);
      j += 1;
    }
    localˎ.ʿ = this.ʿ;
    localˎ.ˈ = this.ˈ;
    localˎ.mName = this.mName;
    localˎ.mIndex = this.mIndex;
    localˎ.ˉ = true;
    localˎ.ˑ = this.ˑ;
    localˎ.ـ = this.ـ;
    localˎ.ᐧ = this.ᐧ;
    localˎ.ᐨ = this.ᐨ;
    localˎ.ﹳ = this.ﹳ;
    localˎ.ﾞ = this.ﾞ;
    localˎ.ˊ(1);
    return localˎ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState
 * JD-Core Version:    0.7.0.1
 */