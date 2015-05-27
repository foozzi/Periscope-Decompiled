package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

abstract class ᵪ
  extends ViewGroup
{
  private static final Interpolator Ἲ = new DecelerateInterpolator();
  protected final ᵪ.if Ἳ = new ᵪ.if(this);
  protected final Context Ἴ;
  protected ᖦ Ἵ;
  protected ᓴ ⅈ;
  protected ViewGroup 冖;
  protected boolean הּ;
  protected boolean כֿ;
  protected int ﮈ;
  protected ᵘ ﺓ;
  
  ᵪ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(ڊ.if.actionBarPopupTheme, paramAttributeSet, true)) && (paramAttributeSet.resourceId != 0))
    {
      this.Ἴ = new ContextThemeWrapper(paramContext, paramAttributeSet.resourceId);
      return;
    }
    this.Ἴ = paramContext;
  }
  
  protected static int ˊ(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramInt1 - paramInt2;
    }
    return paramInt1 + paramInt2;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, ڊ.ʽ.ActionBar, ڊ.if.actionBarStyle, 0);
    setContentHeight(localTypedArray.getLayoutDimension(ڊ.ʽ.ActionBar_height, 0));
    localTypedArray.recycle();
    if (this.ⅈ != null) {
      this.ⅈ.onConfigurationChanged(paramConfiguration);
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    this.ﮈ = paramInt;
    requestLayout();
  }
  
  public void setSplitToolbar(boolean paramBoolean)
  {
    this.הּ = paramBoolean;
  }
  
  public void setSplitView(ViewGroup paramViewGroup)
  {
    this.冖 = paramViewGroup;
  }
  
  public void setSplitWhenNarrow(boolean paramBoolean)
  {
    this.כֿ = paramBoolean;
  }
  
  protected int ˊ(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, -2147483648), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() - paramInt3);
  }
  
  protected int ˊ(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 += (paramInt3 - j) / 2;
    if (paramBoolean) {
      paramView.layout(paramInt1 - i, paramInt2, paramInt1, paramInt2 + j);
    } else {
      paramView.layout(paramInt1, paramInt2, paramInt1 + i, paramInt2 + j);
    }
    if (paramBoolean) {
      return -i;
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµª
 * JD-Core Version:    0.7.0.1
 */