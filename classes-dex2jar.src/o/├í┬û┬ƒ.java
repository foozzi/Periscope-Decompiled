package o;

import android.graphics.Bitmap;

public class ᖟ
  implements ڔ<Bitmap>
{
  private final ი eD;
  private final Bitmap jU;
  
  public ᖟ(Bitmap paramBitmap, ი paramი)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("Bitmap must not be null");
    }
    if (paramი == null) {
      throw new NullPointerException("BitmapPool must not be null");
    }
    this.jU = paramBitmap;
    this.eD = paramი;
  }
  
  public static ᖟ ˊ(Bitmap paramBitmap, ი paramი)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new ᖟ(paramBitmap, paramი);
  }
  
  public int getSize()
  {
    return ﾕ.ˉ(this.jU);
  }
  
  public void recycle()
  {
    if (!this.eD.ʽ(this.jU)) {
      this.jU.recycle();
    }
  }
  
  public Bitmap ﺮ()
  {
    return this.jU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */