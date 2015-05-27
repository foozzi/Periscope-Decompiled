package o;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.ArrayList;

public class ek
  implements Parcelable.Creator<PolygonOptions>
{
  public static void ˊ(PolygonOptions paramPolygonOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = ṯ.ˍ(paramParcel);
    ṯ.ˎ(paramParcel, 1, paramPolygonOptions.ถ());
    ṯ.ˋ(paramParcel, 2, paramPolygonOptions.ﭖ(), false);
    ṯ.ˎ(paramParcel, 3, paramPolygonOptions.ףּ(), false);
    ṯ.ˊ(paramParcel, 4, paramPolygonOptions.getStrokeWidth());
    ṯ.ˎ(paramParcel, 5, paramPolygonOptions.Ↄ());
    ṯ.ˎ(paramParcel, 6, paramPolygonOptions.く());
    ṯ.ˊ(paramParcel, 7, paramPolygonOptions.っ());
    ṯ.ˊ(paramParcel, 8, paramPolygonOptions.isVisible());
    ṯ.ˊ(paramParcel, 9, paramPolygonOptions.ﭴ());
    ṯ.ـ(paramParcel, paramInt);
  }
  
  public PolygonOptions[] ๅ(int paramInt)
  {
    return new PolygonOptions[paramInt];
  }
  
  public PolygonOptions יּ(Parcel paramParcel)
  {
    int m = ᴭ.ˌ(paramParcel);
    int k = 0;
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = new ArrayList();
    float f2 = 0.0F;
    int j = 0;
    int i = 0;
    float f1 = 0.0F;
    boolean bool2 = false;
    boolean bool1 = false;
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
        localArrayList1 = ᴭ.ˎ(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        ᴭ.ˊ(paramParcel, n, localArrayList2, getClass().getClassLoader());
        break;
      case 4: 
        f2 = ᴭ.ͺ(paramParcel, n);
        break;
      case 5: 
        j = ᴭ.ʻ(paramParcel, n);
        break;
      case 6: 
        i = ᴭ.ʻ(paramParcel, n);
        break;
      case 7: 
        f1 = ᴭ.ͺ(paramParcel, n);
        break;
      case 8: 
        bool2 = ᴭ.ˎ(paramParcel, n);
        break;
      case 9: 
        bool1 = ᴭ.ˎ(paramParcel, n);
        break;
      }
      ᴭ.ˋ(paramParcel, n);
    }
    if (paramParcel.dataPosition() != m) {
      throw new ᴭ.if("Overread allowed size end=" + m, paramParcel);
    }
    return new PolygonOptions(k, localArrayList1, localArrayList2, f2, j, i, f1, bool2, bool1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ek
 * JD-Core Version:    0.7.0.1
 */