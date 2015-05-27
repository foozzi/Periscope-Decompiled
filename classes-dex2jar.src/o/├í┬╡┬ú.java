package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class ᵣ
{
  public static final Drawable ˊ(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return יִ.ˊ(paramContext, paramInt);
    }
    return paramContext.getResources().getDrawable(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ£
 * JD-Core Version:    0.7.0.1
 */