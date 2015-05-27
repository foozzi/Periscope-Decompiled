package o;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;

public class ڍ
  extends ContextWrapper
{
  private Resources ږ;
  
  private ڍ(Context paramContext)
  {
    super(paramContext);
  }
  
  public static Context ᐝ(Context paramContext)
  {
    Object localObject = paramContext;
    if (!(paramContext instanceof ڍ)) {
      localObject = new ڍ(paramContext);
    }
    return localObject;
  }
  
  public Resources getResources()
  {
    if (this.ږ == null) {
      this.ږ = new ڍ.if(super.getResources(), ฯ.ʻ(this));
    }
    return this.ږ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */