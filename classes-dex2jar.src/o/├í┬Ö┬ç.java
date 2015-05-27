package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public class ᙇ
  extends ᘇ
{
  public ᙇ(ი paramი)
  {
    super(paramი);
  }
  
  public String getId()
  {
    return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
  }
  
  protected Bitmap ˊ(ი paramი, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap.getConfig() != null) {
      localObject = paramBitmap.getConfig();
    } else {
      localObject = Bitmap.Config.ARGB_8888;
    }
    Object localObject = paramი.ˋ(paramInt1, paramInt2, (Bitmap.Config)localObject);
    paramBitmap = 亅.ˊ((Bitmap)localObject, paramBitmap, paramInt1, paramInt2);
    if ((localObject != null) && (localObject != paramBitmap) && (!paramი.ʽ((Bitmap)localObject))) {
      ((Bitmap)localObject).recycle();
    }
    return paramBitmap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */