package o;

import android.graphics.Bitmap;

public class ĸ
{
  private final ڔ<ﻠ> ll;
  private final ڔ<Bitmap> lm;
  
  public ĸ(ڔ<Bitmap> paramڔ, ڔ<ﻠ> paramڔ1)
  {
    if ((paramڔ != null) && (paramڔ1 != null)) {
      throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
    }
    if ((paramڔ == null) && (paramڔ1 == null)) {
      throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
    }
    this.lm = paramڔ;
    this.ll = paramڔ1;
  }
  
  public int getSize()
  {
    if (this.lm != null) {
      return this.lm.getSize();
    }
    return this.ll.getSize();
  }
  
  public ڔ<Bitmap> ԇ()
  {
    return this.lm;
  }
  
  public ڔ<ﻠ> ה()
  {
    return this.ll;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ä¸
 * JD-Core Version:    0.7.0.1
 */