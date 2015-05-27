package o;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.SpinnerCompat;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.HorizontalScrollView;

public class ƚ
  extends HorizontalScrollView
  implements ﹹ.ˊ
{
  private static final Interpolator Ἲ = new DecelerateInterpolator();
  Runnable ৰ;
  private ƚ.ˊ ค;
  private ί ฅ;
  private SpinnerCompat ถ;
  private boolean ท;
  int ป;
  int ผ;
  private int ภ;
  protected final ƚ.ˎ ล = new ƚ.ˎ(this);
  private int ﮈ;
  protected ᵘ ﺓ;
  
  public ƚ(Context paramContext)
  {
    super(paramContext);
    setHorizontalScrollBarEnabled(false);
    paramContext = ᒄ.ˏ(paramContext);
    setContentHeight(paramContext.ﹲ());
    this.ผ = paramContext.ﹷ();
    this.ฅ = ᵪ();
    addView(this.ฅ, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private ƚ.ˋ ˊ(ذ.ˊ paramˊ, boolean paramBoolean)
  {
    paramˊ = new ƚ.ˋ(this, getContext(), paramˊ, paramBoolean);
    if (paramBoolean)
    {
      paramˊ.setBackgroundDrawable(null);
      paramˊ.setLayoutParams(new AbsListView.LayoutParams(-1, this.ﮈ));
      return paramˊ;
    }
    paramˊ.setFocusable(true);
    if (this.ค == null) {
      this.ค = new ƚ.ˊ(this, null);
    }
    paramˊ.setOnClickListener(this.ค);
    return paramˊ;
  }
  
  private boolean ᵉ()
  {
    return (this.ถ != null) && (this.ถ.getParent() == this);
  }
  
  private void ᵊ()
  {
    if (ᵉ()) {
      return;
    }
    if (this.ถ == null) {
      this.ถ = ḯ();
    }
    removeView(this.ฅ);
    addView(this.ถ, new ViewGroup.LayoutParams(-2, -1));
    if (this.ถ.getAdapter() == null) {
      this.ถ.setAdapter(new ƚ.if(this, null));
    }
    if (this.ৰ != null)
    {
      removeCallbacks(this.ৰ);
      this.ৰ = null;
    }
    this.ถ.setSelection(this.ภ);
  }
  
  private boolean ᵡ()
  {
    if (!ᵉ()) {
      return false;
    }
    removeView(this.ถ);
    addView(this.ฅ, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.ถ.getSelectedItemPosition());
    return false;
  }
  
  private ί ᵪ()
  {
    ί localί = new ί(getContext(), null, ڊ.if.actionBarTabBarStyle);
    localί.setMeasureWithLargestChildEnabled(true);
    localί.setGravity(17);
    localί.setLayoutParams(new ί.if(-2, -1));
    return localί;
  }
  
  private SpinnerCompat ḯ()
  {
    SpinnerCompat localSpinnerCompat = new SpinnerCompat(getContext(), null, ڊ.if.actionDropDownStyle);
    localSpinnerCompat.setLayoutParams(new ί.if(-2, -1));
    localSpinnerCompat.ˊ(this);
    return localSpinnerCompat;
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.ৰ != null) {
      post(this.ৰ);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    paramConfiguration = ᒄ.ˏ(getContext());
    setContentHeight(paramConfiguration.ﹲ());
    this.ผ = paramConfiguration.ﹷ();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.ৰ != null) {
      removeCallbacks(this.ৰ);
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (paramInt2 == 1073741824) {
      bool = true;
    } else {
      bool = false;
    }
    setFillViewport(bool);
    int i = this.ฅ.getChildCount();
    if ((i > 1) && ((paramInt2 == 1073741824) || (paramInt2 == -2147483648)))
    {
      if (i > 2) {
        this.ป = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      } else {
        this.ป = (View.MeasureSpec.getSize(paramInt1) / 2);
      }
      this.ป = Math.min(this.ป, this.ผ);
    }
    else
    {
      this.ป = -1;
    }
    i = View.MeasureSpec.makeMeasureSpec(this.ﮈ, 1073741824);
    if ((!bool) && (this.ท)) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    }
    if (paramInt2 != 0)
    {
      this.ฅ.measure(0, i);
      if (this.ฅ.getMeasuredWidth() > View.MeasureSpec.getSize(paramInt1)) {
        ᵊ();
      } else {
        ᵡ();
      }
    }
    else
    {
      ᵡ();
    }
    paramInt2 = getMeasuredWidth();
    super.onMeasure(paramInt1, i);
    paramInt1 = getMeasuredWidth();
    if ((bool) && (paramInt2 != paramInt1)) {
      setTabSelected(this.ภ);
    }
  }
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    this.ท = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    this.ﮈ = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    this.ภ = paramInt;
    int j = this.ฅ.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = this.ฅ.getChildAt(i);
      boolean bool;
      if (i == paramInt) {
        bool = true;
      } else {
        bool = false;
      }
      localView.setSelected(bool);
      if (bool) {
        ı(paramInt);
      }
      i += 1;
    }
    if ((this.ถ != null) && (paramInt >= 0)) {
      this.ถ.setSelection(paramInt);
    }
  }
  
  public void ı(int paramInt)
  {
    View localView = this.ฅ.getChildAt(paramInt);
    if (this.ৰ != null) {
      removeCallbacks(this.ৰ);
    }
    this.ৰ = new Ǐ(this, localView);
    post(this.ৰ);
  }
  
  public void ˊ(ﹹ<?> paramﹹ, View paramView, int paramInt, long paramLong)
  {
    ((ƚ.ˋ)paramView).Ị().select();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ
 * JD-Core Version:    0.7.0.1
 */