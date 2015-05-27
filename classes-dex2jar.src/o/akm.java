package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import tv.periscope.android.util.Size;

public final class akm
  implements Parcelable.Creator<Size>
{
  public Size ː(Parcel paramParcel)
  {
    return new Size(paramParcel);
  }
  
  public Size[] Ꮠ(int paramInt)
  {
    return new Size[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akm
 * JD-Core Version:    0.7.0.1
 */