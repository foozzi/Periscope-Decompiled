package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class ˣ$if<T>
  implements Parcelable.Creator<T>
{
  final ו<T> ڊ;
  
  public ˣ$if(ו<T> paramו)
  {
    this.ڊ = paramו;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return this.ڊ.createFromParcel(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return this.ڊ.newArray(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë£.if
 * JD-Core Version:    0.7.0.1
 */