package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.Tile;

public class es
  implements Parcelable.Creator<Tile>
{
  public static void ˊ(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramTile.ถ());
    ṯ.ˎ(paramParcel, 2, paramTile.width);
    ṯ.ˎ(paramParcel, 3, paramTile.height);
    ṯ.ˊ(paramParcel, 4, paramTile.fw, false);
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public Tile[] ᓴ(int paramInt)
  {
    return new Tile[paramInt];
  }
  
  public Tile ᔈ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    int j = 0;
    int i = 0;
    byte[] arrayOfByte = null;
    while (paramParcel.dataPosition() < m)
    {
      int n = ᴭ.ˉ(paramParcel);
      switch (ᴭ.ᴬ(n))
      {
      default: 
        break;
      case 1: 
        k = ᴭ.ʻ(paramParcel, n);
        break;
      case 2: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 3: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 4: 
        arrayOfByte = ᴭ.ˉ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new Tile(k, j, i, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.es
 * JD-Core Version:    0.7.0.1
 */