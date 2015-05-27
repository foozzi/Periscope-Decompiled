package o;

import android.content.Context;
import android.graphics.Bitmap;

public abstract class ᘇ
  implements ﺭ<Bitmap>
{
  private ი eD;
  
  public ᘇ(Context paramContext)
  {
    this(ᓲ.ˉ(paramContext).Ꮀ());
  }
  
  public ᘇ(ი paramი)
  {
    this.eD = paramი;
  }
  
  protected abstract Bitmap ˊ(ი paramი, Bitmap paramBitmap, int paramInt1, int paramInt2);
  
  public final ڔ<Bitmap> ˊ(ڔ<Bitmap> paramڔ, int paramInt1, int paramInt2)
  {
    if (!ﾕ.ᵀ(paramInt1, paramInt2)) {
      throw new IllegalArgumentException("Cannot apply transformation on width: " + paramInt1 + " or height: " + paramInt2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
    Bitmap localBitmap1 = (Bitmap)paramڔ.get();
    if (paramInt1 == -2147483648) {
      paramInt1 = localBitmap1.getWidth();
    }
    if (paramInt2 == -2147483648) {
      paramInt2 = localBitmap1.getHeight();
    }
    Bitmap localBitmap2 = ˊ(this.eD, localBitmap1, paramInt1, paramInt2);
    if (localBitmap1.equals(localBitmap2)) {
      return paramڔ;
    }
    return ᖟ.ˊ(localBitmap2, this.eD);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */