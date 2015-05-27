package tv.periscope.android.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import o.go;
import o.xj;

public class PsProfileImageUrls
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new xj();
  public int height;
  @go("ssl_url")
  public String url;
  public int width;
  
  public PsProfileImageUrls(Parcel paramParcel)
  {
    this.url = paramParcel.readString();
    this.width = paramParcel.readInt();
    this.height = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.url);
    paramParcel.writeInt(this.width);
    paramParcel.writeInt(this.height);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     tv.periscope.android.api.PsProfileImageUrls
 * JD-Core Version:    0.7.0.1
 */