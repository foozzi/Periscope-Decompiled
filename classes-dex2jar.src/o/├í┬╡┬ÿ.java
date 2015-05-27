package o;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public class ᵘ
{
  static final ᵘ.aux Ī = new ᵘ.if();
  private WeakReference<View> ﺪ;
  private Runnable ﺭ = null;
  private Runnable ｊ = null;
  private int ｭ = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19)
    {
      Ī = new ᵘ.ˏ();
      return;
    }
    if (i >= 18)
    {
      Ī = new ᵘ.ˋ();
      return;
    }
    if (i >= 16)
    {
      Ī = new ᵘ.ˎ();
      return;
    }
    if (i >= 14)
    {
      Ī = new ᵘ.ˊ();
      return;
    }
  }
  
  ᵘ(View paramView)
  {
    this.ﺪ = new WeakReference(paramView);
  }
  
  public void cancel()
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˊ(this, localView);
    }
  }
  
  public void start()
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˋ(this, localView);
    }
  }
  
  public ᵘ ʻ(float paramFloat)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˏ(this, localView, paramFloat);
    }
    return this;
  }
  
  public ᵘ ʼ(float paramFloat)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ᐝ(this, localView, paramFloat);
    }
    return this;
  }
  
  public ᵘ ˊ(long paramLong)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˊ(this, localView, paramLong);
    }
    return this;
  }
  
  public ᵘ ˊ(Interpolator paramInterpolator)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˊ(this, localView, paramInterpolator);
    }
    return this;
  }
  
  public ᵘ ˊ(ﭔ paramﭔ)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˊ(this, localView, paramﭔ);
    }
    return this;
  }
  
  public ᵘ ˎ(float paramFloat)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˊ(this, localView, paramFloat);
    }
    return this;
  }
  
  public ᵘ ˏ(float paramFloat)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˋ(this, localView, paramFloat);
    }
    return this;
  }
  
  public ᵘ ᐝ(float paramFloat)
  {
    View localView = (View)this.ﺪ.get();
    if (localView != null) {
      Ī.ˎ(this, localView, paramFloat);
    }
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */