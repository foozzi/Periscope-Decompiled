package o;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public class ˣ
{
  public static <T> Parcelable.Creator<T> ˊ(ו<T> paramו)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return เ.ˋ(paramו);
    }
    return new ˣ.if(paramו);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë£
 * JD-Core Version:    0.7.0.1
 */