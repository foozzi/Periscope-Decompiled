package o;

import android.view.View;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class ﺑ$ˏ
  extends ﺑ.ˎ
{
  static Field ῑ;
  static boolean ‿ = false;
  
  public void ˊ(View paramView, ﹾ paramﹾ)
  {
    if (paramﹾ == null) {
      paramﹾ = null;
    } else {
      paramﹾ = paramﹾ.ᵕ();
    }
    Ӏ.ˎ(paramView, paramﹾ);
  }
  
  public boolean ˋ(View paramView, int paramInt)
  {
    return Ӏ.ˋ(paramView, paramInt);
  }
  
  public boolean ˎ(View paramView, int paramInt)
  {
    return Ӏ.ˎ(paramView, paramInt);
  }
  
  public boolean ι(View paramView)
  {
    if (‿) {
      return false;
    }
    if (ῑ == null) {
      try
      {
        ῑ = View.class.getDeclaredField("mAccessibilityDelegate");
        ῑ.setAccessible(true);
      }
      catch (Throwable paramView)
      {
        ‿ = true;
        return false;
      }
    }
    try
    {
      paramView = ῑ.get(paramView);
      return paramView != null;
    }
    catch (Throwable paramView)
    {
      ‿ = true;
    }
    return false;
  }
  
  public ᵘ ﹳ(View paramView)
  {
    if (this.ῐ == null) {
      this.ῐ = new WeakHashMap();
    }
    ᵘ localᵘ2 = (ᵘ)this.ῐ.get(paramView);
    ᵘ localᵘ1 = localᵘ2;
    if (localᵘ2 == null)
    {
      localᵘ1 = new ᵘ(paramView);
      this.ῐ.put(paramView, localᵘ1);
    }
    return localᵘ1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº.Ë
 * JD-Core Version:    0.7.0.1
 */