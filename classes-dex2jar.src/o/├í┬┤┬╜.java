package o;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

public class ᴽ<T extends Drawable>
  implements ḟ<T>
{
  private final int duration;
  private final ḟ<T> mG;
  
  public ᴽ(ḟ<T> paramḟ, int paramInt)
  {
    this.mG = paramḟ;
    this.duration = paramInt;
  }
  
  public boolean ˊ(T paramT, ḟ.if paramif)
  {
    Drawable localDrawable = paramif.ḟ();
    if (localDrawable != null)
    {
      paramT = new TransitionDrawable(new Drawable[] { localDrawable, paramT });
      paramT.setCrossFadeEnabled(true);
      paramT.startTransition(this.duration);
      paramif.setDrawable(paramT);
      return true;
    }
    this.mG.ˊ(paramT, paramif);
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´½
 * JD-Core Version:    0.7.0.1
 */