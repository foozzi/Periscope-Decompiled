package o;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ᵘ$if
  implements ᵘ.aux
{
  WeakHashMap<View, Runnable> Ĭ = null;
  
  private void ˎ(ᵘ paramᵘ, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    ﭔ localﭔ = null;
    if ((localObject instanceof ﭔ)) {
      localﭔ = (ﭔ)localObject;
    }
    localObject = ᵘ.ˊ(paramᵘ);
    paramᵘ = ᵘ.ˋ(paramᵘ);
    if (localObject != null) {
      ((Runnable)localObject).run();
    }
    if (localﭔ != null)
    {
      localﭔ.ᵢ(paramView);
      localﭔ.ⁱ(paramView);
    }
    if (paramᵘ != null) {
      paramᵘ.run();
    }
    if (this.Ĭ != null) {
      this.Ĭ.remove(paramView);
    }
  }
  
  private void ˏ(ᵘ paramᵘ, View paramView)
  {
    Runnable localRunnable = null;
    if (this.Ĭ != null) {
      localRunnable = (Runnable)this.Ĭ.get(paramView);
    }
    Object localObject = localRunnable;
    if (localRunnable == null)
    {
      localObject = new ᵘ.if.if(this, paramᵘ, paramView, null);
      if (this.Ĭ == null) {
        this.Ĭ = new WeakHashMap();
      }
      this.Ĭ.put(paramView, localObject);
    }
    paramView.removeCallbacks((Runnable)localObject);
    paramView.post((Runnable)localObject);
  }
  
  private void ᵔ(View paramView)
  {
    if (this.Ĭ != null)
    {
      Runnable localRunnable = (Runnable)this.Ĭ.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
  }
  
  public void ˊ(ᵘ paramᵘ, View paramView)
  {
    ˏ(paramᵘ, paramView);
  }
  
  public void ˊ(ᵘ paramᵘ, View paramView, float paramFloat)
  {
    ˏ(paramᵘ, paramView);
  }
  
  public void ˊ(ᵘ paramᵘ, View paramView, long paramLong) {}
  
  public void ˊ(ᵘ paramᵘ, View paramView, Interpolator paramInterpolator) {}
  
  public void ˊ(ᵘ paramᵘ, View paramView, ﭔ paramﭔ)
  {
    paramView.setTag(2113929216, paramﭔ);
  }
  
  public void ˋ(ᵘ paramᵘ, View paramView)
  {
    ᵔ(paramView);
    ˎ(paramᵘ, paramView);
  }
  
  public void ˋ(ᵘ paramᵘ, View paramView, float paramFloat)
  {
    ˏ(paramᵘ, paramView);
  }
  
  public void ˎ(ᵘ paramᵘ, View paramView, float paramFloat)
  {
    ˏ(paramᵘ, paramView);
  }
  
  public void ˏ(ᵘ paramᵘ, View paramView, float paramFloat)
  {
    ˏ(paramᵘ, paramView);
  }
  
  public void ᐝ(ᵘ paramᵘ, View paramView, float paramFloat)
  {
    ˏ(paramᵘ, paramView);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ.if
 * JD-Core Version:    0.7.0.1
 */