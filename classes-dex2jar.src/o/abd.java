package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public abstract class abd
{
  public static Bitmap ˊ(ი paramი, Bitmap.Config paramConfig, int paramInt1, int paramInt2)
  {
    if (paramConfig == null) {
      paramConfig = Bitmap.Config.ARGB_8888;
    }
    Bitmap localBitmap = paramი.ˋ(paramInt1, paramInt2, paramConfig);
    paramი = localBitmap;
    if (localBitmap == null) {
      paramი = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
    }
    return paramი;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abd
 * JD-Core Version:    0.7.0.1
 */