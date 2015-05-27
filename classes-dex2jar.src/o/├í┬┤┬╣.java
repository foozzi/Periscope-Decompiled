package o;

import android.graphics.drawable.Drawable;

public class ᴹ<T extends Drawable>
  implements ḹ<T>
{
  private final int duration;
  private final ṿ<T> mD;
  private ᴽ<T> mE;
  private ᴽ<T> mF;
  
  public ᴹ()
  {
    this(300);
  }
  
  public ᴹ(int paramInt)
  {
    this(new ṿ(new ᴹ.if(paramInt)), paramInt);
  }
  
  ᴹ(ṿ<T> paramṿ, int paramInt)
  {
    this.mD = paramṿ;
    this.duration = paramInt;
  }
  
  private ḟ<T> ᴋ()
  {
    if (this.mE == null) {
      this.mE = new ᴽ(this.mD.ᐝ(false, true), this.duration);
    }
    return this.mE;
  }
  
  private ḟ<T> ᴹ()
  {
    if (this.mF == null) {
      this.mF = new ᴽ(this.mD.ᐝ(false, false), this.duration);
    }
    return this.mF;
  }
  
  public ḟ<T> ᐝ(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {
      return ḽ.ḹ();
    }
    if (paramBoolean2) {
      return ᴋ();
    }
    return ᴹ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¹
 * JD-Core Version:    0.7.0.1
 */