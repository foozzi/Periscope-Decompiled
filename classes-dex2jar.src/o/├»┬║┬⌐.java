package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;

public class ﺩ
  extends ViewGroup
{
  private static final String LOG_TAG = ﺩ.class.getSimpleName();
  private static final int[] 丨 = { 16842766 };
  protected int ĵ;
  private ᒃ ĸ;
  private Animation Ĺ;
  private Animation Ļ;
  private Animation Ŀ;
  private Animation ř;
  private Animation ǰ;
  private float ɫ;
  private boolean ʇ;
  private int ʋ;
  private int Υ;
  private boolean ϟ;
  private Animation.AnimationListener Ѓ = new ﻨ(this);
  private boolean х;
  private final Animation ҁ = new ɪ(this);
  private final Animation Ґ = new ɾ(this);
  private int כ;
  private float ڏ;
  private View ڔ;
  private int ઽ = -1;
  private ﺩ.if לּ;
  private boolean ﮃ = false;
  private float ﮅ = -1.0F;
  private int ﱠ;
  private int ﱢ;
  private boolean ﺮ = false;
  private float ﻠ;
  private boolean ﻩ;
  private boolean ｃ;
  private final DecelerateInterpolator ｩ;
  private ר ｪ;
  private int ﾃ = -1;
  protected int ﾅ;
  private float ﾝ;
  
  public ﺩ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ﺩ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.כ = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    this.ﱠ = getResources().getInteger(17694721);
    setWillNotDraw(false);
    this.ｩ = new DecelerateInterpolator(2.0F);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, 丨);
    setEnabled(paramContext.getBoolean(0, true));
    paramContext.recycle();
    paramContext = getResources().getDisplayMetrics();
    this.ʋ = ((int)(paramContext.density * 40.0F));
    this.Υ = ((int)(paramContext.density * 40.0F));
    ᐢ();
    ﺑ.ˊ(this, true);
    this.ɫ = (paramContext.density * 64.0F);
    this.ﮅ = this.ɫ;
  }
  
  private void ˉ(float paramFloat)
  {
    if (ᒻ())
    {
      ۥ((int)(255.0F * paramFloat));
      return;
    }
    ﺑ.ˏ(this.ｪ, paramFloat);
    ﺑ.ᐝ(this.ｪ, paramFloat);
  }
  
  private void ˊ(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    this.ﾅ = paramInt;
    this.ҁ.reset();
    this.ҁ.setDuration(200L);
    this.ҁ.setInterpolator(this.ｩ);
    if (paramAnimationListener != null) {
      this.ｪ.setAnimationListener(paramAnimationListener);
    }
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(this.ҁ);
  }
  
  private void ˊ(Animation.AnimationListener paramAnimationListener)
  {
    this.ｪ.setVisibility(0);
    if (Build.VERSION.SDK_INT >= 11) {
      this.ĸ.setAlpha(255);
    }
    this.Ĺ = new ｨ(this);
    this.Ĺ.setDuration(this.ﱠ);
    if (paramAnimationListener != null) {
      this.ｪ.setAnimationListener(paramAnimationListener);
    }
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(this.Ĺ);
  }
  
  private void ˊ(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.ﮃ != paramBoolean1)
    {
      this.ʇ = paramBoolean2;
      ᔊ();
      this.ﮃ = paramBoolean1;
      if (this.ﮃ)
      {
        ˊ(this.ﱢ, this.Ѓ);
        return;
      }
      ˋ(this.Ѓ);
    }
  }
  
  private boolean ˊ(Animation paramAnimation)
  {
    return (paramAnimation != null) && (paramAnimation.hasStarted()) && (!paramAnimation.hasEnded());
  }
  
  private void ˋ(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    if (this.ﻩ)
    {
      ˎ(paramInt, paramAnimationListener);
      return;
    }
    this.ﾅ = paramInt;
    this.Ґ.reset();
    this.Ґ.setDuration(200L);
    this.Ґ.setInterpolator(this.ｩ);
    if (paramAnimationListener != null) {
      this.ｪ.setAnimationListener(paramAnimationListener);
    }
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(this.Ґ);
  }
  
  private void ˋ(Animation.AnimationListener paramAnimationListener)
  {
    this.Ļ = new Ȉ(this);
    this.Ļ.setDuration(150L);
    this.ｪ.setAnimationListener(paramAnimationListener);
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(this.Ļ);
  }
  
  private void ˌ(float paramFloat)
  {
    ˏ(this.ﾅ + (int)((this.ĵ - this.ﾅ) * paramFloat) - this.ｪ.getTop(), false);
  }
  
  private void ˎ(int paramInt, Animation.AnimationListener paramAnimationListener)
  {
    this.ﾅ = paramInt;
    if (ᒻ()) {
      this.ﾝ = this.ĸ.getAlpha();
    } else {
      this.ﾝ = ﺑ.ﾞ(this.ｪ);
    }
    this.ǰ = new ɿ(this);
    this.ǰ.setDuration(150L);
    if (paramAnimationListener != null) {
      this.ｪ.setAnimationListener(paramAnimationListener);
    }
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(this.ǰ);
  }
  
  private void ˏ(int paramInt, boolean paramBoolean)
  {
    this.ｪ.bringToFront();
    this.ｪ.offsetTopAndBottom(paramInt);
    this.ﱢ = this.ｪ.getTop();
    if ((paramBoolean) && (Build.VERSION.SDK_INT < 11)) {
      invalidate();
    }
  }
  
  private void ˏ(MotionEvent paramMotionEvent)
  {
    int i = ᵧ.ˋ(paramMotionEvent);
    if (ᵧ.ˋ(paramMotionEvent, i) == this.ઽ)
    {
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      }
      this.ઽ = ᵧ.ˋ(paramMotionEvent, i);
    }
  }
  
  private Animation ͺ(int paramInt1, int paramInt2)
  {
    if ((this.ﻩ) && (ᒻ())) {
      return null;
    }
    ȋ localȋ = new ȋ(this, paramInt1, paramInt2);
    localȋ.setDuration(300L);
    this.ｪ.setAnimationListener(null);
    this.ｪ.clearAnimation();
    this.ｪ.startAnimation(localȋ);
    return localȋ;
  }
  
  private void ۥ(int paramInt)
  {
    this.ｪ.getBackground().setAlpha(paramInt);
    this.ĸ.setAlpha(paramInt);
  }
  
  private float ᐝ(MotionEvent paramMotionEvent, int paramInt)
  {
    paramInt = ᵧ.ˊ(paramMotionEvent, paramInt);
    if (paramInt < 0) {
      return -1.0F;
    }
    return ᵧ.ˏ(paramMotionEvent, paramInt);
  }
  
  private void ᐢ()
  {
    this.ｪ = new ר(getContext(), -328966, 20.0F);
    this.ĸ = new ᒃ(getContext(), this);
    this.ĸ.setBackgroundColor(-328966);
    this.ｪ.setImageDrawable(this.ĸ);
    this.ｪ.setVisibility(8);
    addView(this.ｪ);
  }
  
  private boolean ᒻ()
  {
    return Build.VERSION.SDK_INT < 11;
  }
  
  private void ᔅ()
  {
    this.Ŀ = ͺ(this.ĸ.getAlpha(), 76);
  }
  
  private void ᔉ()
  {
    this.ř = ͺ(this.ĸ.getAlpha(), 255);
  }
  
  private void ᔊ()
  {
    if (this.ڔ == null)
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (!localView.equals(this.ｪ))
        {
          this.ڔ = localView;
          return;
        }
        i += 1;
      }
    }
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.ﾃ < 0) {
      return paramInt2;
    }
    if (paramInt2 == paramInt1 - 1) {
      return this.ﾃ;
    }
    if (paramInt2 >= this.ﾃ) {
      return paramInt2 + 1;
    }
    return paramInt2;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    ᔊ();
    int i = ᵧ.ˊ(paramMotionEvent);
    if ((this.ｃ) && (i == 0)) {
      this.ｃ = false;
    }
    if ((!isEnabled()) || (this.ｃ) || (ᔋ()) || (this.ﮃ)) {
      return false;
    }
    float f;
    switch (i)
    {
    default: 
      break;
    case 0: 
      ˏ(this.ĵ - this.ｪ.getTop(), true);
      this.ઽ = ᵧ.ˋ(paramMotionEvent, 0);
      this.х = false;
      f = ᐝ(paramMotionEvent, this.ઽ);
      if (f == -1.0F) {
        return false;
      }
      this.ﻠ = f;
      break;
    case 2: 
      if (this.ઽ == -1)
      {
        Log.e(LOG_TAG, "Got ACTION_MOVE event but don't have an active pointer id.");
        return false;
      }
      f = ᐝ(paramMotionEvent, this.ઽ);
      if (f == -1.0F) {
        return false;
      }
      if ((f - this.ﻠ > this.כ) && (!this.х))
      {
        this.ڏ = (this.ﻠ + this.כ);
        this.х = true;
        this.ĸ.setAlpha(76);
      }
      break;
    case 6: 
      ˏ(paramMotionEvent);
      break;
    case 1: 
    case 3: 
      this.х = false;
      this.ઽ = -1;
    }
    return this.х;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getMeasuredWidth();
    paramInt2 = getMeasuredHeight();
    if (getChildCount() == 0) {
      return;
    }
    if (this.ڔ == null) {
      ᔊ();
    }
    if (this.ڔ == null) {
      return;
    }
    View localView = this.ڔ;
    paramInt3 = getPaddingLeft();
    paramInt4 = getPaddingTop();
    localView.layout(paramInt3, paramInt4, paramInt3 + (paramInt1 - getPaddingLeft() - getPaddingRight()), paramInt4 + (paramInt2 - getPaddingTop() - getPaddingBottom()));
    paramInt2 = this.ｪ.getMeasuredWidth();
    paramInt3 = this.ｪ.getMeasuredHeight();
    this.ｪ.layout(paramInt1 / 2 - paramInt2 / 2, this.ﱢ, paramInt1 / 2 + paramInt2 / 2, this.ﱢ + paramInt3);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.ڔ == null) {
      ᔊ();
    }
    if (this.ڔ == null) {
      return;
    }
    this.ڔ.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824));
    this.ｪ.measure(View.MeasureSpec.makeMeasureSpec(this.ʋ, 1073741824), View.MeasureSpec.makeMeasureSpec(this.Υ, 1073741824));
    if ((!this.ϟ) && (!this.ﺮ))
    {
      this.ﺮ = true;
      paramInt1 = -this.ｪ.getMeasuredHeight();
      this.ĵ = paramInt1;
      this.ﱢ = paramInt1;
    }
    this.ﾃ = -1;
    paramInt1 = 0;
    while (paramInt1 < getChildCount())
    {
      if (getChildAt(paramInt1) == this.ｪ)
      {
        this.ﾃ = paramInt1;
        return;
      }
      paramInt1 += 1;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = ᵧ.ˊ(paramMotionEvent);
    if ((this.ｃ) && (i == 0)) {
      this.ｃ = false;
    }
    if ((!isEnabled()) || (this.ｃ) || (ᔋ())) {
      return false;
    }
    float f2;
    float f1;
    switch (i)
    {
    default: 
      break;
    case 0: 
      this.ઽ = ᵧ.ˋ(paramMotionEvent, 0);
      this.х = false;
      break;
    case 2: 
      i = ᵧ.ˊ(paramMotionEvent, this.ઽ);
      if (i < 0)
      {
        Log.e(LOG_TAG, "Got ACTION_MOVE event but have an invalid active pointer id.");
        return false;
      }
      f2 = (ᵧ.ˏ(paramMotionEvent, i) - this.ڏ) * 0.5F;
      if (this.х)
      {
        this.ĸ.ι(true);
        f1 = f2 / this.ﮅ;
        if (f1 < 0.0F) {
          return false;
        }
        float f3 = Math.min(1.0F, Math.abs(f1));
        float f4 = (float)Math.max(f3 - 0.4D, 0.0D) * 5.0F / 3.0F;
        float f5 = Math.abs(f2);
        float f6 = this.ﮅ;
        if (this.ϟ) {
          f1 = this.ɫ - this.ĵ;
        } else {
          f1 = this.ɫ;
        }
        f5 = Math.max(0.0F, Math.min(f5 - f6, 2.0F * f1) / f1);
        f5 = (float)(f5 / 4.0F - Math.pow(f5 / 4.0F, 2.0D)) * 2.0F;
        i = this.ĵ;
        int j = (int)(f1 * f3 + f1 * f5 * 2.0F);
        if (this.ｪ.getVisibility() != 0) {
          this.ｪ.setVisibility(0);
        }
        if (!this.ﻩ)
        {
          ﺑ.ˏ(this.ｪ, 1.0F);
          ﺑ.ᐝ(this.ｪ, 1.0F);
        }
        if (f2 < this.ﮅ)
        {
          if (this.ﻩ) {
            ˉ(f2 / this.ﮅ);
          }
          if ((this.ĸ.getAlpha() > 76) && (!ˊ(this.Ŀ))) {
            ᔅ();
          }
          this.ĸ.ͺ(0.0F, Math.min(0.8F, f4 * 0.8F));
          this.ĸ.ι(Math.min(1.0F, f4));
        }
        else if ((this.ĸ.getAlpha() < 255) && (!ˊ(this.ř)))
        {
          ᔉ();
        }
        this.ĸ.ʾ((0.4F * f4 - 0.25F + 2.0F * f5) * 0.5F);
        ˏ(i + j - this.ﱢ, true);
      }
      break;
    case 5: 
      this.ઽ = ᵧ.ˋ(paramMotionEvent, ᵧ.ˋ(paramMotionEvent));
      break;
    case 6: 
      ˏ(paramMotionEvent);
      break;
    case 1: 
    case 3: 
      if (this.ઽ == -1)
      {
        if (i == 1) {
          Log.e(LOG_TAG, "Got ACTION_UP event but don't have an active pointer id.");
        }
        return false;
      }
      f1 = ᵧ.ˏ(paramMotionEvent, ᵧ.ˊ(paramMotionEvent, this.ઽ));
      f2 = this.ڏ;
      this.х = false;
      if ((f1 - f2) * 0.5F > this.ﮅ)
      {
        ˊ(true, true);
      }
      else
      {
        this.ﮃ = false;
        this.ĸ.ͺ(0.0F, 0.0F);
        paramMotionEvent = null;
        if (!this.ﻩ) {
          paramMotionEvent = new ɨ(this);
        }
        ˋ(this.ﱢ, paramMotionEvent);
        this.ĸ.ι(false);
      }
      this.ઽ = -1;
      return false;
    }
    return true;
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean) {}
  
  @Deprecated
  public void setColorScheme(int... paramVarArgs)
  {
    setColorSchemeResources(paramVarArgs);
  }
  
  public void setColorSchemeColors(int... paramVarArgs)
  {
    ᔊ();
    this.ĸ.setColorSchemeColors(paramVarArgs);
  }
  
  public void setColorSchemeResources(int... paramVarArgs)
  {
    Resources localResources = getResources();
    int[] arrayOfInt = new int[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfInt[i] = localResources.getColor(paramVarArgs[i]);
      i += 1;
    }
    setColorSchemeColors(arrayOfInt);
  }
  
  public void setDistanceToTriggerSync(int paramInt)
  {
    this.ﮅ = paramInt;
  }
  
  public void setOnRefreshListener(ﺩ.if paramif)
  {
    this.לּ = paramif;
  }
  
  @Deprecated
  public void setProgressBackgroundColor(int paramInt)
  {
    setProgressBackgroundColorSchemeResource(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeColor(int paramInt)
  {
    this.ｪ.setBackgroundColor(paramInt);
    this.ĸ.setBackgroundColor(paramInt);
  }
  
  public void setProgressBackgroundColorSchemeResource(int paramInt)
  {
    setProgressBackgroundColorSchemeColor(getResources().getColor(paramInt));
  }
  
  public void setProgressViewEndTarget(boolean paramBoolean, int paramInt)
  {
    this.ɫ = paramInt;
    this.ﻩ = paramBoolean;
    this.ｪ.invalidate();
  }
  
  public void setProgressViewOffset(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.ﻩ = paramBoolean;
    this.ｪ.setVisibility(8);
    this.ﱢ = paramInt1;
    this.ĵ = paramInt1;
    this.ɫ = paramInt2;
    this.ϟ = true;
    this.ｪ.invalidate();
  }
  
  public void setRefreshing(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.ﮃ != paramBoolean))
    {
      this.ﮃ = paramBoolean;
      int i;
      if (!this.ϟ) {
        i = (int)(this.ɫ + this.ĵ);
      } else {
        i = (int)this.ɫ;
      }
      ˏ(i - this.ﱢ, true);
      this.ʇ = false;
      ˊ(this.Ѓ);
      return;
    }
    ˊ(paramBoolean, false);
  }
  
  public void setSize(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      return;
    }
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    int i;
    if (paramInt == 0)
    {
      i = (int)(localDisplayMetrics.density * 56.0F);
      this.ʋ = i;
      this.Υ = i;
    }
    else
    {
      i = (int)(localDisplayMetrics.density * 40.0F);
      this.ʋ = i;
      this.Υ = i;
    }
    this.ｪ.setImageDrawable(null);
    this.ĸ.ˡ(paramInt);
    this.ｪ.setImageDrawable(this.ĸ);
  }
  
  public boolean ᔋ()
  {
    if (Build.VERSION.SDK_INT < 14)
    {
      if ((this.ڔ instanceof AbsListView))
      {
        AbsListView localAbsListView = (AbsListView)this.ڔ;
        return (localAbsListView.getChildCount() > 0) && ((localAbsListView.getFirstVisiblePosition() > 0) || (localAbsListView.getChildAt(0).getTop() < localAbsListView.getPaddingTop()));
      }
      return (ﺑ.ˎ(this.ڔ, -1)) || (this.ڔ.getScrollY() > 0);
    }
    return ﺑ.ˎ(this.ڔ, -1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº©
 * JD-Core Version:    0.7.0.1
 */