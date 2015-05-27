package o;

import android.graphics.Bitmap;

public class ʋ
  implements ﺭ<ĸ>
{
  private final ﺭ<Bitmap> lx;
  private final ﺭ<ﻠ> ly;
  
  public ʋ(ი paramი, ﺭ<Bitmap> paramﺭ)
  {
    this(paramﺭ, new ｩ(paramﺭ, paramი));
  }
  
  ʋ(ﺭ<Bitmap> paramﺭ, ﺭ<ﻠ> paramﺭ1)
  {
    this.lx = paramﺭ;
    this.ly = paramﺭ1;
  }
  
  public String getId()
  {
    return this.lx.getId();
  }
  
  public ڔ<ĸ> ˊ(ڔ<ĸ> paramڔ, int paramInt1, int paramInt2)
  {
    ڔ localڔ1 = ((ĸ)paramڔ.get()).ԇ();
    ڔ localڔ2 = ((ĸ)paramڔ.get()).ה();
    if ((localڔ1 != null) && (this.lx != null))
    {
      localڔ2 = this.lx.ˊ(localڔ1, paramInt1, paramInt2);
      if (!localڔ1.equals(localڔ2)) {
        return new ř(new ĸ(localڔ2, ((ĸ)paramڔ.get()).ה()));
      }
      return paramڔ;
    }
    if ((localڔ2 != null) && (this.ly != null))
    {
      localڔ1 = this.ly.ˊ(localڔ2, paramInt1, paramInt2);
      if (!localڔ2.equals(localڔ1)) {
        return new ř(new ĸ(((ĸ)paramڔ.get()).ԇ(), localڔ1));
      }
    }
    return paramڔ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */