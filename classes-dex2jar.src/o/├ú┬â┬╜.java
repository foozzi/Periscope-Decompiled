package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ヽ
  extends ᵪ
  implements ﭔ
{
  private TextView ȑ;
  private Drawable ʡ;
  private CharSequence ε;
  private View κ;
  private View ν;
  private LinearLayout Ϛ;
  private TextView Ч;
  private int з;
  private int л;
  private boolean ь;
  private int ҫ;
  private ᓑ ү;
  private boolean ҷ;
  private int Һ;
  private CharSequence ḹ;
  
  public ヽ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ヽ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ڊ.if.actionModeStyle);
  }
  
  public ヽ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ๅ.ˊ(paramContext, paramAttributeSet, ڊ.ʽ.ActionMode, paramInt, 0);
    setBackgroundDrawable(paramContext.getDrawable(ڊ.ʽ.ActionMode_background));
    this.з = paramContext.getResourceId(ڊ.ʽ.ActionMode_titleTextStyle, 0);
    this.л = paramContext.getResourceId(ڊ.ʽ.ActionMode_subtitleTextStyle, 0);
    this.ﮈ = paramContext.getLayoutDimension(ڊ.ʽ.ActionMode_height, 0);
    this.ʡ = paramContext.getDrawable(ڊ.ʽ.ActionMode_backgroundSplit);
    this.ҫ = paramContext.getResourceId(ڊ.ʽ.ActionMode_closeItemLayout, ڊ.ᐝ.abc_action_mode_close_item_material);
    paramContext.recycle();
  }
  
  private void ᐥ()
  {
    if (this.Ϛ == null)
    {
      LayoutInflater.from(getContext()).inflate(ڊ.ᐝ.abc_action_bar_title_item, this);
      this.Ϛ = ((LinearLayout)getChildAt(getChildCount() - 1));
      this.ȑ = ((TextView)this.Ϛ.findViewById(ڊ.ˏ.action_bar_title));
      this.Ч = ((TextView)this.Ϛ.findViewById(ڊ.ˏ.action_bar_subtitle));
      if (this.з != 0) {
        this.ȑ.setTextAppearance(getContext(), this.з);
      }
      if (this.л != 0) {
        this.Ч.setTextAppearance(getContext(), this.л);
      }
    }
    this.ȑ.setText(this.ḹ);
    this.Ч.setText(this.ε);
    int i;
    if (!TextUtils.isEmpty(this.ḹ)) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (!TextUtils.isEmpty(this.ε)) {
      j = 1;
    } else {
      j = 0;
    }
    Object localObject = this.Ч;
    int k;
    if (j != 0) {
      k = 0;
    } else {
      k = 8;
    }
    ((TextView)localObject).setVisibility(k);
    localObject = this.Ϛ;
    if ((i != 0) || (j != 0)) {
      i = 0;
    } else {
      i = 8;
    }
    ((LinearLayout)localObject).setVisibility(i);
    if (this.Ϛ.getParent() == null) {
      addView(this.Ϛ);
    }
  }
  
  private void ᒃ()
  {
    ᓑ localᓑ = this.ү;
    if (localᓑ != null)
    {
      this.ү = null;
      localᓑ.cancel();
    }
  }
  
  private ᓑ ᕪ()
  {
    ﺑ.ˊ(this.κ, -this.κ.getWidth() - ((ViewGroup.MarginLayoutParams)this.κ.getLayoutParams()).leftMargin);
    Object localObject = ﺑ.ﹳ(this.κ).ˏ(0.0F);
    ((ᵘ)localObject).ˊ(200L);
    ((ᵘ)localObject).ˊ(this);
    ((ᵘ)localObject).ˊ(new DecelerateInterpolator());
    ᓑ localᓑ = new ᓑ();
    localᓑ.ˏ((ᵘ)localObject);
    if (this.Ἵ != null)
    {
      int i = this.Ἵ.getChildCount();
      if (i > 0)
      {
        int j = i - 1;
        i = 0;
        while (j >= 0)
        {
          localObject = this.Ἵ.getChildAt(j);
          ﺑ.ᐝ((View)localObject, 0.0F);
          localObject = ﺑ.ﹳ((View)localObject).ʼ(1.0F);
          ((ᵘ)localObject).ˊ(300L);
          localᓑ.ˏ((ᵘ)localObject);
          j -= 1;
          i += 1;
        }
      }
    }
    return localᓑ;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.ⅈ != null)
    {
      this.ⅈ.hideOverflowMenu();
      this.ⅈ.נּ();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent.setSource(this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(this.ḹ);
        return;
      }
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = ᓯ.ᐩ(this);
    int i;
    if (paramBoolean) {
      i = paramInt3 - paramInt1 - getPaddingRight();
    } else {
      i = getPaddingLeft();
    }
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    paramInt2 = i;
    Object localObject;
    if (this.κ != null)
    {
      paramInt2 = i;
      if (this.κ.getVisibility() != 8)
      {
        localObject = (ViewGroup.MarginLayoutParams)this.κ.getLayoutParams();
        if (paramBoolean) {
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
        } else {
          paramInt2 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        }
        if (paramBoolean) {
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
        } else {
          paramInt4 = ((ViewGroup.MarginLayoutParams)localObject).rightMargin;
        }
        paramInt2 = ˊ(i, paramInt2, paramBoolean);
        paramInt4 = ˊ(paramInt2 + ˊ(this.κ, paramInt2, j, k, paramBoolean), paramInt4, paramBoolean);
        paramInt2 = paramInt4;
        if (this.ҷ)
        {
          this.Һ = 1;
          this.ү = ᕪ();
          this.ү.start();
          this.ҷ = false;
          paramInt2 = paramInt4;
        }
      }
    }
    paramInt4 = paramInt2;
    if (this.Ϛ != null)
    {
      paramInt4 = paramInt2;
      if (this.ν == null)
      {
        paramInt4 = paramInt2;
        if (this.Ϛ.getVisibility() != 8) {
          paramInt4 = paramInt2 + ˊ(this.Ϛ, paramInt2, j, k, paramBoolean);
        }
      }
    }
    if (this.ν != null) {
      ˊ(this.ν, paramInt4, j, k, paramBoolean);
    }
    if (paramBoolean) {
      paramInt1 = getPaddingLeft();
    } else {
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
    }
    if (this.Ἵ != null)
    {
      localObject = this.Ἵ;
      if (!paramBoolean) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      ˊ((View)localObject, paramInt1, j, k, paramBoolean);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
    }
    int m = View.MeasureSpec.getSize(paramInt1);
    int i;
    if (this.ﮈ > 0) {
      i = this.ﮈ;
    } else {
      i = View.MeasureSpec.getSize(paramInt2);
    }
    int n = getPaddingTop() + getPaddingBottom();
    paramInt1 = m - getPaddingLeft() - getPaddingRight();
    int k = i - n;
    int j = View.MeasureSpec.makeMeasureSpec(k, -2147483648);
    paramInt2 = paramInt1;
    Object localObject;
    if (this.κ != null)
    {
      paramInt1 = ˊ(this.κ, paramInt1, j, 0);
      localObject = (ViewGroup.MarginLayoutParams)this.κ.getLayoutParams();
      paramInt2 = paramInt1 - (((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin);
    }
    paramInt1 = paramInt2;
    if (this.Ἵ != null)
    {
      paramInt1 = paramInt2;
      if (this.Ἵ.getParent() == this) {
        paramInt1 = ˊ(this.Ἵ, paramInt2, j, 0);
      }
    }
    paramInt2 = paramInt1;
    if (this.Ϛ != null)
    {
      paramInt2 = paramInt1;
      if (this.ν == null) {
        if (this.ь)
        {
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          this.Ϛ.measure(paramInt2, j);
          int i1 = this.Ϛ.getMeasuredWidth();
          if (i1 <= paramInt1) {
            j = 1;
          } else {
            j = 0;
          }
          paramInt2 = paramInt1;
          if (j != 0) {
            paramInt2 = paramInt1 - i1;
          }
          localObject = this.Ϛ;
          if (j != 0) {
            paramInt1 = 0;
          } else {
            paramInt1 = 8;
          }
          ((LinearLayout)localObject).setVisibility(paramInt1);
        }
        else
        {
          paramInt2 = ˊ(this.Ϛ, paramInt1, j, 0);
        }
      }
    }
    if (this.ν != null)
    {
      localObject = this.ν.getLayoutParams();
      if (((ViewGroup.LayoutParams)localObject).width != -2) {
        paramInt1 = 1073741824;
      } else {
        paramInt1 = -2147483648;
      }
      if (((ViewGroup.LayoutParams)localObject).width >= 0) {
        paramInt2 = Math.min(((ViewGroup.LayoutParams)localObject).width, paramInt2);
      }
      if (((ViewGroup.LayoutParams)localObject).height != -2) {
        j = 1073741824;
      } else {
        j = -2147483648;
      }
      if (((ViewGroup.LayoutParams)localObject).height >= 0) {
        k = Math.min(((ViewGroup.LayoutParams)localObject).height, k);
      }
      this.ν.measure(View.MeasureSpec.makeMeasureSpec(paramInt2, paramInt1), View.MeasureSpec.makeMeasureSpec(k, j));
    }
    if (this.ﮈ <= 0)
    {
      paramInt2 = 0;
      k = getChildCount();
      paramInt1 = 0;
      while (paramInt1 < k)
      {
        j = getChildAt(paramInt1).getMeasuredHeight() + n;
        i = paramInt2;
        if (j > paramInt2) {
          i = j;
        }
        paramInt1 += 1;
        paramInt2 = i;
      }
      setMeasuredDimension(m, paramInt2);
      return;
    }
    setMeasuredDimension(m, i);
  }
  
  public void setContentHeight(int paramInt)
  {
    this.ﮈ = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    if (this.ν != null) {
      removeView(this.ν);
    }
    this.ν = paramView;
    if (this.Ϛ != null)
    {
      removeView(this.Ϛ);
      this.Ϛ = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSplitToolbar(boolean paramBoolean)
  {
    if (this.הּ != paramBoolean)
    {
      if (this.ⅈ != null)
      {
        ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
        ViewGroup localViewGroup;
        if (!paramBoolean)
        {
          this.Ἵ = ((ᖦ)this.ⅈ.ˎ(this));
          this.Ἵ.setBackgroundDrawable(null);
          localViewGroup = (ViewGroup)this.Ἵ.getParent();
          if (localViewGroup != null) {
            localViewGroup.removeView(this.Ἵ);
          }
          addView(this.Ἵ, localLayoutParams);
        }
        else
        {
          this.ⅈ.ʾ(getContext().getResources().getDisplayMetrics().widthPixels, true);
          this.ⅈ.ۦ(2147483647);
          localLayoutParams.width = -1;
          localLayoutParams.height = this.ﮈ;
          this.Ἵ = ((ᖦ)this.ⅈ.ˎ(this));
          this.Ἵ.setBackgroundDrawable(this.ʡ);
          localViewGroup = (ViewGroup)this.Ἵ.getParent();
          if (localViewGroup != null) {
            localViewGroup.removeView(this.Ἵ);
          }
          this.冖.addView(this.Ἵ, localLayoutParams);
        }
      }
      super.setSplitToolbar(paramBoolean);
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.ε = paramCharSequence;
    ᐥ();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.ḹ = paramCharSequence;
    ᐥ();
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != this.ь) {
      requestLayout();
    }
    this.ь = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public void ᓒ()
  {
    ᒃ();
    removeAllViews();
    if (this.冖 != null) {
      this.冖.removeView(this.Ἵ);
    }
    this.ν = null;
    this.Ἵ = null;
    this.ҷ = false;
  }
  
  public void ᵢ(View paramView) {}
  
  public void ⁱ(View paramView)
  {
    if (this.Һ == 2) {
      ᓒ();
    }
    this.Һ = 0;
  }
  
  public void ﹶ(View paramView) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã½
 * JD-Core Version:    0.7.0.1
 */