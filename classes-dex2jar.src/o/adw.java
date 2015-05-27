package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class adw
  extends ViewGroup
{
  private static final int[] 丨 = { 16842931 };
  public float bzd;
  public float bze;
  private adw.ˎ bzf;
  private ʟ bzg;
  private adw.ˋ bzh;
  private View bzi;
  private boolean bzj;
  private float bzk;
  private List<afx> bzl = new ArrayList();
  private List<afx> bzm = new ArrayList();
  private vj bzn;
  private float bzo;
  private final ArrayList<View> bzp = new ArrayList(1);
  private int bzq = -1728053248;
  private Paint bzr = new Paint();
  private boolean mInLayout;
  private float ر;
  private boolean ᴐ = true;
  
  public adw(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public adw(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public adw(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void xk()
  {
    View localView = this.bzi;
    if (localView == null) {
      return;
    }
    adw.ˊ localˊ = (adw.ˊ)localView.getLayoutParams();
    int i = (int)(this.bzd * localˊ.bzt);
    int j = localView.getMeasuredWidth();
    int k = localView.getMeasuredHeight();
    localView.layout(localˊ.leftMargin, i, localˊ.leftMargin + j, i + k);
  }
  
  private View xl()
  {
    Iterator localIterator = this.bzl.iterator();
    while (localIterator.hasNext())
    {
      afx localafx = (afx)localIterator.next();
      if ((localafx.bCU) && (((adw.ˊ)localafx.view.getLayoutParams()).bzt > 0.0F)) {
        return localafx.view;
      }
    }
    return null;
  }
  
  private float xm()
  {
    View localView = xl();
    if (localView != null) {
      return ((adw.ˊ)localView.getLayoutParams()).bzt;
    }
    return 0.0F;
  }
  
  private View ʹ(List<afx> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      afx localafx = (afx)paramList.next();
      if (localafx.ʇ(-1)) {
        return localafx.view;
      }
    }
    return null;
  }
  
  private void ʻ(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {
      return;
    }
    paramInt1 = paramInt2 - paramInt1;
    paramInt2 = paramView.getMeasuredHeight();
    int i = paramView.getMeasuredWidth();
    adw.ˊ localˊ = (adw.ˊ)paramView.getLayoutParams();
    int j = paramInt1 - (int)(paramInt2 * localˊ.bzt);
    float f = (paramInt1 - j) / paramInt2;
    if (f != localˊ.bzt) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    paramView.layout(localˊ.leftMargin, j, localˊ.leftMargin + i, j + paramInt2);
    if (paramInt1 != 0) {
      localˊ.bzt = f;
    }
  }
  
  private boolean ˀ(View paramView)
  {
    return ˊ(this.bzm, paramView);
  }
  
  private boolean ˁ(View paramView)
  {
    Iterator localIterator = this.bzl.iterator();
    while (localIterator.hasNext())
    {
      afx localafx = (afx)localIterator.next();
      if (paramView != localafx.view) {
        if (ˢ(localafx.view)) {
          return true;
        }
      }
    }
    return false;
  }
  
  private void ˊ(Context paramContext)
  {
    this.bzf = new adw.ˎ(this, null);
    this.bzk = 1.0F;
    this.bzd = paramContext.getResources().getDimension(2131361888);
    this.bze = (this.bzd / 2.0F);
    float f = getResources().getDisplayMetrics().density;
    this.bzg = ʟ.ˊ(this, 1.0F, this.bzf);
    this.bzg.ˍ(400.0F * f);
  }
  
  private boolean ˊ(List<afx> paramList, View paramView)
  {
    return ˋ(paramList, paramView) != null;
  }
  
  private afx ˋ(List<afx> paramList, View paramView)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      afx localafx = (afx)paramList.next();
      if (localafx.view == paramView) {
        return localafx;
      }
    }
    return null;
  }
  
  private void ˋ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    int i = getChildCount();
    int j = getPaddingLeft();
    int k = paramInt3 - paramInt1 - getPaddingRight();
    int m = getPaddingTop();
    paramInt4 = paramInt4 - paramInt2 - getPaddingBottom();
    paramInt3 = 0;
    while (paramInt3 < i)
    {
      View localView = getChildAt(paramInt3);
      if ((localView != this.bzi) && (!ˀ(localView)) && (localView.getVisibility() != 8))
      {
        adw.ˊ localˊ = (adw.ˊ)localView.getLayoutParams();
        int n = localView.getMeasuredWidth();
        int i1 = localView.getMeasuredHeight();
        paramInt2 = localˊ.gravity;
        paramInt1 = paramInt2;
        if (paramInt2 == -1) {
          paramInt1 = 8388659;
        }
        switch (Gravity.getAbsoluteGravity(paramInt1, getLayoutDirection()) & 0x7)
        {
        default: 
          break;
        case 1: 
          paramInt2 = (k - j - n) / 2 + j + localˊ.leftMargin - localˊ.rightMargin;
          break;
        case 5: 
          if (!paramBoolean) {
            paramInt2 = k - n - localˊ.rightMargin;
          }
          break;
        }
        paramInt2 = j + localˊ.leftMargin;
        switch (paramInt1 & 0x70)
        {
        default: 
          break;
        case 48: 
          paramInt1 = m + localˊ.topMargin;
          break;
        case 16: 
          paramInt1 = (paramInt4 - m - i1) / 2 + m + localˊ.topMargin - localˊ.bottomMargin;
          break;
        case 80: 
          paramInt1 = paramInt4 - i1 - localˊ.bottomMargin;
          break;
        }
        paramInt1 = m + localˊ.topMargin;
        localView.layout(paramInt2, paramInt1, paramInt2 + n, paramInt1 + i1);
      }
      paramInt3 += 1;
    }
  }
  
  private void ˋ(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    View localView = findViewById(paramInt);
    if (localView != null)
    {
      if localif = new if();
      localif.view = localView;
      localif.bCT = paramBoolean1;
      localif.bCU = paramBoolean2;
      this.bzm.add(localif);
      this.bzl.add(localif);
    }
  }
  
  private void ˏ(int paramInt, float paramFloat)
  {
    if ((this.bzg.ʾ(2, paramInt)) && (this.bzg.ᕑ() == null))
    {
      if (paramFloat - this.ر > 0.0F)
      {
        if ((this.bzi != null) && (this.bzi.getTop() <= 0) && (!ˁ(this.bzi)))
        {
          this.bzg.ᐝ(this.bzi, paramInt);
          return;
        }
        localView = ՙ(this.bzm);
        if ((localView != null) && (!ˁ(localView))) {
          this.bzg.ᐝ(localView, paramInt);
        }
        return;
      }
      if ((this.bzi != null) && (this.bzi.getTop() > 0) && (!ˁ(this.bzi)))
      {
        this.bzg.ᐝ(this.bzi, paramInt);
        return;
      }
      View localView = ʹ(this.bzm);
      if ((localView != null) && (!ˁ(localView))) {
        this.bzg.ᐝ(localView, paramInt);
      }
    }
  }
  
  private View ՙ(List<afx> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      afx localafx = (afx)paramList.next();
      if (localafx.ʇ(1)) {
        return localafx.view;
      }
    }
    return null;
  }
  
  private void ᐝ(View paramView, boolean paramBoolean)
  {
    if (this.bzh != null)
    {
      if (paramBoolean)
      {
        this.bzh.ᐢ(paramView);
        return;
      }
      this.bzh.৲(paramView);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof adw.ˊ)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if (this.bzg.ʿ(true)) {
      ﺑ.ʿ(this);
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
    afx localafx = ˋ(this.bzl, paramView);
    if ((localafx != null) && (localafx.bCU))
    {
      float f = ((adw.ˊ)paramView.getLayoutParams()).bzt;
      if (f > 0.0F)
      {
        int i = (int)(((this.bzq & 0xFF000000) >>> 24) * f);
        int j = this.bzq;
        this.bzr.setColor(i << 24 | j & 0xFFFFFF);
        paramCanvas.drawRect(0.0F, 0.0F, getWidth(), paramView.getTop(), this.bzr);
      }
    }
    return bool;
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof adw.ˊ)) {
      return new adw.ˊ((adw.ˊ)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new adw.ˊ((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new adw.ˊ(paramLayoutParams);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.ᴐ = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.ᴐ = true;
  }
  
  protected void onFinishInflate()
  {
    this.bzi = findViewById(2131427465);
    ˋ(2131427482, true, false);
    ˋ(2131427485, false, true);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.bzj) {
      return false;
    }
    int i = ᵧ.ˊ(paramMotionEvent);
    int k = ᵧ.ˋ(paramMotionEvent, 0);
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    this.bzo = f2;
    boolean bool = this.bzg.ʻ(paramMotionEvent);
    int j = 0;
    switch (i)
    {
    default: 
      i = j;
      break;
    case 0: 
      this.ر = f2;
      i = j;
      if (xm() > 0.0F)
      {
        i = j;
        if (this.bzg.ˈ((int)f1, (int)f2) != xl()) {
          i = 1;
        }
      }
      break;
    case 2: 
      paramMotionEvent = this.bzg.ˈ((int)f1, (int)f2);
      if ((paramMotionEvent == null) || (!paramMotionEvent.canScrollVertically((int)(this.ر - f2)))) {
        ˏ(k, f2);
      }
      this.ر = f2;
      i = j;
    }
    return (bool) || (i != 0);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    ˋ(paramInt1, paramInt2, paramInt3, paramInt4, false);
    xk();
    Iterator localIterator = this.bzm.iterator();
    while (localIterator.hasNext()) {
      ʻ(((afx)localIterator.next()).view, paramInt2, paramInt4);
    }
    this.mInLayout = false;
    this.ᴐ = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = getChildCount();
    if ((View.MeasureSpec.getMode(paramInt1) != 1073741824) || (View.MeasureSpec.getMode(paramInt2) != 1073741824)) {
      i = 1;
    } else {
      i = 0;
    }
    this.bzp.clear();
    int n = 0;
    int m = 0;
    int j = 0;
    int k = 0;
    View localView;
    Object localObject;
    while (k < i4)
    {
      localView = getChildAt(k);
      int i1 = n;
      int i2 = m;
      int i3 = j;
      if (localView.getVisibility() != 8)
      {
        measureChildWithMargins(localView, paramInt1, 0, paramInt2, 0);
        localObject = (adw.ˊ)localView.getLayoutParams();
        m = Math.max(m, localView.getMeasuredWidth() + ((adw.ˊ)localObject).leftMargin + ((adw.ˊ)localObject).rightMargin);
        n = Math.max(n, localView.getMeasuredHeight() + ((adw.ˊ)localObject).topMargin + ((adw.ˊ)localObject).bottomMargin);
        j = combineMeasuredStates(j, localView.getMeasuredState());
        i1 = n;
        i2 = m;
        i3 = j;
        if (i != 0) {
          if (((adw.ˊ)localObject).width != -1)
          {
            i1 = n;
            i2 = m;
            i3 = j;
            if (((adw.ˊ)localObject).height != -1) {}
          }
          else
          {
            this.bzp.add(localView);
            i3 = j;
            i2 = m;
            i1 = n;
          }
        }
      }
      k += 1;
      n = i1;
      m = i2;
      j = i3;
    }
    int i = getPaddingLeft();
    k = getPaddingRight();
    n = Math.max(n + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
    setMeasuredDimension(resolveSizeAndState(Math.max(m + (i + k), getSuggestedMinimumWidth()), paramInt1, j), resolveSizeAndState(n, paramInt2, j << 16));
    m = this.bzp.size();
    if (m > 1)
    {
      i = 0;
      while (i < m)
      {
        localView = (View)this.bzp.get(i);
        localObject = (ViewGroup.MarginLayoutParams)localView.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams)localObject).width == -1) {
          j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight() - ((ViewGroup.MarginLayoutParams)localObject).leftMargin - ((ViewGroup.MarginLayoutParams)localObject).rightMargin, 1073741824);
        } else {
          j = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams)localObject).leftMargin + ((ViewGroup.MarginLayoutParams)localObject).rightMargin, ((ViewGroup.MarginLayoutParams)localObject).width);
        }
        if (((ViewGroup.MarginLayoutParams)localObject).height == -1) {
          k = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom() - ((ViewGroup.MarginLayoutParams)localObject).topMargin - ((ViewGroup.MarginLayoutParams)localObject).bottomMargin, 1073741824);
        } else {
          k = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams)localObject).topMargin + ((ViewGroup.MarginLayoutParams)localObject).bottomMargin, ((ViewGroup.MarginLayoutParams)localObject).height);
        }
        localView.measure(j, k);
        i += 1;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.bzj) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    this.bzo = f2;
    try
    {
      this.bzg.ʼ(paramMotionEvent);
    }
    catch (IllegalStateException|IllegalArgumentException localIllegalStateException) {}
    switch (ᵧ.ˊ(paramMotionEvent))
    {
    default: 
      break;
    case 0: 
      this.ر = paramMotionEvent.getY();
      break;
    case 2: 
      View localView = this.bzg.ˈ((int)f1, (int)f2);
      if ((localView == null) || (!localView.canScrollVertically((int)(this.ر - f2)))) {
        ˏ(ᵧ.ˋ(paramMotionEvent, 0), f2);
      }
      this.ر = f2;
      break;
    case 1: 
      paramMotionEvent = xl();
      if (paramMotionEvent != null) {
        ᕀ(paramMotionEvent);
      }
      break;
    }
    return true;
  }
  
  public void requestLayout()
  {
    if (!this.mInLayout) {
      super.requestLayout();
    }
  }
  
  public void setDragRecorder(vj paramvj)
  {
    this.bzn = paramvj;
  }
  
  public void setDraggable(boolean paramBoolean)
  {
    this.bzj = paramBoolean;
  }
  
  public void setFriction(float paramFloat)
  {
    this.bzk = paramFloat;
  }
  
  public void setOnViewDragListener(adw.ˋ paramˋ)
  {
    this.bzh = paramˋ;
  }
  
  protected adw.ˊ xn()
  {
    return new adw.ˊ(-1, -1);
  }
  
  public boolean ˢ(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    return ((adw.ˊ)paramView.getLayoutParams()).bzt > 0.0F;
  }
  
  public void ˤ(View paramView)
  {
    if (this.ᴐ)
    {
      if ((paramView.getId() == 2131427465) || (ˊ(this.bzl, paramView))) {
        ((adw.ˊ)paramView.getLayoutParams()).bzt = 1.0F;
      } else {
        throw new IllegalArgumentException("Not a drag child");
      }
    }
    else
    {
      switch (paramView.getId())
      {
      default: 
        break;
      case 2131427465: 
        this.bzg.ˊ(paramView, paramView.getLeft(), (int)this.bzd);
        break;
      }
      if (ˀ(paramView)) {
        this.bzg.ˊ(paramView, paramView.getLeft(), getHeight() - paramView.getHeight());
      } else {
        throw new IllegalArgumentException("Not a drag child");
      }
    }
    invalidate();
    ᐝ(paramView, false);
  }
  
  public void ι(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131427465: 
      if (paramView.getTop() <= 0)
      {
        ˤ(paramView);
        return;
      }
      ᕀ(paramView);
      return;
    }
    if (ˀ(paramView))
    {
      if (paramView.getTop() >= getHeight())
      {
        ˤ(paramView);
        return;
      }
      ᕀ(paramView);
      return;
    }
    throw new IllegalArgumentException("Not a drag child");
  }
  
  public adw.ˊ ᐝ(AttributeSet paramAttributeSet)
  {
    return new adw.ˊ(getContext(), paramAttributeSet);
  }
  
  public void ᕀ(View paramView)
  {
    if (this.ᴐ)
    {
      if ((paramView.getId() == 2131427465) || (ˊ(this.bzl, paramView))) {
        ((adw.ˊ)paramView.getLayoutParams()).bzt = 0.0F;
      } else {
        throw new IllegalArgumentException("Not a drag child");
      }
    }
    else
    {
      switch (paramView.getId())
      {
      default: 
        break;
      case 2131427465: 
        this.bzg.ˊ(paramView, paramView.getLeft(), 0);
        break;
      }
      if (ˀ(paramView)) {
        this.bzg.ˊ(paramView, paramView.getLeft(), getHeight());
      } else {
        throw new IllegalArgumentException("Not a drag child");
      }
    }
    invalidate();
    ᐝ(paramView, true);
  }
  
  class if
    extends afx
  {
    if() {}
    
    boolean xo()
    {
      return (this.bCT) && (this.view.getTop() >= adw.this.getHeight());
    }
    
    boolean xp()
    {
      return this.view.getTop() < adw.this.getHeight();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adw
 * JD-Core Version:    0.7.0.1
 */