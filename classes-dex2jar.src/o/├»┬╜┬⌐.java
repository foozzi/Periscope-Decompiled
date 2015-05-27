package o;

import android.graphics.Bitmap;

public class ｩ
  implements ﺭ<ﻠ>
{
  private final ი eD;
  private final ﺭ<Bitmap> kT;
  
  public ｩ(ﺭ<Bitmap> paramﺭ, ი paramი)
  {
    this.kT = paramﺭ;
    this.eD = paramი;
  }
  
  public String getId()
  {
    return this.kT.getId();
  }
  
  public ڔ<ﻠ> ˊ(ڔ<ﻠ> paramڔ, int paramInt1, int paramInt2)
  {
    ﻠ localﻠ = (ﻠ)paramڔ.get();
    Object localObject = new ᖟ(((ﻠ)paramڔ.get()).ʇ(), this.eD);
    ڔ localڔ = this.kT.ˊ((ڔ)localObject, paramInt1, paramInt2);
    if (!localObject.equals(localڔ)) {
      ((ڔ)localObject).recycle();
    }
    localObject = (Bitmap)localڔ.get();
    localﻠ.ˊ(this.kT, (Bitmap)localObject);
    return paramڔ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½©
 * JD-Core Version:    0.7.0.1
 */