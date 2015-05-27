package o;

import android.graphics.Paint;
import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;

class ﺑ$if
  implements ﺑ.ʽ
{
  WeakHashMap<View, ᵘ> ῐ = null;
  
  private boolean ˊ(ﹷ paramﹷ, int paramInt)
  {
    int i = paramﹷ.computeHorizontalScrollOffset();
    int j = paramﹷ.computeHorizontalScrollRange() - paramﹷ.computeHorizontalScrollExtent();
    if (j == 0) {
      return false;
    }
    if (paramInt < 0) {
      return i > 0;
    }
    return i < j - 1;
  }
  
  private boolean ˋ(ﹷ paramﹷ, int paramInt)
  {
    int i = paramﹷ.computeVerticalScrollOffset();
    int j = paramﹷ.computeVerticalScrollRange() - paramﹷ.computeVerticalScrollExtent();
    if (j == 0) {
      return false;
    }
    if (paramInt < 0) {
      return i > 0;
    }
    return i < j - 1;
  }
  
  public int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSize(paramInt1, paramInt2);
  }
  
  public int ʹ(View paramView)
  {
    return 0;
  }
  
  public void ʻ(View paramView, float paramFloat) {}
  
  public boolean ʾ(View paramView)
  {
    return false;
  }
  
  public void ʿ(View paramView)
  {
    paramView.invalidate();
  }
  
  public int ˈ(View paramView)
  {
    return 0;
  }
  
  public float ˉ(View paramView)
  {
    return 1.0F;
  }
  
  public void ˊ(View paramView, float paramFloat) {}
  
  public void ˊ(View paramView, int paramInt, Paint paramPaint) {}
  
  public void ˊ(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, ᐪ());
  }
  
  public void ˊ(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, ᐪ() + paramLong);
  }
  
  public void ˊ(View paramView, ﹾ paramﹾ) {}
  
  public void ˊ(View paramView, boolean paramBoolean) {}
  
  public void ˊ(ViewGroup paramViewGroup, boolean paramBoolean) {}
  
  public void ˋ(View paramView, float paramFloat) {}
  
  public void ˋ(View paramView, boolean paramBoolean) {}
  
  public boolean ˋ(View paramView, int paramInt)
  {
    return ((paramView instanceof ﹷ)) && (ˊ((ﹷ)paramView, paramInt));
  }
  
  public int ˌ(View paramView)
  {
    return 0;
  }
  
  public int ˍ(View paramView)
  {
    return 0;
  }
  
  public void ˎ(View paramView, float paramFloat) {}
  
  public boolean ˎ(View paramView, int paramInt)
  {
    return ((paramView instanceof ﹷ)) && (ˋ((ﹷ)paramView, paramInt));
  }
  
  public void ˏ(View paramView, float paramFloat) {}
  
  public void ˏ(View paramView, int paramInt) {}
  
  public float ˑ(View paramView)
  {
    return 0.0F;
  }
  
  public int ͺ(View paramView)
  {
    return 2;
  }
  
  public void ՙ(View paramView) {}
  
  public void י(View paramView) {}
  
  public float ـ(View paramView)
  {
    return 0.0F;
  }
  
  public boolean ٴ(View paramView)
  {
    return ﻧ.ٴ(paramView);
  }
  
  public void ᐝ(View paramView, float paramFloat) {}
  
  public int ᐧ(View paramView)
  {
    return 0;
  }
  
  public int ᐨ(View paramView)
  {
    return 0;
  }
  
  long ᐪ()
  {
    return 10L;
  }
  
  public boolean ι(View paramView)
  {
    return false;
  }
  
  public ᵘ ﹳ(View paramView)
  {
    return new ᵘ(paramView);
  }
  
  public float ﾞ(View paramView)
  {
    return 0.0F;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº.if
 * JD-Core Version:    0.7.0.1
 */