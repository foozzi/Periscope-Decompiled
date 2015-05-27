package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class ー
  extends FrameLayout
{
  private boolean ƭ;
  private View ɛ;
  private View ɜ;
  Drawable ɬ;
  private View ʄ;
  Drawable ʈ;
  Drawable ʡ;
  boolean ʢ;
  boolean Ϋ;
  private int γ;
  
  public ー(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ー(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    Object localObject;
    if (ง.ᵄ()) {
      localObject = new ゝ(this);
    } else {
      localObject = new Ị(this);
    }
    setBackgroundDrawable((Drawable)localObject);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.ActionBar);
    this.ɬ = paramContext.getDrawable(ڊ.ʽ.ActionBar_background);
    this.ʈ = paramContext.getDrawable(ڊ.ʽ.ActionBar_backgroundStacked);
    this.γ = paramContext.getDimensionPixelSize(ڊ.ʽ.ActionBar_height, -1);
    if (getId() == ڊ.ˏ.split_action_bar)
    {
      this.ʢ = true;
      this.ʡ = paramContext.getDrawable(ڊ.ʽ.ActionBar_backgroundSplit);
    }
    paramContext.recycle();
    boolean bool;
    if (this.ʢ)
    {
      if (this.ʡ == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else if ((this.ɬ == null) && (this.ʈ == null)) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
  }
  
  private boolean ۥ(View paramView)
  {
    return (paramView == null) || (paramView.getVisibility() == 8) || (paramView.getMeasuredHeight() == 0);
  }
  
  private int ᐠ(View paramView)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)paramView.getLayoutParams();
    return paramView.getMeasuredHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.ɬ != null) && (this.ɬ.isStateful())) {
      this.ɬ.setState(getDrawableState());
    }
    if ((this.ʈ != null) && (this.ʈ.isStateful())) {
      this.ʈ.setState(getDrawableState());
    }
    if ((this.ʡ != null) && (this.ʡ.isStateful())) {
      this.ʡ.setState(getDrawableState());
    }
  }
  
  public void jumpDrawablesToCurrentState()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      super.jumpDrawablesToCurrentState();
      if (this.ɬ != null) {
        this.ɬ.jumpToCurrentState();
      }
      if (this.ʈ != null) {
        this.ʈ.jumpToCurrentState();
      }
      if (this.ʡ != null) {
        this.ʡ.jumpToCurrentState();
      }
    }
  }
  
  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.ɜ = findViewById(ڊ.ˏ.action_bar);
    this.ʄ = findViewById(ڊ.ˏ.action_context_bar);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (this.ƭ) || (super.onInterceptTouchEvent(paramMotionEvent));
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    View localView = this.ɛ;
    if ((localView != null) && (localView.getVisibility() != 8)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      paramInt2 = getMeasuredHeight();
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localView.getLayoutParams();
      localView.layout(paramInt1, paramInt2 - localView.getMeasuredHeight() - localLayoutParams.bottomMargin, paramInt3, paramInt2 - localLayoutParams.bottomMargin);
    }
    paramInt1 = 0;
    paramInt2 = 0;
    if (this.ʢ)
    {
      if (this.ʡ != null)
      {
        this.ʡ.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        paramInt1 = 1;
      }
    }
    else
    {
      if (this.ɬ != null)
      {
        if (this.ɜ.getVisibility() == 0) {
          this.ɬ.setBounds(this.ɜ.getLeft(), this.ɜ.getTop(), this.ɜ.getRight(), this.ɜ.getBottom());
        } else if ((this.ʄ != null) && (this.ʄ.getVisibility() == 0)) {
          this.ɬ.setBounds(this.ʄ.getLeft(), this.ʄ.getTop(), this.ʄ.getRight(), this.ʄ.getBottom());
        } else {
          this.ɬ.setBounds(0, 0, 0, 0);
        }
        paramInt2 = 1;
      }
      this.Ϋ = paramBoolean;
      paramInt1 = paramInt2;
      if (paramBoolean)
      {
        paramInt1 = paramInt2;
        if (this.ʈ != null)
        {
          this.ʈ.setBounds(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom());
          paramInt1 = 1;
        }
      }
    }
    if (paramInt1 != 0) {
      invalidate();
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (this.ɜ == null)
    {
      i = paramInt2;
      if (View.MeasureSpec.getMode(paramInt2) == -2147483648)
      {
        i = paramInt2;
        if (this.γ >= 0) {
          i = View.MeasureSpec.makeMeasureSpec(Math.min(this.γ, View.MeasureSpec.getSize(paramInt2)), -2147483648);
        }
      }
    }
    super.onMeasure(paramInt1, i);
    if (this.ɜ == null) {
      return;
    }
    paramInt2 = View.MeasureSpec.getMode(i);
    if ((this.ɛ != null) && (this.ɛ.getVisibility() != 8) && (paramInt2 != 1073741824))
    {
      if (!ۥ(this.ɜ)) {
        paramInt1 = ᐠ(this.ɜ);
      } else if (!ۥ(this.ʄ)) {
        paramInt1 = ᐠ(this.ʄ);
      } else {
        paramInt1 = 0;
      }
      if (paramInt2 == -2147483648) {
        paramInt2 = View.MeasureSpec.getSize(i);
      } else {
        paramInt2 = 2147483647;
      }
      setMeasuredDimension(getMeasuredWidth(), Math.min(ᐠ(this.ɛ) + paramInt1, paramInt2));
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }
  
  public void setPrimaryBackground(Drawable paramDrawable)
  {
    if (this.ɬ != null)
    {
      this.ɬ.setCallback(null);
      unscheduleDrawable(this.ɬ);
    }
    this.ɬ = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if (this.ɜ != null) {
        this.ɬ.setBounds(this.ɜ.getLeft(), this.ɜ.getTop(), this.ɜ.getRight(), this.ɜ.getBottom());
      }
    }
    boolean bool;
    if (this.ʢ)
    {
      if (this.ʡ == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else if ((this.ɬ == null) && (this.ʈ == null)) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  public void setSplitBackground(Drawable paramDrawable)
  {
    if (this.ʡ != null)
    {
      this.ʡ.setCallback(null);
      unscheduleDrawable(this.ʡ);
    }
    this.ʡ = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((this.ʢ) && (this.ʡ != null)) {
        this.ʡ.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
      }
    }
    boolean bool;
    if (this.ʢ)
    {
      if (this.ʡ == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else if ((this.ɬ == null) && (this.ʈ == null)) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  public void setStackedBackground(Drawable paramDrawable)
  {
    if (this.ʈ != null)
    {
      this.ʈ.setCallback(null);
      unscheduleDrawable(this.ʈ);
    }
    this.ʈ = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable.setCallback(this);
      if ((this.Ϋ) && (this.ʈ != null)) {
        this.ʈ.setBounds(this.ɛ.getLeft(), this.ɛ.getTop(), this.ɛ.getRight(), this.ɛ.getBottom());
      }
    }
    boolean bool;
    if (this.ʢ)
    {
      if (this.ʡ == null) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else if ((this.ɬ == null) && (this.ʈ == null)) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  public void setTabContainer(ƚ paramƚ)
  {
    if (this.ɛ != null) {
      removeView(this.ɛ);
    }
    this.ɛ = paramƚ;
    if (paramƚ != null)
    {
      addView(paramƚ);
      ViewGroup.LayoutParams localLayoutParams = paramƚ.getLayoutParams();
      localLayoutParams.width = -1;
      localLayoutParams.height = -2;
      paramƚ.setAllowCollapse(false);
    }
  }
  
  public void setTransitioning(boolean paramBoolean)
  {
    this.ƭ = paramBoolean;
    int i;
    if (paramBoolean) {
      i = 393216;
    } else {
      i = 262144;
    }
    setDescendantFocusability(i);
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    boolean bool;
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (this.ɬ != null) {
      this.ɬ.setVisible(bool, false);
    }
    if (this.ʈ != null) {
      this.ʈ.setVisible(bool, false);
    }
    if (this.ʡ != null) {
      this.ʡ.setVisible(bool, false);
    }
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    return null;
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return ((paramDrawable == this.ɬ) && (!this.ʢ)) || ((paramDrawable == this.ʈ) && (this.Ϋ)) || ((paramDrawable == this.ʡ) && (this.ʢ)) || (super.verifyDrawable(paramDrawable));
  }
  
  public View า()
  {
    return this.ɛ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¼
 * JD-Core Version:    0.7.0.1
 */