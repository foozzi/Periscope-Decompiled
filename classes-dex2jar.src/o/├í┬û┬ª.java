package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ᖦ
  extends ί
  implements ᵁ.ˊ, ᵊ
{
  private Context mContext;
  private int Ť;
  private ᓴ Ɔ;
  private ᵉ.if ƈ;
  private ᵁ.if ȝ;
  private boolean Ȳ;
  private int ʜ;
  private int Ύ;
  private ᖦ.ˋ Κ;
  private Context Ἴ;
  private boolean ﺧ;
  private int ｓ;
  private ᵁ ｼ;
  
  public ᖦ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ᖦ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    setBaselineAligned(false);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.ｓ = ((int)(56.0F * f));
    this.Ύ = ((int)(4.0F * f));
    this.Ἴ = paramContext;
    this.Ť = 0;
  }
  
  static int ˎ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ᖦ.ˊ localˊ = (ᖦ.ˊ)paramView.getLayoutParams();
    int j = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ᴬ localᴬ;
    if ((paramView instanceof ᴬ)) {
      localᴬ = (ᴬ)paramView;
    } else {
      localᴬ = null;
    }
    if ((localᴬ != null) && (localᴬ.hasText())) {
      paramInt4 = 1;
    } else {
      paramInt4 = 0;
    }
    int i = 0;
    paramInt3 = i;
    if (paramInt2 > 0) {
      if (paramInt4 != 0)
      {
        paramInt3 = i;
        if (paramInt2 < 2) {}
      }
      else
      {
        paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), j);
        i = paramView.getMeasuredWidth();
        paramInt3 = i / paramInt1;
        paramInt2 = paramInt3;
        if (i % paramInt1 != 0) {
          paramInt2 = paramInt3 + 1;
        }
        paramInt3 = paramInt2;
        if (paramInt4 != 0)
        {
          paramInt3 = paramInt2;
          if (paramInt2 < 2) {
            paramInt3 = 2;
          }
        }
      }
    }
    boolean bool;
    if ((!localˊ.Λ) && (paramInt4 != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    localˊ.Ϯ = bool;
    localˊ.ϙ = paramInt3;
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), j);
    return paramInt3;
  }
  
  private void ᐨ(int paramInt1, int paramInt2)
  {
    int i8 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int i7 = View.MeasureSpec.getSize(paramInt2);
    int i = getPaddingLeft();
    int j = getPaddingRight();
    int i13 = getPaddingTop() + getPaddingBottom();
    int i9 = getChildMeasureSpec(paramInt2, i13, -2);
    int i10 = paramInt1 - (i + j);
    paramInt2 = i10 / this.ｓ;
    paramInt1 = this.ｓ;
    if (paramInt2 == 0)
    {
      setMeasuredDimension(i10, 0);
      return;
    }
    int i11 = this.ｓ + i10 % paramInt1 / paramInt2;
    i = 0;
    int m = 0;
    int k = 0;
    int n = 0;
    j = 0;
    long l1 = 0L;
    int i12 = getChildCount();
    int i1 = 0;
    Object localObject;
    long l2;
    int i3;
    ᖦ.ˊ localˊ;
    int i4;
    int i5;
    int i6;
    while (i1 < i12)
    {
      localObject = getChildAt(i1);
      if (((View)localObject).getVisibility() == 8)
      {
        i2 = j;
        l2 = l1;
      }
      else
      {
        boolean bool = localObject instanceof ᴬ;
        i3 = n + 1;
        if (bool) {
          ((View)localObject).setPadding(this.Ύ, 0, this.Ύ, 0);
        }
        localˊ = (ᖦ.ˊ)((View)localObject).getLayoutParams();
        localˊ.ϵ = false;
        localˊ.ϝ = 0;
        localˊ.ϙ = 0;
        localˊ.Ϯ = false;
        localˊ.leftMargin = 0;
        localˊ.rightMargin = 0;
        if ((bool) && (((ᴬ)localObject).hasText())) {
          bool = true;
        } else {
          bool = false;
        }
        localˊ.ϯ = bool;
        if (localˊ.Λ) {
          paramInt1 = 1;
        } else {
          paramInt1 = paramInt2;
        }
        int i14 = ˎ((View)localObject, i11, paramInt1, i9, i13);
        i4 = Math.max(m, i14);
        paramInt1 = k;
        if (localˊ.Ϯ) {
          paramInt1 = k + 1;
        }
        if (localˊ.Λ) {
          j = 1;
        }
        i5 = paramInt2 - i14;
        i6 = Math.max(i, ((View)localObject).getMeasuredHeight());
        paramInt2 = i5;
        i = i6;
        m = i4;
        k = paramInt1;
        n = i3;
        i2 = j;
        l2 = l1;
        if (i14 == 1)
        {
          l2 = l1 | 1 << i1;
          i2 = j;
          n = i3;
          k = paramInt1;
          m = i4;
          i = i6;
          paramInt2 = i5;
        }
      }
      i1 += 1;
      j = i2;
      l1 = l2;
    }
    if ((j != 0) && (n == 2)) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    paramInt1 = 0;
    int i2 = paramInt2;
    for (;;)
    {
      l2 = l1;
      if (k <= 0) {
        break;
      }
      l2 = l1;
      if (i2 <= 0) {
        break;
      }
      i3 = 2147483647;
      long l3 = 0L;
      i5 = 0;
      i4 = 0;
      while (i4 < i12)
      {
        localObject = (ᖦ.ˊ)getChildAt(i4).getLayoutParams();
        if (!((ᖦ.ˊ)localObject).Ϯ)
        {
          i6 = i3;
          l2 = l3;
          paramInt2 = i5;
        }
        else if (((ᖦ.ˊ)localObject).ϙ < i3)
        {
          i6 = ((ᖦ.ˊ)localObject).ϙ;
          l2 = 1 << i4;
          paramInt2 = 1;
        }
        else
        {
          i6 = i3;
          l2 = l3;
          paramInt2 = i5;
          if (((ᖦ.ˊ)localObject).ϙ == i3)
          {
            l2 = l3 | 1 << i4;
            paramInt2 = i5 + 1;
            i6 = i3;
          }
        }
        i4 += 1;
        i3 = i6;
        l3 = l2;
        i5 = paramInt2;
      }
      l1 |= l3;
      if (i5 > i2)
      {
        l2 = l1;
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < i12)
      {
        localObject = getChildAt(paramInt1);
        localˊ = (ᖦ.ˊ)((View)localObject).getLayoutParams();
        if ((1 << paramInt1 & l3) == 0L)
        {
          paramInt2 = i2;
          l2 = l1;
          if (localˊ.ϙ == i3 + 1)
          {
            l2 = l1 | 1 << paramInt1;
            paramInt2 = i2;
          }
        }
        else
        {
          if ((i1 != 0) && (localˊ.ϯ) && (i2 == 1)) {
            ((View)localObject).setPadding(this.Ύ + i11, 0, this.Ύ, 0);
          }
          localˊ.ϙ += 1;
          localˊ.ϵ = true;
          paramInt2 = i2 - 1;
          l2 = l1;
        }
        paramInt1 += 1;
        i2 = paramInt2;
        l1 = l2;
      }
      paramInt1 = 1;
    }
    if ((j == 0) && (n == 1)) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    }
    j = paramInt1;
    if (i2 > 0)
    {
      j = paramInt1;
      if (l2 != 0L) {
        if ((i2 >= n - 1) && (paramInt2 == 0))
        {
          j = paramInt1;
          if (m <= 1) {}
        }
        else
        {
          float f3 = Long.bitCount(l2);
          float f2 = f3;
          if (paramInt2 == 0)
          {
            float f1 = f3;
            if ((1L & l2) != 0L)
            {
              f1 = f3;
              if (!((ᖦ.ˊ)getChildAt(0).getLayoutParams()).ϯ) {
                f1 = f3 - 0.5F;
              }
            }
            f2 = f1;
            if ((1 << i12 - 1 & l2) != 0L)
            {
              f2 = f1;
              if (!((ᖦ.ˊ)getChildAt(i12 - 1).getLayoutParams()).ϯ) {
                f2 = f1 - 0.5F;
              }
            }
          }
          if (f2 > 0.0F) {
            j = (int)(i2 * i11 / f2);
          } else {
            j = 0;
          }
          k = 0;
          while (k < i12)
          {
            if ((1 << k & l2) == 0L)
            {
              paramInt2 = paramInt1;
            }
            else
            {
              localObject = getChildAt(k);
              localˊ = (ᖦ.ˊ)((View)localObject).getLayoutParams();
              if ((localObject instanceof ᴬ))
              {
                localˊ.ϝ = j;
                localˊ.ϵ = true;
                if ((k == 0) && (!localˊ.ϯ)) {
                  localˊ.leftMargin = (-j / 2);
                }
                paramInt2 = 1;
              }
              else if (localˊ.Λ)
              {
                localˊ.ϝ = j;
                localˊ.ϵ = true;
                localˊ.rightMargin = (-j / 2);
                paramInt2 = 1;
              }
              else
              {
                if (k != 0) {
                  localˊ.leftMargin = (j / 2);
                }
                paramInt2 = paramInt1;
                if (k != i12 - 1)
                {
                  localˊ.rightMargin = (j / 2);
                  paramInt2 = paramInt1;
                }
              }
            }
            k += 1;
            paramInt1 = paramInt2;
          }
          j = paramInt1;
        }
      }
    }
    if (j != 0)
    {
      paramInt1 = 0;
      while (paramInt1 < i12)
      {
        localObject = getChildAt(paramInt1);
        localˊ = (ᖦ.ˊ)((View)localObject).getLayoutParams();
        if (localˊ.ϵ) {
          ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(localˊ.ϙ * i11 + localˊ.ϝ, 1073741824), i9);
        }
        paramInt1 += 1;
      }
    }
    paramInt1 = i7;
    if (i8 != 1073741824) {
      paramInt1 = i;
    }
    setMeasuredDimension(i10, paramInt1);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof ᖦ.ˊ));
  }
  
  public void dismissPopupMenus()
  {
    if (this.Ɔ != null) {
      this.Ɔ.זּ();
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (this.Ɔ != null) && (this.Ɔ.isOverflowMenuShowing());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    if (this.Ɔ != null)
    {
      this.Ɔ.ˈ(false);
      if (this.Ɔ.isOverflowMenuShowing())
      {
        this.Ɔ.hideOverflowMenu();
        this.Ɔ.showOverflowMenu();
      }
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    dismissPopupMenus();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.Ȳ)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i2 = getChildCount();
    int i1 = (paramInt4 - paramInt2) / 2;
    int i3 = ŀ();
    paramInt4 = 0;
    int j = 0;
    paramInt2 = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int k = 0;
    paramBoolean = ᓯ.ᐩ(this);
    int i = 0;
    View localView;
    ᖦ.ˊ localˊ;
    while (i < i2)
    {
      localView = getChildAt(i);
      if (localView.getVisibility() != 8)
      {
        localˊ = (ᖦ.ˊ)localView.getLayoutParams();
        int m;
        int n;
        if (localˊ.Λ)
        {
          m = localView.getMeasuredWidth();
          k = m;
          if (เ(i)) {
            k = m + i3;
          }
          int i4 = localView.getMeasuredHeight();
          if (paramBoolean)
          {
            n = getPaddingLeft() + localˊ.leftMargin;
            m = n + k;
          }
          else
          {
            m = getWidth() - getPaddingRight() - localˊ.rightMargin;
            n = m - k;
          }
          int i5 = i1 - i4 / 2;
          localView.layout(n, i5, m, i5 + i4);
          paramInt2 -= k;
          k = 1;
        }
        else
        {
          n = localView.getMeasuredWidth() + localˊ.leftMargin + localˊ.rightMargin;
          m = paramInt4 + n;
          paramInt2 -= n;
          paramInt4 = m;
          if (เ(i)) {
            paramInt4 = m + i3;
          }
          j += 1;
        }
      }
      i += 1;
    }
    if ((i2 == 1) && (k == 0))
    {
      localView = getChildAt(0);
      paramInt2 = localView.getMeasuredWidth();
      paramInt4 = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
      paramInt3 = i1 - paramInt4 / 2;
      localView.layout(paramInt1, paramInt3, paramInt1 + paramInt2, paramInt3 + paramInt4);
      return;
    }
    if (k != 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = 1;
    }
    paramInt1 = j - paramInt1;
    if (paramInt1 > 0) {
      paramInt1 = paramInt2 / paramInt1;
    } else {
      paramInt1 = 0;
    }
    paramInt4 = Math.max(0, paramInt1);
    if (paramBoolean)
    {
      paramInt2 = getWidth() - getPaddingRight();
      paramInt1 = 0;
      while (paramInt1 < i2)
      {
        localView = getChildAt(paramInt1);
        localˊ = (ᖦ.ˊ)localView.getLayoutParams();
        paramInt3 = paramInt2;
        if (localView.getVisibility() != 8) {
          if (localˊ.Λ)
          {
            paramInt3 = paramInt2;
          }
          else
          {
            paramInt2 -= localˊ.rightMargin;
            paramInt3 = localView.getMeasuredWidth();
            i = localView.getMeasuredHeight();
            j = i1 - i / 2;
            localView.layout(paramInt2 - paramInt3, j, paramInt2, j + i);
            paramInt3 = paramInt2 - (localˊ.leftMargin + paramInt3 + paramInt4);
          }
        }
        paramInt1 += 1;
        paramInt2 = paramInt3;
      }
      return;
    }
    paramInt2 = getPaddingLeft();
    paramInt1 = 0;
    while (paramInt1 < i2)
    {
      localView = getChildAt(paramInt1);
      localˊ = (ᖦ.ˊ)localView.getLayoutParams();
      paramInt3 = paramInt2;
      if (localView.getVisibility() != 8) {
        if (localˊ.Λ)
        {
          paramInt3 = paramInt2;
        }
        else
        {
          paramInt2 += localˊ.leftMargin;
          paramInt3 = localView.getMeasuredWidth();
          i = localView.getMeasuredHeight();
          j = i1 - i / 2;
          localView.layout(paramInt2, j, paramInt2 + paramInt3, j + i);
          paramInt3 = paramInt2 + (localˊ.rightMargin + paramInt3 + paramInt4);
        }
      }
      paramInt1 += 1;
      paramInt2 = paramInt3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = this.Ȳ;
    boolean bool1;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824) {
      bool1 = true;
    } else {
      bool1 = false;
    }
    this.Ȳ = bool1;
    if (bool2 != this.Ȳ) {
      this.ʜ = 0;
    }
    int i = View.MeasureSpec.getSize(paramInt1);
    if ((this.Ȳ) && (this.ｼ != null) && (i != this.ʜ))
    {
      this.ʜ = i;
      this.ｼ.ˑ(true);
    }
    int j = getChildCount();
    if ((this.Ȳ) && (j > 0))
    {
      ᐨ(paramInt1, paramInt2);
      return;
    }
    i = 0;
    while (i < j)
    {
      ᖦ.ˊ localˊ = (ᖦ.ˊ)getChildAt(i).getLayoutParams();
      localˊ.rightMargin = 0;
      localˊ.leftMargin = 0;
      i += 1;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.Ɔ.setExpandedActionViewsExclusive(paramBoolean);
  }
  
  public void setMenuCallbacks(ᵉ.if paramif, ᵁ.if paramif1)
  {
    this.ƈ = paramif;
    this.ȝ = paramif1;
  }
  
  public void setOnMenuItemClickListener(ᖦ.ˋ paramˋ)
  {
    this.Κ = paramˋ;
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    this.ﺧ = paramBoolean;
  }
  
  public void setPopupTheme(int paramInt)
  {
    if (this.Ť != paramInt)
    {
      this.Ť = paramInt;
      if (paramInt == 0)
      {
        this.Ἴ = this.mContext;
        return;
      }
      this.Ἴ = new ContextThemeWrapper(this.mContext, paramInt);
    }
  }
  
  public void setPresenter(ᓴ paramᓴ)
  {
    this.Ɔ = paramᓴ;
    this.Ɔ.ˊ(this);
  }
  
  public boolean showOverflowMenu()
  {
    return (this.Ɔ != null) && (this.Ɔ.showOverflowMenu());
  }
  
  protected ᖦ.ˊ ˊ(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof ᖦ.ˊ)) {
        paramLayoutParams = new ᖦ.ˊ((ᖦ.ˊ)paramLayoutParams);
      } else {
        paramLayoutParams = new ᖦ.ˊ(paramLayoutParams);
      }
      if (paramLayoutParams.gravity <= 0) {
        paramLayoutParams.gravity = 16;
      }
      return paramLayoutParams;
    }
    return רּ();
  }
  
  public void ˊ(ᵁ paramᵁ)
  {
    this.ｼ = paramᵁ;
  }
  
  public boolean ˊ(ᵃ paramᵃ)
  {
    return this.ｼ.ˊ(paramᵃ, 0);
  }
  
  public ᖦ.ˊ ˋ(AttributeSet paramAttributeSet)
  {
    return new ᖦ.ˊ(getContext(), paramAttributeSet);
  }
  
  protected boolean เ(int paramInt)
  {
    if (paramInt == 0) {
      return false;
    }
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof ᖦ.if)) {
        bool1 = ((ᖦ.if)localView1).ї() | false;
      }
    }
    bool2 = bool1;
    if (paramInt > 0)
    {
      bool2 = bool1;
      if ((localView2 instanceof ᖦ.if)) {
        bool2 = bool1 | ((ᖦ.if)localView2).і();
      }
    }
    return bool2;
  }
  
  protected ᖦ.ˊ רּ()
  {
    ᖦ.ˊ localˊ = new ᖦ.ˊ(-2, -2);
    localˊ.gravity = 16;
    return localˊ;
  }
  
  public ᖦ.ˊ ﭕ()
  {
    ᖦ.ˊ localˊ = רּ();
    localˊ.Λ = true;
    return localˊ;
  }
  
  public ᵁ ﭜ()
  {
    return this.ｼ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦
 * JD-Core Version:    0.7.0.1
 */