package o;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public class 一
  extends ViewGroup
{
  static final int[] ᐹ = { ڊ.if.actionBarSize, 16842841 };
  private int ӌ;
  private int ԁ = 0;
  private ﺫ ԅ;
  private ー ւ;
  private ー ח;
  private ﻴ צ;
  private Drawable ب;
  private boolean م;
  private boolean ٵ;
  private boolean ڋ;
  private boolean ڒ;
  private boolean ڕ;
  private int ڹ;
  private int ۂ;
  private final Rect ۊ = new Rect();
  private final Rect ܚ = new Rect();
  private final Rect ܪ = new Rect();
  private final Rect ܬ = new Rect();
  private final Rect र = new Rect();
  private final Rect ঌ = new Rect();
  private 一.if গ;
  private final int ঢ = 600;
  private ⅼ ব;
  private ᵘ শ;
  private ᵘ ঽ;
  private final ﭔ ก = new גּ(this);
  private final ﭔ კ = new זּ(this);
  private final Runnable ᐯ = new נּ(this);
  private final Runnable ᐴ = new רּ(this);
  private final וֹ ᒌ;
  
  public 一(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public 一(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
    this.ᒌ = new וֹ(this);
  }
  
  private boolean ʿ(float paramFloat1, float paramFloat2)
  {
    this.ব.fling(0, 0, 0, (int)paramFloat2, 0, 0, -2147483648, 2147483647);
    return this.ব.getFinalY() > this.ח.getHeight();
  }
  
  private void ˊ(Context paramContext)
  {
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(ᐹ);
    this.ӌ = localTypedArray.getDimensionPixelSize(0, 0);
    this.ب = localTypedArray.getDrawable(1);
    boolean bool;
    if (this.ب == null) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    localTypedArray.recycle();
    if (paramContext.getApplicationInfo().targetSdkVersion < 19) {
      bool = true;
    } else {
      bool = false;
    }
    this.م = bool;
    this.ব = ⅼ.ˎ(paramContext);
  }
  
  private boolean ˊ(View paramView, Rect paramRect, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    boolean bool2 = false;
    paramView = (一.ˊ)paramView.getLayoutParams();
    boolean bool1 = bool2;
    if (paramBoolean1)
    {
      bool1 = bool2;
      if (paramView.leftMargin != paramRect.left)
      {
        bool1 = true;
        paramView.leftMargin = paramRect.left;
      }
    }
    paramBoolean1 = bool1;
    if (paramBoolean2)
    {
      paramBoolean1 = bool1;
      if (paramView.topMargin != paramRect.top)
      {
        paramBoolean1 = true;
        paramView.topMargin = paramRect.top;
      }
    }
    paramBoolean2 = paramBoolean1;
    if (paramBoolean4)
    {
      paramBoolean2 = paramBoolean1;
      if (paramView.rightMargin != paramRect.right)
      {
        paramBoolean2 = true;
        paramView.rightMargin = paramRect.right;
      }
    }
    paramBoolean1 = paramBoolean2;
    if (paramBoolean3)
    {
      paramBoolean1 = paramBoolean2;
      if (paramView.bottomMargin != paramRect.bottom)
      {
        paramBoolean1 = true;
        paramView.bottomMargin = paramRect.bottom;
      }
    }
    return paramBoolean1;
  }
  
  private ﻴ ᐣ(View paramView)
  {
    if ((paramView instanceof ﻴ)) {
      return (ﻴ)paramView;
    }
    if ((paramView instanceof Toolbar)) {
      return ((Toolbar)paramView).Γ();
    }
    throw new IllegalStateException("Can't make a decor toolbar out of " + paramView.getClass().getSimpleName());
  }
  
  private void ᵏ()
  {
    removeCallbacks(this.ᐯ);
    removeCallbacks(this.ᐴ);
    if (this.শ != null) {
      this.শ.cancel();
    }
    if (this.ঽ != null) {
      this.ঽ.cancel();
    }
  }
  
  private void ⅼ()
  {
    ᵏ();
    postDelayed(this.ᐯ, 600L);
  }
  
  private void ﭘ()
  {
    ᵏ();
    postDelayed(this.ᐴ, 600L);
  }
  
  private void ﺒ()
  {
    ᵏ();
    this.ᐯ.run();
  }
  
  private void ﺛ()
  {
    ᵏ();
    this.ᐴ.run();
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof 一.ˊ;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((this.ب != null) && (!this.م))
    {
      int i;
      if (this.ח.getVisibility() == 0) {
        i = (int)(this.ח.getBottom() + ﺑ.ـ(this.ח) + 0.5F);
      } else {
        i = 0;
      }
      this.ب.setBounds(0, i, getWidth(), this.ب.getIntrinsicHeight() + i);
      this.ب.draw(paramCanvas);
    }
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    ᴊ();
    if ((ﺑ.ʹ(this) & 0x100) == 0) {}
    boolean bool2 = ˊ(this.ח, paramRect, true, true, false, true);
    boolean bool1 = bool2;
    if (this.ւ != null) {
      bool1 = bool2 | ˊ(this.ւ, paramRect, true, false, true, true);
    }
    this.ܬ.set(paramRect);
    ᓯ.ˊ(this, this.ܬ, this.ۊ);
    if (!this.ܚ.equals(this.ۊ))
    {
      bool1 = true;
      this.ܚ.set(this.ۊ);
    }
    if (bool1) {
      requestLayout();
    }
    return true;
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new 一.ˊ(paramLayoutParams);
  }
  
  public int getNestedScrollAxes()
  {
    return this.ᒌ.getNestedScrollAxes();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    ˊ(getContext());
    ﺑ.ՙ(this);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    ᵏ();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = getPaddingLeft();
    getPaddingRight();
    int k = getPaddingTop();
    int m = getPaddingBottom();
    paramInt1 = 0;
    while (paramInt1 < i)
    {
      View localView = getChildAt(paramInt1);
      if (localView.getVisibility() != 8)
      {
        一.ˊ localˊ = (一.ˊ)localView.getLayoutParams();
        int n = localView.getMeasuredWidth();
        int i1 = localView.getMeasuredHeight();
        int i2 = j + localˊ.leftMargin;
        if (localView == this.ւ) {
          paramInt3 = paramInt4 - paramInt2 - m - i1 - localˊ.bottomMargin;
        } else {
          paramInt3 = k + localˊ.topMargin;
        }
        localView.layout(i2, paramInt3, i2 + n, paramInt3 + i1);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ᴊ();
    int i = 0;
    int i2 = 0;
    measureChildWithMargins(this.ח, paramInt1, 0, paramInt2, 0);
    Object localObject = (一.ˊ)this.ח.getLayoutParams();
    int i3 = Math.max(0, this.ח.getMeasuredWidth() + ((一.ˊ)localObject).leftMargin + ((一.ˊ)localObject).rightMargin);
    int i1 = Math.max(0, this.ח.getMeasuredHeight() + ((一.ˊ)localObject).topMargin + ((一.ˊ)localObject).bottomMargin);
    int j = ᓯ.combineMeasuredStates(0, ﺑ.ˍ(this.ח));
    int m = i1;
    int n = i3;
    int k = j;
    if (this.ւ != null)
    {
      measureChildWithMargins(this.ւ, paramInt1, 0, paramInt2, 0);
      localObject = (一.ˊ)this.ւ.getLayoutParams();
      n = Math.max(i3, this.ւ.getMeasuredWidth() + ((一.ˊ)localObject).leftMargin + ((一.ˊ)localObject).rightMargin);
      m = Math.max(i1, this.ւ.getMeasuredHeight() + ((一.ˊ)localObject).topMargin + ((一.ˊ)localObject).bottomMargin);
      k = ᓯ.combineMeasuredStates(j, ﺑ.ˍ(this.ւ));
    }
    if ((ﺑ.ʹ(this) & 0x100) != 0) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      j = this.ӌ;
      i = j;
      if (this.ڋ)
      {
        i = j;
        if (this.ח.า() != null) {
          i = j + this.ӌ;
        }
      }
    }
    else if (this.ח.getVisibility() != 8)
    {
      i = this.ח.getMeasuredHeight();
    }
    j = i2;
    if (this.צ.ᴾ())
    {
      j = i2;
      if (this.ւ != null) {
        if (i1 != 0) {
          j = this.ӌ;
        } else {
          j = this.ւ.getMeasuredHeight();
        }
      }
    }
    this.ܪ.set(this.ۊ);
    this.र.set(this.ܬ);
    if ((!this.ٵ) && (i1 == 0))
    {
      localObject = this.ܪ;
      ((Rect)localObject).top += i;
      localObject = this.ܪ;
      ((Rect)localObject).bottom += j;
    }
    else
    {
      localObject = this.र;
      ((Rect)localObject).top += i;
      localObject = this.र;
      ((Rect)localObject).bottom += j;
    }
    ˊ(this.ԅ, this.ܪ, true, true, true, true);
    if (!this.ঌ.equals(this.र))
    {
      this.ঌ.set(this.र);
      this.ԅ.ˊ(this.र);
    }
    measureChildWithMargins(this.ԅ, paramInt1, 0, paramInt2, 0);
    localObject = (一.ˊ)this.ԅ.getLayoutParams();
    i = Math.max(n, this.ԅ.getMeasuredWidth() + ((一.ˊ)localObject).leftMargin + ((一.ˊ)localObject).rightMargin);
    j = Math.max(m, this.ԅ.getMeasuredHeight() + ((一.ˊ)localObject).topMargin + ((一.ˊ)localObject).bottomMargin);
    k = ᓯ.combineMeasuredStates(k, ﺑ.ˍ(this.ԅ));
    m = getPaddingLeft();
    n = getPaddingRight();
    j = Math.max(j + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
    setMeasuredDimension(ﺑ.resolveSizeAndState(Math.max(i + (m + n), getSuggestedMinimumWidth()), paramInt1, k), ﺑ.resolveSizeAndState(j, paramInt2, k << 16));
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    if ((!this.ڒ) || (!paramBoolean)) {
      return false;
    }
    if (ʿ(paramFloat1, paramFloat2)) {
      ﺛ();
    } else {
      ﺒ();
    }
    this.ڕ = true;
    return true;
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt) {}
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ڹ += paramInt2;
    setActionBarHideOffset(this.ڹ);
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    this.ᒌ.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    this.ڹ = ᴷ();
    ᵏ();
    if (this.গ != null) {
      this.গ.ｨ();
    }
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) == 0) || (this.ח.getVisibility() != 0)) {
      return false;
    }
    return this.ڒ;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    if ((this.ڒ) && (!this.ڕ)) {
      if (this.ڹ <= this.ח.getHeight()) {
        ⅼ();
      } else {
        ﭘ();
      }
    }
    if (this.গ != null) {
      this.গ.Ȉ();
    }
  }
  
  public void onWindowSystemUiVisibilityChanged(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      super.onWindowSystemUiVisibilityChanged(paramInt);
    }
    ᴊ();
    int k = this.ۂ;
    this.ۂ = paramInt;
    int i;
    if ((paramInt & 0x4) == 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((paramInt & 0x100) != 0) {
      j = 1;
    } else {
      j = 0;
    }
    if (this.গ != null)
    {
      一.if localif = this.গ;
      boolean bool;
      if (j == 0) {
        bool = true;
      } else {
        bool = false;
      }
      localif.ʹ(bool);
      if ((i != 0) || (j == 0)) {
        this.গ.ﺩ();
      } else {
        this.গ.ﻨ();
      }
    }
    if ((((k ^ paramInt) & 0x100) != 0) && (this.গ != null)) {
      ﺑ.ՙ(this);
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    this.ԁ = paramInt;
    if (this.গ != null) {
      this.গ.onWindowVisibilityChanged(paramInt);
    }
  }
  
  public void setActionBarHideOffset(int paramInt)
  {
    ᵏ();
    int i = this.ח.getHeight();
    paramInt = Math.max(0, Math.min(paramInt, i));
    ﺑ.ˋ(this.ח, -paramInt);
    if ((this.ւ != null) && (this.ւ.getVisibility() != 8))
    {
      float f = paramInt / i;
      paramInt = (int)(this.ւ.getHeight() * f);
      ﺑ.ˋ(this.ւ, paramInt);
    }
  }
  
  public void setActionBarVisibilityCallback(一.if paramif)
  {
    this.গ = paramif;
    if (getWindowToken() != null)
    {
      this.গ.onWindowVisibilityChanged(this.ԁ);
      if (this.ۂ != 0)
      {
        onWindowSystemUiVisibilityChanged(this.ۂ);
        ﺑ.ՙ(this);
      }
    }
  }
  
  public void setHasNonEmbeddedTabs(boolean paramBoolean)
  {
    this.ڋ = paramBoolean;
  }
  
  public void setHideOnContentScrollEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.ڒ)
    {
      this.ڒ = paramBoolean;
      if (!paramBoolean)
      {
        ᵏ();
        setActionBarHideOffset(0);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    ᴊ();
    this.צ.setIcon(paramInt);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    ᴊ();
    this.צ.setIcon(paramDrawable);
  }
  
  public void setLogo(int paramInt)
  {
    ᴊ();
    this.צ.setLogo(paramInt);
  }
  
  public void setMenu(Menu paramMenu, ᵉ.if paramif)
  {
    ᴊ();
    this.צ.setMenu(paramMenu, paramif);
  }
  
  public void setMenuPrepared()
  {
    ᴊ();
    this.צ.setMenuPrepared();
  }
  
  public void setOverlayMode(boolean paramBoolean)
  {
    this.ٵ = paramBoolean;
    if ((paramBoolean) && (getContext().getApplicationInfo().targetSdkVersion < 19)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.م = paramBoolean;
  }
  
  public void setShowingForActionMode(boolean paramBoolean) {}
  
  public void setUiOptions(int paramInt) {}
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    ᴊ();
    this.צ.setWindowCallback(paramCallback);
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    ᴊ();
    this.צ.setWindowTitle(paramCharSequence);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public 一.ˊ ˊ(AttributeSet paramAttributeSet)
  {
    return new 一.ˊ(getContext(), paramAttributeSet);
  }
  
  protected 一.ˊ ᙆ()
  {
    return new 一.ˊ(-1, -1);
  }
  
  void ᴊ()
  {
    if (this.ԅ == null)
    {
      this.ԅ = ((ﺫ)findViewById(ڊ.ˏ.action_bar_activity_content));
      this.ח = ((ー)findViewById(ڊ.ˏ.action_bar_container));
      this.צ = ᐣ(findViewById(ڊ.ˏ.action_bar));
      this.ւ = ((ー)findViewById(ڊ.ˏ.split_action_bar));
    }
  }
  
  public int ᴷ()
  {
    if (this.ח != null) {
      return -(int)ﺑ.ـ(this.ח);
    }
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ä¸
 * JD-Core Version:    0.7.0.1
 */