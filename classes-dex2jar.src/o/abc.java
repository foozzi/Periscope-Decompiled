package o;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import java.io.ByteArrayOutputStream;

public class abc
  extends ᘇ
{
  private Context mContext;
  
  public abc(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
  }
  
  public String getId()
  {
    return "Blur";
  }
  
  protected Bitmap ˊ(ი paramი, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    paramი = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, paramი);
    paramBitmap.recycle();
    paramი = paramი.toByteArray();
    paramი = BitmapFactory.decodeByteArray(paramი, 0, paramი.length);
    paramი = akh.ˊ(this.mContext, paramი, 25);
    return akh.ˊ(this.mContext, paramი, 10);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abc
 * JD-Core Version:    0.7.0.1
 */