package o;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class ї
{
  public static int resolveSizeAndState(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  public static float ˉ(View paramView)
  {
    return paramView.getAlpha();
  }
  
  public static void ˊ(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  public static void ˊ(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public static void ˊ(View paramView, boolean paramBoolean)
  {
    paramView.setSaveFromParentEnabled(paramBoolean);
  }
  
  public static void ˋ(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public static void ˋ(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }
  
  public static int ˍ(View paramView)
  {
    return paramView.getMeasuredState();
  }
  
  public static void ˎ(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public static void ˏ(View paramView, float paramFloat)
  {
    paramView.setScaleX(paramFloat);
  }
  
  public static float ˑ(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  public static void י(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }
  
  public static float ـ(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public static void ᐝ(View paramView, float paramFloat)
  {
    paramView.setScaleY(paramFloat);
  }
  
  static long ᐪ()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public static float ﾞ(View paramView)
  {
    return paramView.getScaleX();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ñ
 * JD-Core Version:    0.7.0.1
 */