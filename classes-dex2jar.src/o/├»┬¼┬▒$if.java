package o;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class בּ$if
  extends Drawable.ConstantState
{
  private final Drawable.ConstantState mP;
  private final int mQ;
  
  בּ$if(Drawable.ConstantState paramConstantState, int paramInt)
  {
    this.mP = paramConstantState;
    this.mQ = paramInt;
  }
  
  בּ$if(if paramif)
  {
    this(paramif.mP, paramif.mQ);
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return newDrawable(null);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return new בּ(this, null, paramResources);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¬±.if
 * JD-Core Version:    0.7.0.1
 */