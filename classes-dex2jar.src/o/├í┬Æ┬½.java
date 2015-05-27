package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.util.Log;
import java.io.OutputStream;

public class ᒫ
  implements ﺪ<Bitmap>
{
  private Bitmap.CompressFormat jT;
  private int quality;
  
  public ᒫ()
  {
    this(null, 90);
  }
  
  public ᒫ(Bitmap.CompressFormat paramCompressFormat, int paramInt)
  {
    this.jT = paramCompressFormat;
    this.quality = paramInt;
  }
  
  private Bitmap.CompressFormat ʾ(Bitmap paramBitmap)
  {
    if (this.jT != null) {
      return this.jT;
    }
    if (paramBitmap.hasAlpha()) {
      return Bitmap.CompressFormat.PNG;
    }
    return Bitmap.CompressFormat.JPEG;
  }
  
  public String getId()
  {
    return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
  }
  
  public boolean ˊ(ڔ<Bitmap> paramڔ, OutputStream paramOutputStream)
  {
    paramڔ = (Bitmap)paramڔ.get();
    long l = ｯ.〱();
    Bitmap.CompressFormat localCompressFormat = ʾ(paramڔ);
    paramڔ.compress(localCompressFormat, this.quality, paramOutputStream);
    if (Log.isLoggable("BitmapEncoder", 2)) {
      Log.v("BitmapEncoder", "Compressed with type: " + localCompressFormat + " of size " + ﾕ.ˉ(paramڔ) + " in " + ｯ.ˎ(l));
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á«
 * JD-Core Version:    0.7.0.1
 */