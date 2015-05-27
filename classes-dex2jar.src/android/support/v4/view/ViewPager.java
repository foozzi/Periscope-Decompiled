package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import o.ˣ;
import o.ܝ;
import o.ᒻ;
import o.ᒾ;
import o.ᔾ;
import o.ᕐ;
import o.ᕝ;
import o.ᵒ;
import o.ᵧ;
import o.ﹲ;
import o.ﹻ;
import o.ﺑ;

public class ViewPager
  extends ViewGroup
{
  private static final ViewPager.ʼ Ὶ = new ViewPager.ʼ();
  private static final int[] 丨 = { 16842931 };
  private static final Comparator<ViewPager.ˊ> 灬 = new ᔾ();
  private static final Interpolator ﭙ = new ᕐ();
  private boolean mInLayout;
  private ClassLoader ľ = null;
  private Scroller ǀ;
  private ViewPager.ʻ ɔ;
  private int ɟ;
  private Drawable ɺ;
  private int ɼ;
  private int ʱ;
  private float ˠ = -3.402824E+038F;
  private float Ί = 3.4028235E+38F;
  private int ϲ;
  private int ϳ;
  private boolean Ј;
  private boolean с;
  private int т = 1;
  private boolean х;
  private boolean ј;
  private int ґ;
  private int ך;
  private int כ;
  private float ء;
  private float ر;
  private float ڎ;
  private float ڏ;
  private int ઽ = -1;
  private int ເ;
  private int ᓰ;
  private int ᓲ;
  private VelocityTracker ᓴ;
  private int ᓵ;
  private boolean ᔿ;
  private ܝ ᕻ;
  private ܝ ᴄ;
  private boolean ᴐ = true;
  private boolean ᴛ = false;
  private boolean ᴺ;
  private int ᵈ;
  private aux ᵑ;
  private aux ᵨ;
  private ViewPager.ˏ Ḯ;
  private ViewPager.ᐝ Ἰ;
  private Method Ἱ;
  private int Ῐ;
  private ArrayList<View> Ῑ;
  private final Runnable Ί = new ᕝ(this);
  private int ℴ = 0;
  private int 氵;
  private final ArrayList<ViewPager.ˊ> ﮂ = new ArrayList();
  private final ViewPager.ˊ ﮄ = new ViewPager.ˊ();
  private final Rect ﹽ = new Rect();
  private ﹲ ﺋ;
  private int ﺜ;
  private int ﻟ = -1;
  private Parcelable ﾉ = null;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    ᒽ();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ᒽ();
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.Ј != paramBoolean) {
      this.Ј = paramBoolean;
    }
  }
  
  private void ʻ(boolean paramBoolean)
  {
    int i;
    if (this.ℴ == 2) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      setScrollingCacheEnabled(false);
      this.ǀ.abortAnimation();
      j = getScrollX();
      int k = getScrollY();
      int m = this.ǀ.getCurrX();
      int n = this.ǀ.getCurrY();
      if ((j != m) || (k != n))
      {
        scrollTo(m, n);
        if (m != j) {
          ﹳ(m);
        }
      }
    }
    this.с = false;
    int j = 0;
    while (j < this.ﮂ.size())
    {
      ViewPager.ˊ localˊ = (ViewPager.ˊ)this.ﮂ.get(j);
      if (localˊ.ײַ)
      {
        i = 1;
        localˊ.ײַ = false;
      }
      j += 1;
    }
    if (i != 0)
    {
      if (paramBoolean)
      {
        ﺑ.ˊ(this, this.Ί);
        return;
      }
      this.Ί.run();
    }
  }
  
  private void ʼ(boolean paramBoolean)
  {
    int k = getChildCount();
    int i = 0;
    while (i < k)
    {
      int j;
      if (paramBoolean) {
        j = 2;
      } else {
        j = 0;
      }
      ﺑ.ˊ(getChildAt(i), j, null);
      i += 1;
    }
  }
  
  private void ʽ(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
    }
  }
  
  private int ˊ(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > this.ᓲ) && (Math.abs(paramInt2) > this.ເ))
    {
      if (paramInt2 <= 0) {
        paramInt1 += 1;
      }
    }
    else
    {
      float f;
      if (paramInt1 >= this.ﺜ) {
        f = 0.4F;
      } else {
        f = 0.6F;
      }
      paramInt1 = (int)(paramInt1 + paramFloat + f);
    }
    paramInt2 = paramInt1;
    if (this.ﮂ.size() > 0)
    {
      ViewPager.ˊ localˊ1 = (ViewPager.ˊ)this.ﮂ.get(0);
      ViewPager.ˊ localˊ2 = (ViewPager.ˊ)this.ﮂ.get(this.ﮂ.size() - 1);
      paramInt2 = Math.max(localˊ1.position, Math.min(paramInt1, localˊ2.position));
    }
    return paramInt2;
  }
  
  private Rect ˊ(Rect paramRect, View paramView)
  {
    Rect localRect = paramRect;
    if (paramRect == null) {
      localRect = new Rect();
    }
    if (paramView == null)
    {
      localRect.set(0, 0, 0, 0);
      return localRect;
    }
    localRect.left = paramView.getLeft();
    localRect.right = paramView.getRight();
    localRect.top = paramView.getTop();
    localRect.bottom = paramView.getBottom();
    for (paramRect = paramView.getParent(); ((paramRect instanceof ViewGroup)) && (paramRect != this); paramRect = paramRect.getParent())
    {
      paramRect = (ViewGroup)paramRect;
      localRect.left += paramRect.getLeft();
      localRect.right += paramRect.getRight();
      localRect.top += paramRect.getTop();
      localRect.bottom += paramRect.getBottom();
    }
    return localRect;
  }
  
  private void ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f;
    if ((paramInt2 > 0) && (!this.ﮂ.isEmpty()))
    {
      int i = getPaddingLeft();
      int j = getPaddingRight();
      int k = getPaddingLeft();
      int m = getPaddingRight();
      f = getScrollX() / (paramInt2 - k - m + paramInt4);
      paramInt2 = (int)((paramInt1 - i - j + paramInt3) * f);
      scrollTo(paramInt2, getScrollY());
      if (!this.ǀ.isFinished())
      {
        paramInt3 = this.ǀ.getDuration();
        paramInt4 = this.ǀ.timePassed();
        localˊ = ᐨ(this.ﺜ);
        this.ǀ.startScroll(paramInt2, 0, (int)(localˊ.דּ * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    ViewPager.ˊ localˊ = ᐨ(this.ﺜ);
    if (localˊ != null) {
      f = Math.min(localˊ.דּ, this.Ί);
    } else {
      f = 0.0F;
    }
    paramInt1 = (int)((paramInt1 - getPaddingLeft() - getPaddingRight()) * f);
    if (paramInt1 != getScrollX())
    {
      ʻ(false);
      scrollTo(paramInt1, getScrollY());
    }
  }
  
  private void ˊ(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    ViewPager.ˊ localˊ = ᐨ(paramInt1);
    int i = 0;
    if (localˊ != null) {
      i = (int)(ᔈ() * Math.max(this.ˠ, Math.min(localˊ.דּ, this.Ί)));
    }
    if (paramBoolean1)
    {
      ˊ(i, 0, paramInt2);
      if ((paramBoolean2) && (this.ᵑ != null)) {
        this.ᵑ.ﾞ(paramInt1);
      }
      if ((paramBoolean2) && (this.ᵨ != null)) {
        this.ᵨ.ﾞ(paramInt1);
      }
    }
    else
    {
      if ((paramBoolean2) && (this.ᵑ != null)) {
        this.ᵑ.ﾞ(paramInt1);
      }
      if ((paramBoolean2) && (this.ᵨ != null)) {
        this.ᵨ.ﾞ(paramInt1);
      }
      ʻ(false);
      scrollTo(i, 0);
      ﹳ(i);
    }
  }
  
  private void ˊ(ViewPager.ˊ paramˊ1, int paramInt, ViewPager.ˊ paramˊ2)
  {
    int m = this.ﺋ.getCount();
    int i = ᔈ();
    float f2;
    if (i > 0) {
      f2 = this.ɟ / i;
    } else {
      f2 = 0.0F;
    }
    int k;
    if (paramˊ2 != null)
    {
      i = paramˊ2.position;
      if (i < paramˊ1.position)
      {
        j = 0;
        f1 = paramˊ2.דּ + paramˊ2.ﬧ + f2;
        i += 1;
        while ((i <= paramˊ1.position) && (j < this.ﮂ.size()))
        {
          for (paramˊ2 = (ViewPager.ˊ)this.ﮂ.get(j);; paramˊ2 = (ViewPager.ˊ)this.ﮂ.get(j))
          {
            f3 = f1;
            k = i;
            if (i <= paramˊ2.position) {
              break;
            }
            f3 = f1;
            k = i;
            if (j >= this.ﮂ.size() - 1) {
              break;
            }
            j += 1;
          }
          while (k < paramˊ2.position)
          {
            f3 += this.ﺋ.ˑ(k) + f2;
            k += 1;
          }
          paramˊ2.דּ = f3;
          f1 = f3 + (paramˊ2.ﬧ + f2);
          i = k + 1;
        }
      }
      else if (i > paramˊ1.position)
      {
        j = this.ﮂ.size() - 1;
        f1 = paramˊ2.דּ;
        i -= 1;
        while ((i >= paramˊ1.position) && (j >= 0))
        {
          for (paramˊ2 = (ViewPager.ˊ)this.ﮂ.get(j);; paramˊ2 = (ViewPager.ˊ)this.ﮂ.get(j))
          {
            f3 = f1;
            k = i;
            if (i >= paramˊ2.position) {
              break;
            }
            f3 = f1;
            k = i;
            if (j <= 0) {
              break;
            }
            j -= 1;
          }
          while (k > paramˊ2.position)
          {
            f3 -= this.ﺋ.ˑ(k) + f2;
            k -= 1;
          }
          f1 = f3 - (paramˊ2.ﬧ + f2);
          paramˊ2.דּ = f1;
          i = k - 1;
        }
      }
    }
    int n = this.ﮂ.size();
    float f3 = paramˊ1.דּ;
    i = paramˊ1.position - 1;
    if (paramˊ1.position == 0) {
      f1 = paramˊ1.דּ;
    } else {
      f1 = -3.402824E+038F;
    }
    this.ˠ = f1;
    if (paramˊ1.position == m - 1) {
      f1 = paramˊ1.דּ + paramˊ1.ﬧ - 1.0F;
    } else {
      f1 = 3.4028235E+38F;
    }
    this.Ί = f1;
    int j = paramInt - 1;
    float f1 = f3;
    while (j >= 0)
    {
      paramˊ2 = (ViewPager.ˊ)this.ﮂ.get(j);
      while (i > paramˊ2.position)
      {
        ﹲ localﹲ = this.ﺋ;
        k = i - 1;
        f1 -= localﹲ.ˑ(i) + f2;
        i = k;
      }
      f1 -= paramˊ2.ﬧ + f2;
      paramˊ2.דּ = f1;
      if (paramˊ2.position == 0) {
        this.ˠ = f1;
      }
      j -= 1;
      i -= 1;
    }
    f1 = paramˊ1.דּ + paramˊ1.ﬧ + f2;
    j = paramˊ1.position + 1;
    i = paramInt + 1;
    paramInt = j;
    while (i < n)
    {
      paramˊ1 = (ViewPager.ˊ)this.ﮂ.get(i);
      while (paramInt < paramˊ1.position)
      {
        paramˊ2 = this.ﺋ;
        j = paramInt + 1;
        f1 += paramˊ2.ˑ(paramInt) + f2;
        paramInt = j;
      }
      if (paramˊ1.position == m - 1) {
        this.Ί = (paramˊ1.ﬧ + f1 - 1.0F);
      }
      paramˊ1.דּ = f1;
      f1 += paramˊ1.ﬧ + f2;
      i += 1;
      paramInt += 1;
    }
    this.ᴛ = false;
  }
  
  private boolean ˊ(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < this.ך) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - this.ך) && (paramFloat2 < 0.0F));
  }
  
  private boolean ˋ(float paramFloat)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    float f1 = this.ء;
    this.ء = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int k = ᔈ();
    paramFloat = k * this.ˠ;
    f1 = k * this.Ί;
    int i = 1;
    int j = 1;
    ViewPager.ˊ localˊ1 = (ViewPager.ˊ)this.ﮂ.get(0);
    ViewPager.ˊ localˊ2 = (ViewPager.ˊ)this.ﮂ.get(this.ﮂ.size() - 1);
    if (localˊ1.position != 0)
    {
      i = 0;
      paramFloat = localˊ1.דּ * k;
    }
    if (localˊ2.position != this.ﺋ.getCount() - 1)
    {
      j = 0;
      f1 = localˊ2.דּ * k;
    }
    if (f2 < paramFloat)
    {
      if (i != 0) {
        bool1 = this.ᕻ.ͺ(Math.abs(paramFloat - f2) / k);
      }
    }
    else
    {
      bool1 = bool3;
      paramFloat = f2;
      if (f2 > f1)
      {
        bool1 = bool2;
        if (j != 0) {
          bool1 = this.ᴄ.ͺ(Math.abs(f2 - f1) / k);
        }
        paramFloat = f1;
      }
    }
    this.ء += paramFloat - (int)paramFloat;
    scrollTo((int)paramFloat, getScrollY());
    ﹳ((int)paramFloat);
    return bool1;
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
      this.ء = ᵧ.ˎ(paramMotionEvent, i);
      this.ઽ = ᵧ.ˋ(paramMotionEvent, i);
      if (this.ᓴ != null) {
        this.ᓴ.clear();
      }
    }
  }
  
  private void ـ(int paramInt)
  {
    if (this.ℴ == paramInt) {
      return;
    }
    this.ℴ = paramInt;
    if (this.Ἰ != null)
    {
      boolean bool;
      if (paramInt != 0) {
        bool = true;
      } else {
        bool = false;
      }
      ʼ(bool);
    }
    if (this.ᵑ != null) {
      this.ᵑ.ʹ(paramInt);
    }
  }
  
  private void ᔇ()
  {
    int j;
    for (int i = 0; i < getChildCount(); i = j + 1)
    {
      j = i;
      if (!((ViewPager.ˋ)getChildAt(i).getLayoutParams()).ﭝ)
      {
        removeViewAt(i);
        j = i - 1;
      }
    }
  }
  
  private int ᔈ()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private void ᵀ()
  {
    if (this.Ῐ != 0)
    {
      if (this.Ῑ == null) {
        this.Ῑ = new ArrayList();
      } else {
        this.Ῑ.clear();
      }
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = getChildAt(i);
        this.Ῑ.add(localView);
        i += 1;
      }
      Collections.sort(this.Ῑ, Ὶ);
    }
  }
  
  private ViewPager.ˊ ᵋ()
  {
    int i = ᔈ();
    float f1;
    if (i > 0) {
      f1 = getScrollX() / i;
    } else {
      f1 = 0.0F;
    }
    float f2;
    if (i > 0) {
      f2 = this.ɟ / i;
    } else {
      f2 = 0.0F;
    }
    int k = -1;
    float f3 = 0.0F;
    float f4 = 0.0F;
    int j = 1;
    Object localObject = null;
    i = 0;
    while (i < this.ﮂ.size())
    {
      ViewPager.ˊ localˊ2 = (ViewPager.ˊ)this.ﮂ.get(i);
      int m = i;
      ViewPager.ˊ localˊ1 = localˊ2;
      if (j == 0)
      {
        m = i;
        localˊ1 = localˊ2;
        if (localˊ2.position != k + 1)
        {
          localˊ1 = this.ﮄ;
          localˊ1.דּ = (f3 + f4 + f2);
          localˊ1.position = (k + 1);
          localˊ1.ﬧ = this.ﺋ.ˑ(localˊ1.position);
          m = i - 1;
        }
      }
      f3 = localˊ1.דּ;
      f4 = localˊ1.ﬧ;
      if ((j != 0) || (f1 >= f3))
      {
        if ((f1 < f4 + f3 + f2) || (m == this.ﮂ.size() - 1)) {
          return localˊ1;
        }
      }
      else {
        return localObject;
      }
      j = 0;
      k = localˊ1.position;
      f4 = localˊ1.ﬧ;
      i = m + 1;
      localObject = localˊ1;
    }
    return localObject;
  }
  
  private void ᵗ()
  {
    this.х = false;
    this.ј = false;
    if (this.ᓴ != null)
    {
      this.ᓴ.recycle();
      this.ᓴ = null;
    }
  }
  
  private boolean ﹳ(int paramInt)
  {
    if (this.ﮂ.size() == 0)
    {
      this.ᴺ = false;
      ˊ(0, 0.0F, 0);
      if (!this.ᴺ) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      return false;
    }
    ViewPager.ˊ localˊ = ᵋ();
    int j = ᔈ();
    int k = this.ɟ;
    float f = this.ɟ / j;
    int i = localˊ.position;
    f = (paramInt / j - localˊ.דּ) / (localˊ.ﬧ + f);
    paramInt = (int)((j + k) * f);
    this.ᴺ = false;
    ˊ(i, f, paramInt);
    if (!this.ᴺ) {
      throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    return true;
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int j = paramArrayList.size();
    int k = getDescendantFocusability();
    if (k != 393216)
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (localView.getVisibility() == 0)
        {
          ViewPager.ˊ localˊ = ᴵ(localView);
          if ((localˊ != null) && (localˊ.position == this.ﺜ)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i += 1;
      }
    }
    if ((k != 262144) || (j == paramArrayList.size()))
    {
      if (!isFocusable()) {
        return;
      }
      if (((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) {
        return;
      }
      if (paramArrayList != null) {
        paramArrayList.add(this);
      }
    }
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ˊ localˊ = ᴵ(localView);
        if ((localˊ != null) && (localˊ.position == this.ﺜ)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    ViewGroup.LayoutParams localLayoutParams = paramLayoutParams;
    if (!checkLayoutParams(paramLayoutParams)) {
      localLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    paramLayoutParams = (ViewPager.ˋ)localLayoutParams;
    paramLayoutParams.ﭝ |= paramView instanceof if;
    if (this.mInLayout)
    {
      if ((paramLayoutParams != null) && (paramLayoutParams.ﭝ)) {
        throw new IllegalStateException("Cannot add pager decor view during layout");
      }
      paramLayoutParams.ﭥ = true;
      addViewInLayout(paramView, paramInt, localLayoutParams);
      return;
    }
    super.addView(paramView, paramInt, localLayoutParams);
  }
  
  public boolean arrowScroll(int paramInt)
  {
    View localView = findFocus();
    Object localObject;
    int j;
    int i;
    if (localView == this)
    {
      localObject = null;
    }
    else
    {
      localObject = localView;
      if (localView != null)
      {
        j = 0;
        for (localObject = localView.getParent();; localObject = ((ViewParent)localObject).getParent())
        {
          i = j;
          if (!(localObject instanceof ViewGroup)) {
            break;
          }
          if (localObject == this)
          {
            i = 1;
            break;
          }
        }
        localObject = localView;
        if (i == 0)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(localView.getClass().getSimpleName());
          for (localObject = localView.getParent(); (localObject instanceof ViewGroup); localObject = ((ViewParent)localObject).getParent()) {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
          }
          Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
          localObject = null;
        }
      }
    }
    boolean bool = false;
    localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
    if ((localView != null) && (localView != localObject))
    {
      if (paramInt == 17)
      {
        i = ˊ(this.ﹽ, localView).left;
        j = ˊ(this.ﹽ, (View)localObject).left;
        if ((localObject != null) && (i >= j)) {
          bool = ﾟ();
        } else {
          bool = localView.requestFocus();
        }
      }
      else if (paramInt == 66)
      {
        i = ˊ(this.ﹽ, localView).left;
        j = ˊ(this.ﹽ, (View)localObject).left;
        if ((localObject != null) && (i <= j)) {
          bool = ı();
        } else {
          bool = localView.requestFocus();
        }
      }
    }
    else if ((paramInt == 17) || (paramInt == 1)) {
      bool = ﾟ();
    } else if ((paramInt == 66) || (paramInt == 2)) {
      bool = ı();
    }
    if (bool) {
      playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
    }
    return bool;
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (this.ﺋ == null) {
      return false;
    }
    int i = ᔈ();
    int j = getScrollX();
    if (paramInt < 0) {
      return j > (int)(i * this.ˠ);
    }
    if (paramInt > 0) {
      return j < (int)(i * this.Ί);
    }
    return false;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ViewPager.ˋ)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!this.ǀ.isFinished()) && (this.ǀ.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.ǀ.getCurrX();
      int m = this.ǀ.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!ﹳ(k))
        {
          this.ǀ.abortAnimation();
          scrollTo(0, m);
        }
      }
      ﺑ.ʿ(this);
      return;
    }
    ʻ(true);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 4096) {
      return super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
    }
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ˊ localˊ = ᴵ(localView);
        if ((localˊ != null) && (localˊ.position == this.ﺜ) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i += 1;
    }
    return false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int k = 0;
    int i = 0;
    int m = ﺑ.ͺ(this);
    boolean bool;
    if ((m == 0) || ((m == 1) && (this.ﺋ != null) && (this.ﺋ.getCount() > 1)))
    {
      int j;
      if (!this.ᕻ.isFinished())
      {
        k = paramCanvas.save();
        i = getHeight() - getPaddingTop() - getPaddingBottom();
        m = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i + getPaddingTop(), this.ˠ * m);
        this.ᕻ.setSize(i, m);
        j = this.ᕻ.draw(paramCanvas) | false;
        paramCanvas.restoreToCount(k);
      }
      k = j;
      if (!this.ᴄ.isFinished())
      {
        m = paramCanvas.save();
        k = getWidth();
        int n = getHeight();
        int i1 = getPaddingTop();
        int i2 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(this.Ί + 1.0F) * k);
        this.ᴄ.setSize(n - i1 - i2, k);
        bool = j | this.ᴄ.draw(paramCanvas);
        paramCanvas.restoreToCount(m);
      }
    }
    else
    {
      this.ᕻ.finish();
      this.ᴄ.finish();
    }
    if (bool) {
      ﺑ.ʿ(this);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.ɺ;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramKeyEvent.getAction() == 0)
    {
      switch (paramKeyEvent.getKeyCode())
      {
      default: 
        return false;
      case 21: 
        return arrowScroll(17);
      case 22: 
        return arrowScroll(66);
      }
      bool1 = bool2;
      if (Build.VERSION.SDK_INT >= 11)
      {
        if (ᒻ.ˊ(paramKeyEvent)) {
          return arrowScroll(2);
        }
        bool1 = bool2;
        if (ᒻ.ˊ(paramKeyEvent, 1)) {
          bool1 = arrowScroll(1);
        }
      }
    }
    return bool1;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewPager.ˋ();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewPager.ˋ(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.Ῐ == 2) {
      paramInt2 = paramInt1 - 1 - paramInt2;
    }
    return ((ViewPager.ˋ)((View)this.Ῑ.get(paramInt2)).getLayoutParams()).ﮆ;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.ᴐ = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.Ί);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.ɟ > 0) && (this.ɺ != null) && (this.ﮂ.size() > 0) && (this.ﺋ != null))
    {
      int k = getScrollX();
      int m = getWidth();
      float f3 = this.ɟ / m;
      int j = 0;
      Object localObject = (ViewPager.ˊ)this.ﮂ.get(0);
      float f1 = ((ViewPager.ˊ)localObject).דּ;
      int n = this.ﮂ.size();
      int i = ((ViewPager.ˊ)localObject).position;
      int i1 = ((ViewPager.ˊ)this.ﮂ.get(n - 1)).position;
      while (i < i1)
      {
        while ((i > ((ViewPager.ˊ)localObject).position) && (j < n))
        {
          localObject = this.ﮂ;
          j += 1;
          localObject = (ViewPager.ˊ)((ArrayList)localObject).get(j);
        }
        float f2;
        if (i == ((ViewPager.ˊ)localObject).position)
        {
          f2 = (((ViewPager.ˊ)localObject).דּ + ((ViewPager.ˊ)localObject).ﬧ) * m;
          f1 = ((ViewPager.ˊ)localObject).דּ + ((ViewPager.ˊ)localObject).ﬧ + f3;
        }
        else
        {
          float f4 = this.ﺋ.ˑ(i);
          f2 = (f1 + f4) * m;
          f1 += f4 + f3;
        }
        if (this.ɟ + f2 > k)
        {
          this.ɺ.setBounds((int)f2, this.ɼ, (int)(this.ɟ + f2 + 0.5F), this.ʱ);
          this.ɺ.draw(paramCanvas);
        }
        if (f2 > k + m) {
          return;
        }
        i += 1;
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction() & 0xFF;
    if ((i == 3) || (i == 1))
    {
      this.х = false;
      this.ј = false;
      this.ઽ = -1;
      if (this.ᓴ != null)
      {
        this.ᓴ.recycle();
        this.ᓴ = null;
      }
      return false;
    }
    if (i != 0)
    {
      if (this.х) {
        return true;
      }
      if (this.ј) {
        return false;
      }
    }
    float f1;
    switch (i)
    {
    default: 
      break;
    case 2: 
      i = this.ઽ;
      if (i != -1)
      {
        i = ᵧ.ˊ(paramMotionEvent, i);
        float f2 = ᵧ.ˎ(paramMotionEvent, i);
        f1 = f2 - this.ء;
        float f4 = Math.abs(f1);
        float f3 = ᵧ.ˏ(paramMotionEvent, i);
        float f5 = Math.abs(f3 - this.ڏ);
        if ((f1 != 0.0F) && (!ˊ(this.ء, f1)) && (ˊ(this, false, (int)f1, (int)f2, (int)f3)))
        {
          this.ء = f2;
          this.ر = f3;
          this.ј = true;
          return false;
        }
        if ((f4 > this.כ) && (0.5F * f4 > f5))
        {
          this.х = true;
          ʽ(true);
          ـ(1);
          if (f1 > 0.0F) {
            f1 = this.ڎ + this.כ;
          } else {
            f1 = this.ڎ - this.כ;
          }
          this.ء = f1;
          this.ر = f3;
          setScrollingCacheEnabled(true);
        }
        else if (f5 > this.כ)
        {
          this.ј = true;
        }
        if ((this.х) && (ˋ(f2))) {
          ﺑ.ʿ(this);
        }
      }
      break;
    case 0: 
      f1 = paramMotionEvent.getX();
      this.ڎ = f1;
      this.ء = f1;
      f1 = paramMotionEvent.getY();
      this.ڏ = f1;
      this.ر = f1;
      this.ઽ = ᵧ.ˋ(paramMotionEvent, 0);
      this.ј = false;
      this.ǀ.computeScrollOffset();
      if ((this.ℴ == 2) && (Math.abs(this.ǀ.getFinalX() - this.ǀ.getCurrX()) > this.ᓵ))
      {
        this.ǀ.abortAnimation();
        this.с = false;
        ᴸ();
        this.х = true;
        ʽ(true);
        ـ(1);
      }
      else
      {
        ʻ(false);
        this.х = false;
      }
      break;
    case 6: 
      ˏ(paramMotionEvent);
    }
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    return this.х;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i3 = getChildCount();
    int i5 = paramInt3 - paramInt1;
    int i4 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int j = getPaddingRight();
    paramInt4 = getPaddingBottom();
    int i6 = getScrollX();
    int k = 0;
    int m = 0;
    View localView;
    ViewPager.ˋ localˋ;
    while (m < i3)
    {
      localView = getChildAt(m);
      i = paramInt2;
      int i2 = paramInt1;
      int i1 = j;
      int n = paramInt4;
      paramInt3 = k;
      if (localView.getVisibility() != 8)
      {
        localˋ = (ViewPager.ˋ)localView.getLayoutParams();
        i = paramInt2;
        i2 = paramInt1;
        i1 = j;
        n = paramInt4;
        paramInt3 = k;
        if (localˋ.ﭝ)
        {
          paramInt3 = localˋ.gravity;
          n = localˋ.gravity;
          switch (paramInt3 & 0x7)
          {
          case 2: 
          case 4: 
          default: 
            paramInt3 = paramInt2;
            i = paramInt2;
            break;
          case 3: 
            paramInt3 = paramInt2;
            i = paramInt2 + localView.getMeasuredWidth();
            break;
          case 1: 
            paramInt3 = Math.max((i5 - localView.getMeasuredWidth()) / 2, paramInt2);
            i = paramInt2;
            break;
          case 5: 
            paramInt3 = i5 - j - localView.getMeasuredWidth();
            j += localView.getMeasuredWidth();
            i = paramInt2;
          }
          switch (n & 0x70)
          {
          default: 
            paramInt2 = paramInt1;
            break;
          case 48: 
            paramInt2 = paramInt1;
            paramInt1 += localView.getMeasuredHeight();
            break;
          case 16: 
            paramInt2 = Math.max((i4 - localView.getMeasuredHeight()) / 2, paramInt1);
            break;
          case 80: 
            paramInt2 = i4 - paramInt4 - localView.getMeasuredHeight();
            paramInt4 += localView.getMeasuredHeight();
          }
          paramInt3 += i6;
          localView.layout(paramInt3, paramInt2, localView.getMeasuredWidth() + paramInt3, localView.getMeasuredHeight() + paramInt2);
          paramInt3 = k + 1;
          n = paramInt4;
          i1 = j;
          i2 = paramInt1;
        }
      }
      m += 1;
      paramInt2 = i;
      paramInt1 = i2;
      j = i1;
      paramInt4 = n;
      k = paramInt3;
    }
    int i = i5 - paramInt2 - j;
    paramInt3 = 0;
    while (paramInt3 < i3)
    {
      localView = getChildAt(paramInt3);
      if (localView.getVisibility() != 8)
      {
        localˋ = (ViewPager.ˋ)localView.getLayoutParams();
        if (!localˋ.ﭝ)
        {
          ViewPager.ˊ localˊ = ᴵ(localView);
          if (localˊ != null)
          {
            j = paramInt2 + (int)(i * localˊ.דּ);
            if (localˋ.ﭥ)
            {
              localˋ.ﭥ = false;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(i * localˋ.ﬧ), 1073741824), View.MeasureSpec.makeMeasureSpec(i4 - paramInt1 - paramInt4, 1073741824));
            }
            localView.layout(j, paramInt1, localView.getMeasuredWidth() + j, localView.getMeasuredHeight() + paramInt1);
          }
        }
      }
      paramInt3 += 1;
    }
    this.ɼ = paramInt1;
    this.ʱ = (i4 - paramInt4);
    this.ᵈ = k;
    if (this.ᴐ) {
      ˊ(this.ﺜ, false, 0, false);
    }
    this.ᴐ = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    this.ך = Math.min(paramInt1 / 10, this.ґ);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i5 = getChildCount();
    int k = 0;
    View localView;
    ViewPager.ˋ localˋ;
    while (k < i5)
    {
      localView = getChildAt(k);
      i = paramInt1;
      int j = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localˋ = (ViewPager.ˋ)localView.getLayoutParams();
        i = paramInt1;
        j = paramInt2;
        if (localˋ != null)
        {
          i = paramInt1;
          j = paramInt2;
          if (localˋ.ﭝ)
          {
            j = localˋ.gravity & 0x7;
            int m = localˋ.gravity & 0x70;
            int i1 = -2147483648;
            i = -2147483648;
            if ((m == 48) || (m == 80)) {
              m = 1;
            } else {
              m = 0;
            }
            int n;
            if ((j == 3) || (j == 5)) {
              n = 1;
            } else {
              n = 0;
            }
            if (m != 0)
            {
              j = 1073741824;
            }
            else
            {
              j = i1;
              if (n != 0)
              {
                i = 1073741824;
                j = i1;
              }
            }
            int i3 = paramInt1;
            i1 = paramInt2;
            int i2 = i3;
            int i4;
            if (localˋ.width != -2)
            {
              i4 = 1073741824;
              j = i4;
              i2 = i3;
              if (localˋ.width != -1)
              {
                i2 = localˋ.width;
                j = i4;
              }
            }
            i3 = i1;
            if (localˋ.height != -2)
            {
              i4 = 1073741824;
              i = i4;
              i3 = i1;
              if (localˋ.height != -1)
              {
                i3 = localˋ.height;
                i = i4;
              }
            }
            localView.measure(View.MeasureSpec.makeMeasureSpec(i2, j), View.MeasureSpec.makeMeasureSpec(i3, i));
            if (m != 0)
            {
              j = paramInt2 - localView.getMeasuredHeight();
              i = paramInt1;
            }
            else
            {
              i = paramInt1;
              j = paramInt2;
              if (n != 0)
              {
                i = paramInt1 - localView.getMeasuredWidth();
                j = paramInt2;
              }
            }
          }
        }
      }
      k += 1;
      paramInt1 = i;
      paramInt2 = j;
    }
    this.ϲ = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
    this.ϳ = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
    this.mInLayout = true;
    ᴸ();
    this.mInLayout = false;
    int i = getChildCount();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      localView = getChildAt(paramInt2);
      if (localView.getVisibility() != 8)
      {
        localˋ = (ViewPager.ˋ)localView.getLayoutParams();
        if ((localˋ == null) || (!localˋ.ﭝ)) {
          localView.measure(View.MeasureSpec.makeMeasureSpec((int)(paramInt1 * localˋ.ﬧ), 1073741824), this.ϳ);
        }
      }
      paramInt2 += 1;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int k = getChildCount();
    int i;
    int j;
    if ((paramInt & 0x2) != 0)
    {
      i = 0;
      j = 1;
    }
    else
    {
      i = k - 1;
      j = -1;
      k = -1;
    }
    while (i != k)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ViewPager.ˊ localˊ = ᴵ(localView);
        if ((localˊ != null) && (localˊ.position == this.ﺜ) && (localView.requestFocus(paramInt, paramRect))) {
          return true;
        }
      }
      i += j;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (this.ﺋ != null)
    {
      this.ﺋ.ˊ(paramParcelable.ﹱ, paramParcelable.ﺀ);
      ˊ(paramParcelable.position, false, true);
      return;
    }
    this.ﻟ = paramParcelable.position;
    this.ﾉ = paramParcelable.ﹱ;
    this.ľ = paramParcelable.ﺀ;
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.position = this.ﺜ;
    if (this.ﺋ != null) {
      localSavedState.ﹱ = this.ﺋ.ᐡ();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      ˊ(paramInt1, paramInt3, this.ɟ, this.ɟ);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.ᔿ) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((this.ﺋ == null) || (this.ﺋ.getCount() == 0)) {
      return false;
    }
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    int n = paramMotionEvent.getAction();
    int m = 0;
    int i = m;
    float f1;
    Object localObject;
    boolean bool1;
    boolean bool2;
    int k;
    switch (n & 0xFF)
    {
    default: 
      i = m;
      break;
    case 0: 
      this.ǀ.abortAnimation();
      this.с = false;
      ᴸ();
      f1 = paramMotionEvent.getX();
      this.ڎ = f1;
      this.ء = f1;
      f1 = paramMotionEvent.getY();
      this.ڏ = f1;
      this.ر = f1;
      this.ઽ = ᵧ.ˋ(paramMotionEvent, 0);
      i = m;
      break;
    case 2: 
      if (!this.х)
      {
        i = ᵧ.ˊ(paramMotionEvent, this.ઽ);
        f1 = ᵧ.ˎ(paramMotionEvent, i);
        float f3 = Math.abs(f1 - this.ء);
        float f2 = ᵧ.ˏ(paramMotionEvent, i);
        float f4 = Math.abs(f2 - this.ر);
        if ((f3 > this.כ) && (f3 > f4))
        {
          this.х = true;
          ʽ(true);
          if (f1 - this.ڎ > 0.0F) {
            f1 = this.ڎ + this.כ;
          } else {
            f1 = this.ڎ - this.כ;
          }
          this.ء = f1;
          this.ر = f2;
          ـ(1);
          setScrollingCacheEnabled(true);
          localObject = getParent();
          if (localObject != null) {
            ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
          }
        }
      }
      i = m;
      if (this.х) {
        bool1 = ˋ(ᵧ.ˎ(paramMotionEvent, ᵧ.ˊ(paramMotionEvent, this.ઽ))) | false;
      }
      break;
    case 1: 
      bool1 = m;
      if (this.х)
      {
        localObject = this.ᓴ;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, this.ᓰ);
        int j = (int)ﹻ.ˊ((VelocityTracker)localObject, this.ઽ);
        this.с = true;
        m = ᔈ();
        n = getScrollX();
        localObject = ᵋ();
        ˊ(ˊ(((ViewPager.ˊ)localObject).position, (n / m - ((ViewPager.ˊ)localObject).דּ) / ((ViewPager.ˊ)localObject).ﬧ, j, (int)(ᵧ.ˎ(paramMotionEvent, ᵧ.ˊ(paramMotionEvent, this.ઽ)) - this.ڎ)), true, true, j);
        this.ઽ = -1;
        ᵗ();
        bool2 = this.ᕻ.ﯨ() | this.ᴄ.ﯨ();
      }
      break;
    case 3: 
      bool2 = m;
      if (this.х)
      {
        ˊ(this.ﺜ, true, 0, false);
        this.ઽ = -1;
        ᵗ();
        bool2 = this.ᕻ.ﯨ() | this.ᴄ.ﯨ();
      }
      break;
    case 5: 
      k = ᵧ.ˋ(paramMotionEvent);
      this.ء = ᵧ.ˎ(paramMotionEvent, k);
      this.ઽ = ᵧ.ˋ(paramMotionEvent, k);
      k = m;
      break;
    case 6: 
      ˏ(paramMotionEvent);
      this.ء = ᵧ.ˎ(paramMotionEvent, ᵧ.ˊ(paramMotionEvent, this.ઽ));
      k = m;
    }
    if (k != 0) {
      ﺑ.ʿ(this);
    }
    return true;
  }
  
  public void removeView(View paramView)
  {
    if (this.mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(ﹲ paramﹲ)
  {
    if (this.ﺋ != null)
    {
      this.ﺋ.unregisterDataSetObserver(this.ɔ);
      this.ﺋ.ˊ(this);
      int i = 0;
      while (i < this.ﮂ.size())
      {
        localObject = (ViewPager.ˊ)this.ﮂ.get(i);
        this.ﺋ.ˊ(this, ((ViewPager.ˊ)localObject).position, ((ViewPager.ˊ)localObject).ⅽ);
        i += 1;
      }
      this.ﺋ.ˋ(this);
      this.ﮂ.clear();
      ᔇ();
      this.ﺜ = 0;
      scrollTo(0, 0);
    }
    Object localObject = this.ﺋ;
    this.ﺋ = paramﹲ;
    this.氵 = 0;
    if (this.ﺋ != null)
    {
      if (this.ɔ == null) {
        this.ɔ = new ViewPager.ʻ(this, null);
      }
      this.ﺋ.registerDataSetObserver(this.ɔ);
      this.с = false;
      boolean bool = this.ᴐ;
      this.ᴐ = true;
      this.氵 = this.ﺋ.getCount();
      if (this.ﻟ >= 0)
      {
        this.ﺋ.ˊ(this.ﾉ, this.ľ);
        ˊ(this.ﻟ, false, true);
        this.ﻟ = -1;
        this.ﾉ = null;
        this.ľ = null;
      }
      else if (!bool)
      {
        ᴸ();
      }
      else
      {
        requestLayout();
      }
    }
    if ((this.Ḯ != null) && (localObject != paramﹲ)) {
      this.Ḯ.ˊ((ﹲ)localObject, paramﹲ);
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    this.с = false;
    boolean bool;
    if (!this.ᴐ) {
      bool = true;
    } else {
      bool = false;
    }
    ˊ(paramInt, bool, false);
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    this.с = false;
    ˊ(paramInt, paramBoolean, false);
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 1)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to " + 1);
      i = 1;
    }
    if (i != this.т)
    {
      this.т = i;
      ᴸ();
    }
  }
  
  public void setOnPageChangeListener(aux paramaux)
  {
    this.ᵑ = paramaux;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = this.ɟ;
    this.ɟ = paramInt;
    int j = getWidth();
    ˊ(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.ɺ = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    boolean bool;
    if (paramDrawable == null) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    invalidate();
  }
  
  public void setPageTransformer(boolean paramBoolean, ViewPager.ᐝ paramᐝ)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      boolean bool1;
      if (paramᐝ != null) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      boolean bool2;
      if (this.Ἰ != null) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      int i;
      if (bool1 != bool2) {
        i = 1;
      } else {
        i = 0;
      }
      this.Ἰ = paramᐝ;
      ᐝ(bool1);
      if (bool1)
      {
        int j;
        if (paramBoolean) {
          j = 2;
        } else {
          j = 1;
        }
        this.Ῐ = j;
      }
      else
      {
        this.Ῐ = 0;
      }
      if (i != 0) {
        ᴸ();
      }
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.ɺ);
  }
  
  boolean ı()
  {
    if ((this.ﺋ != null) && (this.ﺜ < this.ﺋ.getCount() - 1))
    {
      setCurrentItem(this.ﺜ + 1, true);
      return true;
    }
    return false;
  }
  
  float ˊ(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.47123891676382D));
  }
  
  protected void ˊ(int paramInt1, float paramFloat, int paramInt2)
  {
    int i;
    View localView;
    if (this.ᵈ > 0)
    {
      int i1 = getScrollX();
      i = getPaddingLeft();
      int j = getPaddingRight();
      int i2 = getWidth();
      int i3 = getChildCount();
      int m = 0;
      while (m < i3)
      {
        localView = getChildAt(m);
        ViewPager.ˋ localˋ = (ViewPager.ˋ)localView.getLayoutParams();
        int n;
        if (!localˋ.ﭝ)
        {
          n = i;
        }
        else
        {
          int k;
          switch (localˋ.gravity & 0x7)
          {
          case 2: 
          case 4: 
          default: 
            n = i;
            k = j;
            j = n;
            break;
          case 3: 
            n = i;
            i += localView.getWidth();
            k = j;
            j = n;
            break;
          case 1: 
            n = Math.max((i2 - localView.getMeasuredWidth()) / 2, i);
            k = j;
            j = n;
            break;
          case 5: 
            k = i2 - j - localView.getMeasuredWidth();
            n = j + localView.getMeasuredWidth();
            j = k;
            k = n;
          }
          int i4 = j + i1 - localView.getLeft();
          n = i;
          j = k;
          if (i4 != 0)
          {
            localView.offsetLeftAndRight(i4);
            j = k;
            n = i;
          }
        }
        m += 1;
        i = n;
      }
    }
    if (this.ᵑ != null) {
      this.ᵑ.ˊ(paramInt1, paramFloat, paramInt2);
    }
    if (this.ᵨ != null) {
      this.ᵨ.ˊ(paramInt1, paramFloat, paramInt2);
    }
    if (this.Ἰ != null)
    {
      paramInt2 = getScrollX();
      i = getChildCount();
      paramInt1 = 0;
      while (paramInt1 < i)
      {
        localView = getChildAt(paramInt1);
        if (!((ViewPager.ˋ)localView.getLayoutParams()).ﭝ)
        {
          paramFloat = (localView.getLeft() - paramInt2) / ᔈ();
          this.Ἰ.ʼ(localView, paramFloat);
        }
        paramInt1 += 1;
      }
    }
    this.ᴺ = true;
  }
  
  void ˊ(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    paramInt2 -= j;
    if ((k == 0) && (paramInt2 == 0))
    {
      ʻ(false);
      ᴸ();
      ـ(0);
      return;
    }
    setScrollingCacheEnabled(true);
    ـ(2);
    paramInt1 = ᔈ();
    int m = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(k) * 1.0F / paramInt1);
    float f1 = m;
    float f2 = m;
    f3 = ˊ(f3);
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0)
    {
      paramInt1 = Math.round(Math.abs((f1 + f2 * f3) / paramInt3) * 1000.0F) * 4;
    }
    else
    {
      f1 = paramInt1;
      f2 = this.ﺋ.ˑ(this.ﺜ);
      paramInt1 = (int)((1.0F + Math.abs(k) / (this.ɟ + f1 * f2)) * 100.0F);
    }
    paramInt1 = Math.min(paramInt1, 600);
    this.ǀ.startScroll(i, j, k, paramInt2, paramInt1);
    ﺑ.ʿ(this);
  }
  
  void ˊ(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    ˊ(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void ˊ(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.ﺋ == null) || (this.ﺋ.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (this.ﺜ == paramInt1) && (this.ﮂ.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i;
    if (paramInt1 < 0)
    {
      i = 0;
    }
    else
    {
      i = paramInt1;
      if (paramInt1 >= this.ﺋ.getCount()) {
        i = this.ﺋ.getCount() - 1;
      }
    }
    paramInt1 = this.т;
    if ((i > this.ﺜ + paramInt1) || (i < this.ﺜ - paramInt1))
    {
      paramInt1 = 0;
      while (paramInt1 < this.ﮂ.size())
      {
        ((ViewPager.ˊ)this.ﮂ.get(paramInt1)).ײַ = true;
        paramInt1 += 1;
      }
    }
    if (this.ﺜ != i) {
      paramBoolean2 = true;
    } else {
      paramBoolean2 = false;
    }
    if (this.ᴐ)
    {
      this.ﺜ = i;
      if ((paramBoolean2) && (this.ᵑ != null)) {
        this.ᵑ.ﾞ(i);
      }
      if ((paramBoolean2) && (this.ᵨ != null)) {
        this.ᵨ.ﾞ(i);
      }
      requestLayout();
      return;
    }
    ᐧ(i);
    ˊ(i, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  protected boolean ˊ(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      int i = localViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j >= localView.getLeft()) && (paramInt2 + j < localView.getRight()) && (paramInt3 + k >= localView.getTop()) && (paramInt3 + k < localView.getBottom()) && (ˊ(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {
          return true;
        }
        i -= 1;
      }
    }
    return (paramBoolean) && (ﺑ.ˋ(paramView, -paramInt1));
  }
  
  ViewPager.ˊ ᐝ(int paramInt1, int paramInt2)
  {
    ViewPager.ˊ localˊ = new ViewPager.ˊ();
    localˊ.position = paramInt1;
    localˊ.ⅽ = this.ﺋ.ˊ(this, paramInt1);
    localˊ.ﬧ = this.ﺋ.ˑ(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.ﮂ.size()))
    {
      this.ﮂ.add(localˊ);
      return localˊ;
    }
    this.ﮂ.add(paramInt2, localˊ);
    return localˊ;
  }
  
  void ᐝ(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 7)
    {
      if (this.Ἱ == null) {
        try
        {
          this.Ἱ = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
        }
      }
      try
      {
        this.Ἱ.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception localException)
      {
        Log.e("ViewPager", "Error changing children drawing order", localException);
      }
    }
  }
  
  void ᐧ(int paramInt)
  {
    Object localObject2 = null;
    int j = 2;
    if (this.ﺜ != paramInt)
    {
      if (this.ﺜ < paramInt) {
        i = 66;
      } else {
        i = 17;
      }
      localObject2 = ᐨ(this.ﺜ);
      this.ﺜ = paramInt;
      j = i;
    }
    if (this.ﺋ == null)
    {
      ᵀ();
      return;
    }
    if (this.с)
    {
      ᵀ();
      return;
    }
    if (getWindowToken() == null) {
      return;
    }
    this.ﺋ.ˊ(this);
    paramInt = this.т;
    int i3 = Math.max(0, this.ﺜ - paramInt);
    int i1 = this.ﺋ.getCount();
    int i2 = Math.min(i1 - 1, this.ﺜ + paramInt);
    Object localObject1;
    if (i1 != this.氵)
    {
      try
      {
        String str = getResources().getResourceName(getId());
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        localObject1 = Integer.toHexString(getId());
      }
      throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.氵 + ", found: " + i1 + " Pager id: " + (String)localObject1 + " Pager class: " + getClass() + " Problematic adapter: " + this.ﺋ.getClass());
    }
    Object localObject3 = null;
    paramInt = 0;
    Object localObject4;
    for (;;)
    {
      localObject1 = localObject3;
      if (paramInt >= this.ﮂ.size()) {
        break;
      }
      localObject4 = (ViewPager.ˊ)this.ﮂ.get(paramInt);
      if (((ViewPager.ˊ)localObject4).position >= this.ﺜ)
      {
        localObject1 = localObject3;
        if (((ViewPager.ˊ)localObject4).position != this.ﺜ) {
          break;
        }
        localObject1 = localObject4;
        break;
      }
      paramInt += 1;
    }
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      localObject3 = localObject1;
      if (i1 > 0) {
        localObject3 = ᐝ(this.ﺜ, paramInt);
      }
    }
    if (localObject3 != null)
    {
      float f3 = 0.0F;
      int n = paramInt - 1;
      if (n >= 0) {
        localObject1 = (ViewPager.ˊ)this.ﮂ.get(n);
      } else {
        localObject1 = null;
      }
      int i4 = ᔈ();
      float f2;
      if (i4 <= 0) {
        f2 = 0.0F;
      } else {
        f2 = 2.0F - ((ViewPager.ˊ)localObject3).ﬧ + getPaddingLeft() / i4;
      }
      int m = this.ﺜ - 1;
      localObject4 = localObject1;
      int k = paramInt;
      float f1;
      while (m >= 0)
      {
        if ((f3 >= f2) && (m < i3))
        {
          if (localObject4 == null) {
            break;
          }
          paramInt = k;
          f1 = f3;
          i = n;
          localObject1 = localObject4;
          if (m == ((ViewPager.ˊ)localObject4).position)
          {
            paramInt = k;
            f1 = f3;
            i = n;
            localObject1 = localObject4;
            if (!((ViewPager.ˊ)localObject4).ײַ)
            {
              this.ﮂ.remove(n);
              this.ﺋ.ˊ(this, m, ((ViewPager.ˊ)localObject4).ⅽ);
              i = n - 1;
              paramInt = k - 1;
              if (i >= 0) {
                localObject1 = (ViewPager.ˊ)this.ﮂ.get(i);
              } else {
                localObject1 = null;
              }
              f1 = f3;
            }
          }
        }
        else if ((localObject4 != null) && (m == ((ViewPager.ˊ)localObject4).position))
        {
          f1 = f3 + ((ViewPager.ˊ)localObject4).ﬧ;
          i = n - 1;
          if (i >= 0) {
            localObject1 = (ViewPager.ˊ)this.ﮂ.get(i);
          } else {
            localObject1 = null;
          }
          paramInt = k;
        }
        else
        {
          f1 = f3 + ᐝ(m, n + 1).ﬧ;
          paramInt = k + 1;
          if (n >= 0)
          {
            localObject1 = (ViewPager.ˊ)this.ﮂ.get(n);
            i = n;
          }
          else
          {
            localObject1 = null;
            i = n;
          }
        }
        m -= 1;
        k = paramInt;
        f3 = f1;
        n = i;
        localObject4 = localObject1;
      }
      f3 = ((ViewPager.ˊ)localObject3).ﬧ;
      m = k + 1;
      if (f3 < 2.0F)
      {
        if (m < this.ﮂ.size()) {
          localObject1 = (ViewPager.ˊ)this.ﮂ.get(m);
        } else {
          localObject1 = null;
        }
        if (i4 <= 0) {
          f2 = 0.0F;
        } else {
          f2 = getPaddingRight() / i4 + 2.0F;
        }
        i = this.ﺜ + 1;
        localObject4 = localObject1;
        while (i < i1)
        {
          if ((f3 >= f2) && (i > i2))
          {
            if (localObject4 == null) {
              break;
            }
            paramInt = m;
            localObject1 = localObject4;
            f1 = f3;
            if (i == ((ViewPager.ˊ)localObject4).position)
            {
              paramInt = m;
              localObject1 = localObject4;
              f1 = f3;
              if (!((ViewPager.ˊ)localObject4).ײַ)
              {
                this.ﮂ.remove(m);
                this.ﺋ.ˊ(this, i, ((ViewPager.ˊ)localObject4).ⅽ);
                if (m < this.ﮂ.size()) {
                  localObject1 = (ViewPager.ˊ)this.ﮂ.get(m);
                } else {
                  localObject1 = null;
                }
                paramInt = m;
                f1 = f3;
              }
            }
          }
          else if ((localObject4 != null) && (i == ((ViewPager.ˊ)localObject4).position))
          {
            f1 = f3 + ((ViewPager.ˊ)localObject4).ﬧ;
            paramInt = m + 1;
            if (paramInt < this.ﮂ.size()) {
              localObject1 = (ViewPager.ˊ)this.ﮂ.get(paramInt);
            } else {
              localObject1 = null;
            }
          }
          else
          {
            localObject1 = ᐝ(i, m);
            paramInt = m + 1;
            f1 = f3 + ((ViewPager.ˊ)localObject1).ﬧ;
            if (paramInt < this.ﮂ.size()) {
              localObject1 = (ViewPager.ˊ)this.ﮂ.get(paramInt);
            } else {
              localObject1 = null;
            }
          }
          i += 1;
          m = paramInt;
          localObject4 = localObject1;
          f3 = f1;
        }
      }
      ˊ((ViewPager.ˊ)localObject3, k, (ViewPager.ˊ)localObject2);
    }
    localObject2 = this.ﺋ;
    paramInt = this.ﺜ;
    if (localObject3 != null) {
      localObject1 = ((ViewPager.ˊ)localObject3).ⅽ;
    } else {
      localObject1 = null;
    }
    ((ﹲ)localObject2).ˋ(this, paramInt, localObject1);
    this.ﺋ.ˋ(this);
    int i = getChildCount();
    paramInt = 0;
    while (paramInt < i)
    {
      localObject2 = getChildAt(paramInt);
      localObject1 = (ViewPager.ˋ)((View)localObject2).getLayoutParams();
      ((ViewPager.ˋ)localObject1).ﮆ = paramInt;
      if ((!((ViewPager.ˋ)localObject1).ﭝ) && (((ViewPager.ˋ)localObject1).ﬧ == 0.0F))
      {
        localObject2 = ᴵ((View)localObject2);
        if (localObject2 != null)
        {
          ((ViewPager.ˋ)localObject1).ﬧ = ((ViewPager.ˊ)localObject2).ﬧ;
          ((ViewPager.ˋ)localObject1).position = ((ViewPager.ˊ)localObject2).position;
        }
      }
      paramInt += 1;
    }
    ᵀ();
    if (hasFocus())
    {
      localObject1 = findFocus();
      if (localObject1 != null) {
        localObject1 = ᵎ((View)localObject1);
      } else {
        localObject1 = null;
      }
      if ((localObject1 == null) || (((ViewPager.ˊ)localObject1).position != this.ﺜ))
      {
        paramInt = 0;
        while (paramInt < getChildCount())
        {
          localObject1 = getChildAt(paramInt);
          localObject2 = ᴵ((View)localObject1);
          if ((localObject2 != null) && (((ViewPager.ˊ)localObject2).position == this.ﺜ) && (((View)localObject1).requestFocus(j))) {
            return;
          }
          paramInt += 1;
        }
      }
    }
  }
  
  ViewPager.ˊ ᐨ(int paramInt)
  {
    int i = 0;
    while (i < this.ﮂ.size())
    {
      ViewPager.ˊ localˊ = (ViewPager.ˊ)this.ﮂ.get(i);
      if (localˊ.position == paramInt) {
        return localˊ;
      }
      i += 1;
    }
    return null;
  }
  
  void ᒽ()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.ǀ = new Scroller(localContext, ﭙ);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.כ = ᒾ.ˊ(localViewConfiguration);
    this.ເ = ((int)(400.0F * f));
    this.ᓰ = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.ᕻ = new ܝ(localContext);
    this.ᴄ = new ܝ(localContext);
    this.ᓲ = ((int)(25.0F * f));
    this.ᓵ = ((int)(2.0F * f));
    this.ґ = ((int)(16.0F * f));
    ﺑ.ˊ(this, new ViewPager.ˎ(this));
    if (ﺑ.ˈ(this) == 0) {
      ﺑ.ˏ(this, 1);
    }
  }
  
  public int ᗮ()
  {
    return this.ﺜ;
  }
  
  ViewPager.ˊ ᴵ(View paramView)
  {
    int i = 0;
    while (i < this.ﮂ.size())
    {
      ViewPager.ˊ localˊ = (ViewPager.ˊ)this.ﮂ.get(i);
      if (this.ﺋ.ˋ(paramView, localˊ.ⅽ)) {
        return localˊ;
      }
      i += 1;
    }
    return null;
  }
  
  void ᴶ()
  {
    int i4 = this.ﺋ.getCount();
    this.氵 = i4;
    int i;
    if ((this.ﮂ.size() < this.т * 2 + 1) && (this.ﮂ.size() < i4)) {
      i = 1;
    } else {
      i = 0;
    }
    int j = this.ﺜ;
    int k = 0;
    int m = 0;
    Object localObject;
    while (m < this.ﮂ.size())
    {
      localObject = (ViewPager.ˊ)this.ﮂ.get(m);
      int i3 = this.ﺋ.ʻ(((ViewPager.ˊ)localObject).ⅽ);
      int n;
      int i1;
      int i2;
      if (i3 == -1)
      {
        n = j;
        i1 = k;
        i2 = m;
      }
      else if (i3 == -2)
      {
        this.ﮂ.remove(m);
        i3 = m - 1;
        m = k;
        if (k == 0)
        {
          this.ﺋ.ˊ(this);
          m = 1;
        }
        this.ﺋ.ˊ(this, ((ViewPager.ˊ)localObject).position, ((ViewPager.ˊ)localObject).ⅽ);
        i = 1;
        n = j;
        i1 = m;
        i2 = i3;
        if (this.ﺜ == ((ViewPager.ˊ)localObject).position)
        {
          n = Math.max(0, Math.min(this.ﺜ, i4 - 1));
          i = 1;
          i1 = m;
          i2 = i3;
        }
      }
      else
      {
        n = j;
        i1 = k;
        i2 = m;
        if (((ViewPager.ˊ)localObject).position != i3)
        {
          if (((ViewPager.ˊ)localObject).position == this.ﺜ) {
            j = i3;
          }
          ((ViewPager.ˊ)localObject).position = i3;
          i = 1;
          i2 = m;
          i1 = k;
          n = j;
        }
      }
      m = i2 + 1;
      j = n;
      k = i1;
    }
    if (k != 0) {
      this.ﺋ.ˋ(this);
    }
    Collections.sort(this.ﮂ, 灬);
    if (i != 0)
    {
      k = getChildCount();
      i = 0;
      while (i < k)
      {
        localObject = (ViewPager.ˋ)getChildAt(i).getLayoutParams();
        if (!((ViewPager.ˋ)localObject).ﭝ) {
          ((ViewPager.ˋ)localObject).ﬧ = 0.0F;
        }
        i += 1;
      }
      ˊ(j, false, true);
      requestLayout();
    }
  }
  
  public void ᴸ()
  {
    ᐧ(this.ﺜ);
  }
  
  ViewPager.ˊ ᵎ(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return ᴵ(paramView);
  }
  
  boolean ﾟ()
  {
    if (this.ﺜ > 0)
    {
      setCurrentItem(this.ﺜ - 1, true);
      return true;
    }
    return false;
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ˣ.ˊ(new ᵒ());
    int position;
    Parcelable ﹱ;
    ClassLoader ﺀ;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      this.position = paramParcel.readInt();
      this.ﹱ = paramParcel.readParcelable(localClassLoader);
      this.ﺀ = localClassLoader;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.ﹱ, paramInt);
    }
  }
  
  public static abstract interface aux
  {
    public abstract void ʹ(int paramInt);
    
    public abstract void ˊ(int paramInt1, float paramFloat, int paramInt2);
    
    public abstract void ﾞ(int paramInt);
  }
  
  static abstract interface if {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.7.0.1
 */