package o;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

class ۦ<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final ו<T> ڊ;
  
  public ۦ(ו<T> paramו)
  {
    this.ڊ = paramו;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return this.ڊ.createFromParcel(paramParcel, null);
  }
  
  public T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return this.ڊ.createFromParcel(paramParcel, paramClassLoader);
  }
  
  public T[] newArray(int paramInt)
  {
    return this.ڊ.newArray(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û¦
 * JD-Core Version:    0.7.0.1
 */