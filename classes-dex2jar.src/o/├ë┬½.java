package o;

import android.graphics.Bitmap;
import java.io.OutputStream;

public class ɫ
  implements ﺪ<ĸ>
{
  private String id;
  private final ﺪ<Bitmap> lu;
  private final ﺪ<ﻠ> lv;
  
  public ɫ(ﺪ<Bitmap> paramﺪ, ﺪ<ﻠ> paramﺪ1)
  {
    this.lu = paramﺪ;
    this.lv = paramﺪ1;
  }
  
  public String getId()
  {
    if (this.id == null) {
      this.id = (this.lu.getId() + this.lv.getId());
    }
    return this.id;
  }
  
  public boolean ˊ(ڔ<ĸ> paramڔ, OutputStream paramOutputStream)
  {
    paramڔ = (ĸ)paramڔ.get();
    ڔ localڔ = paramڔ.ԇ();
    if (localڔ != null) {
      return this.lu.ˊ(localڔ, paramOutputStream);
    }
    return this.lv.ˊ(paramڔ.ה(), paramOutputStream);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É«
 * JD-Core Version:    0.7.0.1
 */