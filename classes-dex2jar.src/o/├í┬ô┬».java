package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Method;

public class ᓯ
{
  private static Method ﺕ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 18) {
      try
      {
        ﺕ = View.class.getDeclaredMethod("computeFitSystemWindows", new Class[] { Rect.class, Rect.class });
        if (!ﺕ.isAccessible()) {
          ﺕ.setAccessible(true);
        }
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
      }
    }
  }
  
  public static int combineMeasuredStates(int paramInt1, int paramInt2)
  {
    return paramInt1 | paramInt2;
  }
  
  public static Context ˊ(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.View, 0, 0);
    int i = 0;
    if (paramBoolean1) {
      i = paramAttributeSet.getResourceId(ڊ.ʽ.View_android_theme, 0);
    }
    int j = i;
    if (paramBoolean2)
    {
      j = i;
      if (i == 0)
      {
        i = paramAttributeSet.getResourceId(ڊ.ʽ.View_theme, 0);
        j = i;
        if (i != 0)
        {
          Log.i("ViewUtils", "app:theme is now deprecated. Please move to using android:theme instead.");
          j = i;
        }
      }
    }
    paramAttributeSet.recycle();
    paramAttributeSet = paramContext;
    if (j != 0) {
      if ((paramContext instanceof ᒼ))
      {
        paramAttributeSet = paramContext;
        if (((ᒼ)paramContext).ﹻ() == j) {}
      }
      else
      {
        paramAttributeSet = new ᒼ(paramContext, j);
      }
    }
    return paramAttributeSet;
  }
  
  public static void ˊ(View paramView, Rect paramRect1, Rect paramRect2)
  {
    if (ﺕ != null) {
      try
      {
        ﺕ.invoke(paramView, new Object[] { paramRect1, paramRect2 });
        return;
      }
      catch (Exception paramView)
      {
        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", paramView);
      }
    }
  }
  
  public static boolean ᐩ(View paramView)
  {
    return ﺑ.ˌ(paramView) == 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¯
 * JD-Core Version:    0.7.0.1
 */