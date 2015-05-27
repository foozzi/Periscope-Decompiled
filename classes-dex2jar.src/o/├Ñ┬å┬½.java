package o;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

public abstract class 冫<T extends Drawable>
  implements ڔ<T>
{
  protected final T kB;
  
  public 冫(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Drawable must not be null!");
    }
    this.kB = paramT;
  }
  
  public final T ɫ()
  {
    return this.kB.getConstantState().newDrawable();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.å«
 * JD-Core Version:    0.7.0.1
 */