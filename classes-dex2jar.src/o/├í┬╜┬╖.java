package o;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

public class ί
  extends ViewGroup
{
  private int ᒰ = 8388659;
  private boolean ᔱ = true;
  private int ᔲ = -1;
  private int ᔹ = 0;
  private int ᔺ;
  private int ᔽ;
  private float ᕂ;
  private boolean ᕃ;
  private int[] ᕄ;
  private int[] ᕆ;
  private Drawable ᖅ;
  private int ᖩ;
  private int ᖫ;
  private int ᖭ;
  private int ᖸ;
  
  public ί(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ί(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ί(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ๅ.ˊ(paramContext, paramAttributeSet, ڊ.ʽ.LinearLayoutCompat, paramInt, 0);
    paramInt = paramContext.getInt(ڊ.ʽ.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0) {
      setOrientation(paramInt);
    }
    paramInt = paramContext.getInt(ڊ.ʽ.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0) {
      setGravity(paramInt);
    }
    boolean bool = paramContext.getBoolean(ڊ.ʽ.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool) {
      setBaselineAligned(bool);
    }
    this.ᕂ = paramContext.getFloat(ڊ.ʽ.LinearLayoutCompat_android_weightSum, -1.0F);
    this.ᔲ = paramContext.getInt(ڊ.ʽ.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    this.ᕃ = paramContext.getBoolean(ڊ.ʽ.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(paramContext.getDrawable(ڊ.ʽ.LinearLayoutCompat_divider));
    this.ᖭ = paramContext.getInt(ڊ.ʽ.LinearLayoutCompat_showDividers, 0);
    this.ᖸ = paramContext.getDimensionPixelSize(ڊ.ʽ.LinearLayoutCompat_dividerPadding, 0);
    paramContext.recycle();
  }
  
  private void ˏ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
  
  private void ﹶ(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int i = 0;
    while (i < paramInt1)
    {
      View localView = getVirtualChildAt(i);
      if (localView.getVisibility() != 8)
      {
        ί.if localif = (ί.if)localView.getLayoutParams();
        if (localif.width == -1)
        {
          int k = localif.height;
          localif.height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, j, 0, paramInt2, 0);
          localif.height = k;
        }
      }
      i += 1;
    }
  }
  
  private void ｰ(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    int i = 0;
    while (i < paramInt1)
    {
      View localView = getVirtualChildAt(i);
      if (localView.getVisibility() != 8)
      {
        ί.if localif = (ί.if)localView.getLayoutParams();
        if (localif.height == -1)
        {
          int k = localif.width;
          localif.width = localView.getMeasuredWidth();
          measureChildWithMargins(localView, paramInt2, 0, j, 0);
          localif.width = k;
        }
      }
      i += 1;
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ί.if;
  }
  
  public int getBaseline()
  {
    if (this.ᔲ < 0) {
      return super.getBaseline();
    }
    if (getChildCount() <= this.ᔲ) {
      throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }
    View localView = getChildAt(this.ᔲ);
    int k = localView.getBaseline();
    if (k == -1)
    {
      if (this.ᔲ == 0) {
        return -1;
      }
      throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
    }
    int j = this.ᔹ;
    int i = j;
    if (this.ᔺ == 1)
    {
      int m = this.ᒰ & 0x70;
      i = j;
      if (m != 48) {
        switch (m)
        {
        default: 
          i = j;
          break;
        case 80: 
          i = getBottom() - getTop() - getPaddingBottom() - this.ᔽ;
          break;
        case 16: 
          i = j + (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - this.ᔽ) / 2;
        }
      }
    }
    return ((ί.if)localView.getLayoutParams()).topMargin + i + k;
  }
  
  View getVirtualChildAt(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  int getVirtualChildCount()
  {
    return getChildCount();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.ᖅ == null) {
      return;
    }
    if (this.ᔺ == 1)
    {
      ˋ(paramCanvas);
      return;
    }
    ˎ(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ί.class.getName());
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ί.class.getName());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.ᔺ == 1)
    {
      ˏ(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    ᐝ(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.ᔺ == 1)
    {
      ⁱ(paramInt1, paramInt2);
      return;
    }
    ﹺ(paramInt1, paramInt2);
  }
  
  public void setBaselineAligned(boolean paramBoolean)
  {
    this.ᔱ = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getChildCount())) {
      throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }
    this.ᔲ = paramInt;
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == this.ᖅ) {
      return;
    }
    this.ᖅ = paramDrawable;
    if (paramDrawable != null)
    {
      this.ᖩ = paramDrawable.getIntrinsicWidth();
      this.ᖫ = paramDrawable.getIntrinsicHeight();
    }
    else
    {
      this.ᖩ = 0;
      this.ᖫ = 0;
    }
    boolean bool;
    if (paramDrawable == null) {
      bool = true;
    } else {
      bool = false;
    }
    setWillNotDraw(bool);
    requestLayout();
  }
  
  public void setDividerPadding(int paramInt)
  {
    this.ᖸ = paramInt;
  }
  
  public void setGravity(int paramInt)
  {
    if (this.ᒰ != paramInt)
    {
      int i = paramInt;
      if ((0x800007 & paramInt) == 0) {
        i = paramInt | 0x800003;
      }
      paramInt = i;
      if ((i & 0x70) == 0) {
        paramInt = i | 0x30;
      }
      this.ᒰ = paramInt;
      requestLayout();
    }
  }
  
  public void setHorizontalGravity(int paramInt)
  {
    paramInt &= 0x800007;
    if ((this.ᒰ & 0x800007) != paramInt)
    {
      this.ᒰ = (this.ᒰ & 0xFF7FFFF8 | paramInt);
      requestLayout();
    }
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    this.ᕃ = paramBoolean;
  }
  
  public void setOrientation(int paramInt)
  {
    if (this.ᔺ != paramInt)
    {
      this.ᔺ = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDividers(int paramInt)
  {
    if (paramInt != this.ᖭ) {
      requestLayout();
    }
    this.ᖭ = paramInt;
  }
  
  public void setVerticalGravity(int paramInt)
  {
    paramInt &= 0x70;
    if ((this.ᒰ & 0x70) != paramInt)
    {
      this.ᒰ = (this.ᒰ & 0xFFFFFF8F | paramInt);
      requestLayout();
    }
  }
  
  public void setWeightSum(float paramFloat)
  {
    this.ᕂ = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public int ŀ()
  {
    return this.ᖩ;
  }
  
  void ˊ(Canvas paramCanvas, int paramInt)
  {
    this.ᖅ.setBounds(getPaddingLeft() + this.ᖸ, paramInt, getWidth() - getPaddingRight() - this.ᖸ, this.ᖫ + paramInt);
    this.ᖅ.draw(paramCanvas);
  }
  
  void ˊ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  protected ί.if ˋ(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new ί.if(paramLayoutParams);
  }
  
  void ˋ(Canvas paramCanvas)
  {
    int j = getVirtualChildCount();
    int i = 0;
    View localView;
    ί.if localif;
    while (i < j)
    {
      localView = getVirtualChildAt(i);
      if ((localView != null) && (localView.getVisibility() != 8) && (ᵛ(i)))
      {
        localif = (ί.if)localView.getLayoutParams();
        ˊ(paramCanvas, localView.getTop() - localif.topMargin - this.ᖫ);
      }
      i += 1;
    }
    if (ᵛ(j))
    {
      localView = getVirtualChildAt(j - 1);
      if (localView == null)
      {
        i = getHeight() - getPaddingBottom() - this.ᖫ;
      }
      else
      {
        localif = (ί.if)localView.getLayoutParams();
        i = localView.getBottom() + localif.bottomMargin;
      }
      ˊ(paramCanvas, i);
    }
  }
  
  void ˋ(Canvas paramCanvas, int paramInt)
  {
    this.ᖅ.setBounds(paramInt, getPaddingTop() + this.ᖸ, this.ᖩ + paramInt, getHeight() - getPaddingBottom() - this.ᖸ);
    this.ᖅ.draw(paramCanvas);
  }
  
  public ί.if ˎ(AttributeSet paramAttributeSet)
  {
    return new ί.if(getContext(), paramAttributeSet);
  }
  
  void ˎ(Canvas paramCanvas)
  {
    int k = getVirtualChildCount();
    boolean bool = ᓯ.ᐩ(this);
    int i = 0;
    View localView;
    ί.if localif;
    while (i < k)
    {
      localView = getVirtualChildAt(i);
      if ((localView != null) && (localView.getVisibility() != 8) && (ᵛ(i)))
      {
        localif = (ί.if)localView.getLayoutParams();
        int j;
        if (bool) {
          j = localView.getRight() + localif.rightMargin;
        } else {
          j = localView.getLeft() - localif.leftMargin - this.ᖩ;
        }
        ˋ(paramCanvas, j);
      }
      i += 1;
    }
    if (ᵛ(k))
    {
      localView = getVirtualChildAt(k - 1);
      if (localView == null)
      {
        if (bool) {
          i = getPaddingLeft();
        } else {
          i = getWidth() - getPaddingRight() - this.ᖩ;
        }
      }
      else
      {
        localif = (ί.if)localView.getLayoutParams();
        if (bool) {
          i = localView.getLeft() - localif.leftMargin - this.ᖩ;
        } else {
          i = localView.getRight() + localif.rightMargin;
        }
      }
      ˋ(paramCanvas, i);
    }
  }
  
  void ˏ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = paramInt3 - paramInt1;
    int k = getPaddingRight();
    int m = getPaddingRight();
    int n = getVirtualChildCount();
    paramInt1 = this.ᒰ;
    int i1 = this.ᒰ;
    switch (paramInt1 & 0x70)
    {
    default: 
      break;
    case 80: 
      paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - this.ᔽ;
      break;
    case 16: 
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - this.ᔽ) / 2;
      break;
    }
    paramInt1 = getPaddingTop();
    paramInt2 = 0;
    while (paramInt2 < n)
    {
      View localView = getVirtualChildAt(paramInt2);
      if (localView == null)
      {
        paramInt3 = paramInt1 + ᵥ(paramInt2);
        paramInt4 = paramInt2;
      }
      else
      {
        paramInt3 = paramInt1;
        paramInt4 = paramInt2;
        if (localView.getVisibility() != 8)
        {
          int i2 = localView.getMeasuredWidth();
          int i3 = localView.getMeasuredHeight();
          ί.if localif = (ί.if)localView.getLayoutParams();
          paramInt4 = localif.gravity;
          paramInt3 = paramInt4;
          if (paramInt4 < 0) {
            paramInt3 = i1 & 0x800007;
          }
          switch (৲.getAbsoluteGravity(paramInt3, ﺑ.ˌ(this)) & 0x7)
          {
          default: 
            break;
          case 1: 
            paramInt3 = (j - i - m - i2) / 2 + i + localif.leftMargin - localif.rightMargin;
            break;
          case 5: 
            paramInt3 = j - k - i2 - localif.rightMargin;
            break;
          }
          paramInt3 = i + localif.leftMargin;
          paramInt4 = paramInt1;
          if (ᵛ(paramInt2)) {
            paramInt4 = paramInt1 + this.ᖫ;
          }
          paramInt1 = paramInt4 + localif.topMargin;
          ˏ(localView, paramInt3, יִ(localView) + paramInt1, i2, i3);
          paramInt3 = paramInt1 + (localif.bottomMargin + i3 + יּ(localView));
          paramInt4 = paramInt2 + ι(localView, paramInt2);
        }
      }
      paramInt2 = paramInt4 + 1;
      paramInt1 = paramInt3;
    }
  }
  
  void ᐝ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = ᓯ.ᐩ(this);
    int k = getPaddingTop();
    int n = paramInt4 - paramInt2;
    int i1 = getPaddingBottom();
    int i2 = getPaddingBottom();
    int i3 = getVirtualChildCount();
    paramInt2 = this.ᒰ;
    int i4 = this.ᒰ;
    boolean bool2 = this.ᔱ;
    int[] arrayOfInt1 = this.ᕄ;
    int[] arrayOfInt2 = this.ᕆ;
    switch (৲.getAbsoluteGravity(paramInt2 & 0x800007, ﺑ.ˌ(this)))
    {
    default: 
      break;
    case 5: 
      paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - this.ᔽ;
      break;
    case 1: 
      paramInt1 = getPaddingLeft() + (paramInt3 - paramInt1 - this.ᔽ) / 2;
      break;
    }
    paramInt1 = getPaddingLeft();
    paramInt4 = 0;
    int i = 1;
    if (bool1)
    {
      paramInt4 = i3 - 1;
      i = -1;
    }
    paramInt2 = 0;
    for (paramInt3 = paramInt1; paramInt2 < i3; paramInt3 = paramInt1)
    {
      int i5 = paramInt4 + i * paramInt2;
      View localView = getVirtualChildAt(i5);
      int j;
      if (localView == null)
      {
        paramInt1 = paramInt3 + ᵥ(i5);
        j = paramInt2;
      }
      else
      {
        paramInt1 = paramInt3;
        j = paramInt2;
        if (localView.getVisibility() != 8)
        {
          int i6 = localView.getMeasuredWidth();
          int i7 = localView.getMeasuredHeight();
          paramInt1 = -1;
          ί.if localif = (ί.if)localView.getLayoutParams();
          j = paramInt1;
          if (bool2)
          {
            j = paramInt1;
            if (localif.height != -1) {
              j = localView.getBaseline();
            }
          }
          int m = localif.gravity;
          paramInt1 = m;
          if (m < 0) {
            paramInt1 = i4 & 0x70;
          }
          switch (paramInt1 & 0x70)
          {
          default: 
            break;
          case 48: 
            m = k + localif.topMargin;
            paramInt1 = m;
            if (j == -1) {
              break label470;
            }
            paramInt1 = m + (arrayOfInt1[1] - j);
            break;
          case 16: 
            paramInt1 = (n - k - i2 - i7) / 2 + k + localif.topMargin - localif.bottomMargin;
            break;
          case 80: 
            m = n - i1 - i7 - localif.bottomMargin;
            paramInt1 = m;
            if (j == -1) {
              break label470;
            }
            paramInt1 = localView.getMeasuredHeight();
            paramInt1 = m - (arrayOfInt2[2] - (paramInt1 - j));
            break;
          }
          paramInt1 = k;
          label470:
          j = paramInt3;
          if (ᵛ(i5)) {
            j = paramInt3 + this.ᖩ;
          }
          paramInt3 = j + localif.leftMargin;
          ˏ(localView, יִ(localView) + paramInt3, paramInt1, i6, i7);
          paramInt1 = paramInt3 + (localif.rightMargin + i6 + יּ(localView));
          j = paramInt2 + ι(localView, i5);
        }
      }
      paramInt2 = j + 1;
    }
  }
  
  protected boolean ᵛ(int paramInt)
  {
    if (paramInt == 0) {
      return (this.ᖭ & 0x1) != 0;
    }
    if (paramInt == getChildCount()) {
      return (this.ᖭ & 0x4) != 0;
    }
    if ((this.ᖭ & 0x2) != 0)
    {
      paramInt -= 1;
      while (paramInt >= 0)
      {
        if (getChildAt(paramInt).getVisibility() != 8) {
          return true;
        }
        paramInt -= 1;
      }
      return false;
    }
    return false;
  }
  
  int ᵥ(int paramInt)
  {
    return 0;
  }
  
  int ι(View paramView, int paramInt)
  {
    return 0;
  }
  
  void ⁱ(int paramInt1, int paramInt2)
  {
    this.ᔽ = 0;
    int m = 0;
    int k = 0;
    int i = 0;
    int i1 = 0;
    int j = 1;
    float f1 = 0.0F;
    int i8 = getVirtualChildCount();
    int i9 = View.MeasureSpec.getMode(paramInt1);
    int i10 = View.MeasureSpec.getMode(paramInt2);
    int n = 0;
    int i4 = 0;
    int i11 = this.ᔲ;
    boolean bool = this.ᕃ;
    int i3 = -2147483648;
    int i2 = 0;
    View localView;
    int i6;
    ί.if localif;
    int i5;
    while (i2 < i8)
    {
      localView = getVirtualChildAt(i2);
      if (localView == null)
      {
        this.ᔽ += ᵥ(i2);
        i6 = i3;
      }
      else if (localView.getVisibility() == 8)
      {
        i2 += ι(localView, i2);
        i6 = i3;
      }
      else
      {
        if (ᵛ(i2)) {
          this.ᔽ += this.ᖫ;
        }
        localif = (ί.if)localView.getLayoutParams();
        f1 += localif.weight;
        if ((i10 == 1073741824) && (localif.height == 0) && (localif.weight > 0.0F))
        {
          i4 = this.ᔽ;
          this.ᔽ = Math.max(i4, localif.topMargin + i4 + localif.bottomMargin);
          i5 = 1;
          i6 = i3;
        }
        else
        {
          i6 = -2147483648;
          i5 = i6;
          if (localif.height == 0)
          {
            i5 = i6;
            if (localif.weight > 0.0F)
            {
              i5 = 0;
              localif.height = -2;
            }
          }
          if (f1 == 0.0F) {
            i6 = this.ᔽ;
          } else {
            i6 = 0;
          }
          ˊ(localView, i2, paramInt1, 0, paramInt2, i6);
          if (i5 != -2147483648) {
            localif.height = i5;
          }
          i7 = localView.getMeasuredHeight();
          i5 = this.ᔽ;
          this.ᔽ = Math.max(i5, i5 + i7 + localif.topMargin + localif.bottomMargin + יּ(localView));
          i5 = i4;
          i6 = i3;
          if (bool)
          {
            i6 = Math.max(i7, i3);
            i5 = i4;
          }
        }
        if ((i11 >= 0) && (i11 == i2 + 1)) {
          this.ᔹ = this.ᔽ;
        }
        if ((i2 < i11) && (localif.weight > 0.0F)) {
          throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
        }
        i7 = 0;
        i3 = n;
        i4 = i7;
        if (i9 != 1073741824)
        {
          i3 = n;
          i4 = i7;
          if (localif.width == -1)
          {
            i3 = 1;
            i4 = 1;
          }
        }
        n = localif.leftMargin + localif.rightMargin;
        i7 = localView.getMeasuredWidth() + n;
        m = Math.max(m, i7);
        k = ᓯ.combineMeasuredStates(k, ﺑ.ˍ(localView));
        if ((j != 0) && (localif.width == -1)) {
          j = 1;
        } else {
          j = 0;
        }
        if (localif.weight > 0.0F)
        {
          if (i4 == 0) {
            n = i7;
          }
          i1 = Math.max(i1, n);
        }
        else
        {
          if (i4 == 0) {
            n = i7;
          }
          i = Math.max(i, n);
        }
        i2 += ι(localView, i2);
        i4 = i5;
        n = i3;
      }
      i2 += 1;
      i3 = i6;
    }
    if ((this.ᔽ > 0) && (ᵛ(i8))) {
      this.ᔽ += this.ᖫ;
    }
    if ((bool) && ((i10 == -2147483648) || (i10 == 0)))
    {
      this.ᔽ = 0;
      i2 = 0;
      while (i2 < i8)
      {
        localView = getVirtualChildAt(i2);
        if (localView == null)
        {
          this.ᔽ += ᵥ(i2);
        }
        else if (localView.getVisibility() == 8)
        {
          i2 += ι(localView, i2);
        }
        else
        {
          localif = (ί.if)localView.getLayoutParams();
          i5 = this.ᔽ;
          this.ᔽ = Math.max(i5, i5 + i3 + localif.topMargin + localif.bottomMargin + יּ(localView));
        }
        i2 += 1;
      }
    }
    this.ᔽ += getPaddingTop() + getPaddingBottom();
    int i7 = ﺑ.resolveSizeAndState(Math.max(this.ᔽ, getSuggestedMinimumHeight()), paramInt2, 0);
    i2 = (i7 & 0xFFFFFF) - this.ᔽ;
    if ((i4 != 0) || ((i2 != 0) && (f1 > 0.0F)))
    {
      if (this.ᕂ > 0.0F) {
        f1 = this.ᕂ;
      }
      this.ᔽ = 0;
      i4 = 0;
      for (i3 = i2; i4 < i8; i3 = i2)
      {
        localView = getVirtualChildAt(i4);
        if (localView.getVisibility() == 8)
        {
          i2 = i3;
        }
        else
        {
          localif = (ί.if)localView.getLayoutParams();
          float f3 = localif.weight;
          i1 = k;
          i2 = i3;
          float f2 = f1;
          if (f3 > 0.0F)
          {
            i1 = (int)(i3 * f3 / f1);
            f2 = f1 - f3;
            i2 = i3 - i1;
            i5 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + localif.leftMargin + localif.rightMargin, localif.width);
            if ((localif.height != 0) || (i10 != 1073741824))
            {
              i3 = localView.getMeasuredHeight() + i1;
              i1 = i3;
              if (i3 < 0) {
                i1 = 0;
              }
              localView.measure(i5, View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
            }
            else
            {
              if (i1 <= 0) {
                i1 = 0;
              }
              localView.measure(i5, View.MeasureSpec.makeMeasureSpec(i1, 1073741824));
            }
            i1 = ᓯ.combineMeasuredStates(k, ﺑ.ˍ(localView) & 0xFFFFFF00);
          }
          i3 = localif.leftMargin + localif.rightMargin;
          i5 = localView.getMeasuredWidth() + i3;
          m = Math.max(m, i5);
          if ((i9 != 1073741824) && (localif.width == -1)) {
            k = 1;
          } else {
            k = 0;
          }
          if (k != 0) {
            k = i3;
          } else {
            k = i5;
          }
          k = Math.max(i, k);
          if ((j != 0) && (localif.width == -1)) {
            i = 1;
          } else {
            i = 0;
          }
          j = this.ᔽ;
          this.ᔽ = Math.max(j, localView.getMeasuredHeight() + j + localif.topMargin + localif.bottomMargin + יּ(localView));
          f1 = f2;
          j = i;
          i = k;
          k = i1;
        }
        i4 += 1;
      }
      this.ᔽ += getPaddingTop() + getPaddingBottom();
      i1 = m;
      i2 = k;
      i4 = j;
    }
    else
    {
      i6 = Math.max(i, i1);
      i1 = m;
      i2 = k;
      i = i6;
      i4 = j;
      if (bool)
      {
        i1 = m;
        i2 = k;
        i = i6;
        i4 = j;
        if (i10 != 1073741824)
        {
          i5 = 0;
          for (;;)
          {
            i1 = m;
            i2 = k;
            i = i6;
            i4 = j;
            if (i5 >= i8) {
              break;
            }
            localView = getVirtualChildAt(i5);
            if ((localView != null) && (localView.getVisibility() != 8) && (((ί.if)localView.getLayoutParams()).weight > 0.0F)) {
              localView.measure(View.MeasureSpec.makeMeasureSpec(localView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            }
            i5 += 1;
          }
        }
      }
    }
    j = i1;
    if (i4 == 0)
    {
      j = i1;
      if (i9 != 1073741824) {
        j = i;
      }
    }
    setMeasuredDimension(ﺑ.resolveSizeAndState(Math.max(j + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i2), i7);
    if (n != 0) {
      ﹶ(i8, paramInt2);
    }
  }
  
  int יִ(View paramView)
  {
    return 0;
  }
  
  int יּ(View paramView)
  {
    return 0;
  }
  
  protected ί.if ﭡ()
  {
    if (this.ᔺ == 0) {
      return new ί.if(-2, -2);
    }
    if (this.ᔺ == 1) {
      return new ί.if(-1, -2);
    }
    return null;
  }
  
  void ﹺ(int paramInt1, int paramInt2)
  {
    this.ᔽ = 0;
    int i4 = 0;
    int k = 0;
    int i = 0;
    int n = 0;
    int j = 1;
    float f1 = 0.0F;
    int i11 = getVirtualChildCount();
    int i13 = View.MeasureSpec.getMode(paramInt1);
    int i12 = View.MeasureSpec.getMode(paramInt2);
    int m = 0;
    int i3 = 0;
    if ((this.ᕄ == null) || (this.ᕆ == null))
    {
      this.ᕄ = new int[4];
      this.ᕆ = new int[4];
    }
    Object localObject = this.ᕄ;
    int[] arrayOfInt = this.ᕆ;
    localObject[3] = -1;
    localObject[2] = -1;
    localObject[1] = -1;
    localObject[0] = -1;
    arrayOfInt[3] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[0] = -1;
    boolean bool1 = this.ᔱ;
    boolean bool2 = this.ᕃ;
    int i7;
    if (i13 == 1073741824) {
      i7 = 1;
    } else {
      i7 = 0;
    }
    int i2 = -2147483648;
    int i1 = 0;
    View localView;
    int i6;
    ί.if localif;
    int i8;
    int i9;
    int i10;
    while (i1 < i11)
    {
      localView = getVirtualChildAt(i1);
      if (localView == null)
      {
        this.ᔽ += ᵥ(i1);
        i6 = i2;
      }
      else if (localView.getVisibility() == 8)
      {
        i1 += ι(localView, i1);
        i6 = i2;
      }
      else
      {
        if (ᵛ(i1)) {
          this.ᔽ += this.ᖩ;
        }
        localif = (ί.if)localView.getLayoutParams();
        f1 += localif.weight;
        if ((i13 == 1073741824) && (localif.width == 0) && (localif.weight > 0.0F))
        {
          if (i7 != 0)
          {
            this.ᔽ += localif.leftMargin + localif.rightMargin;
          }
          else
          {
            i5 = this.ᔽ;
            this.ᔽ = Math.max(i5, localif.leftMargin + i5 + localif.rightMargin);
          }
          if (bool1)
          {
            i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
            localView.measure(i5, i5);
            i5 = i3;
            i6 = i2;
          }
          else
          {
            i5 = 1;
            i6 = i2;
          }
        }
        else
        {
          i6 = -2147483648;
          i5 = i6;
          if (localif.width == 0)
          {
            i5 = i6;
            if (localif.weight > 0.0F)
            {
              i5 = 0;
              localif.width = -2;
            }
          }
          if (f1 == 0.0F) {
            i6 = this.ᔽ;
          } else {
            i6 = 0;
          }
          ˊ(localView, i1, paramInt1, i6, paramInt2, 0);
          if (i5 != -2147483648) {
            localif.width = i5;
          }
          i8 = localView.getMeasuredWidth();
          if (i7 != 0)
          {
            this.ᔽ += localif.leftMargin + i8 + localif.rightMargin + יּ(localView);
          }
          else
          {
            i5 = this.ᔽ;
            this.ᔽ = Math.max(i5, i5 + i8 + localif.leftMargin + localif.rightMargin + יּ(localView));
          }
          i5 = i3;
          i6 = i2;
          if (bool2)
          {
            i6 = Math.max(i8, i2);
            i5 = i3;
          }
        }
        i8 = 0;
        i2 = m;
        i3 = i8;
        if (i12 != 1073741824)
        {
          i2 = m;
          i3 = i8;
          if (localif.height == -1)
          {
            i2 = 1;
            i3 = 1;
          }
        }
        m = localif.topMargin + localif.bottomMargin;
        i8 = localView.getMeasuredHeight() + m;
        i9 = ᓯ.combineMeasuredStates(k, ﺑ.ˍ(localView));
        if (bool1)
        {
          i10 = localView.getBaseline();
          if (i10 != -1)
          {
            if (localif.gravity < 0) {
              k = this.ᒰ;
            } else {
              k = localif.gravity;
            }
            k = ((k & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
            localObject[k] = Math.max(localObject[k], i10);
            arrayOfInt[k] = Math.max(arrayOfInt[k], i8 - i10);
          }
        }
        i4 = Math.max(i4, i8);
        if ((j != 0) && (localif.height == -1)) {
          j = 1;
        } else {
          j = 0;
        }
        if (localif.weight > 0.0F)
        {
          if (i3 == 0) {
            m = i8;
          }
          n = Math.max(n, m);
        }
        else
        {
          if (i3 == 0) {
            m = i8;
          }
          i = Math.max(i, m);
        }
        i1 += ι(localView, i1);
        i3 = i5;
        m = i2;
        k = i9;
      }
      i1 += 1;
      i2 = i6;
    }
    if ((this.ᔽ > 0) && (ᵛ(i11))) {
      this.ᔽ += this.ᖩ;
    }
    if ((localObject[1] == -1) && (localObject[0] == -1) && (localObject[2] == -1))
    {
      i1 = i4;
      if (localObject[3] == -1) {}
    }
    else
    {
      i1 = Math.max(i4, Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))) + Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))));
    }
    if ((bool2) && ((i13 == -2147483648) || (i13 == 0)))
    {
      this.ᔽ = 0;
      i4 = 0;
      while (i4 < i11)
      {
        localView = getVirtualChildAt(i4);
        if (localView == null)
        {
          this.ᔽ += ᵥ(i4);
        }
        else if (localView.getVisibility() == 8)
        {
          i4 += ι(localView, i4);
        }
        else
        {
          localif = (ί.if)localView.getLayoutParams();
          if (i7 != 0)
          {
            this.ᔽ += localif.leftMargin + i2 + localif.rightMargin + יּ(localView);
          }
          else
          {
            i5 = this.ᔽ;
            this.ᔽ = Math.max(i5, i5 + i2 + localif.leftMargin + localif.rightMargin + יּ(localView));
          }
        }
        i4 += 1;
      }
    }
    this.ᔽ += getPaddingLeft() + getPaddingRight();
    int i14 = ﺑ.resolveSizeAndState(Math.max(this.ᔽ, getSuggestedMinimumWidth()), paramInt1, 0);
    int i5 = (i14 & 0xFFFFFF) - this.ᔽ;
    if ((i3 != 0) || ((i5 != 0) && (f1 > 0.0F)))
    {
      if (this.ᕂ > 0.0F) {
        f1 = this.ᕂ;
      }
      localObject[3] = -1;
      localObject[2] = -1;
      localObject[1] = -1;
      localObject[0] = -1;
      arrayOfInt[3] = -1;
      arrayOfInt[2] = -1;
      arrayOfInt[1] = -1;
      arrayOfInt[0] = -1;
      i2 = -1;
      this.ᔽ = 0;
      i4 = 0;
      i3 = i5;
      while (i4 < i11)
      {
        localView = getVirtualChildAt(i4);
        i5 = i2;
        i6 = k;
        i8 = i;
        i9 = j;
        i10 = i3;
        float f3 = f1;
        if (localView != null) {
          if (localView.getVisibility() == 8)
          {
            i5 = i2;
            i6 = k;
            i8 = i;
            i9 = j;
            i10 = i3;
            f3 = f1;
          }
          else
          {
            localif = (ί.if)localView.getLayoutParams();
            f3 = localif.weight;
            i1 = k;
            n = i3;
            float f2 = f1;
            if (f3 > 0.0F)
            {
              n = (int)(i3 * f3 / f1);
              f2 = f1 - f3;
              i1 = i3 - n;
              i5 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + localif.topMargin + localif.bottomMargin, localif.height);
              if ((localif.width != 0) || (i13 != 1073741824))
              {
                i3 = localView.getMeasuredWidth() + n;
                n = i3;
                if (i3 < 0) {
                  n = 0;
                }
                localView.measure(View.MeasureSpec.makeMeasureSpec(n, 1073741824), i5);
              }
              else
              {
                if (n <= 0) {
                  n = 0;
                }
                localView.measure(View.MeasureSpec.makeMeasureSpec(n, 1073741824), i5);
              }
              k = ᓯ.combineMeasuredStates(k, ﺑ.ˍ(localView) & 0xFF000000);
              n = i1;
              i1 = k;
            }
            if (i7 != 0)
            {
              this.ᔽ += localView.getMeasuredWidth() + localif.leftMargin + localif.rightMargin + יּ(localView);
            }
            else
            {
              k = this.ᔽ;
              this.ᔽ = Math.max(k, localView.getMeasuredWidth() + k + localif.leftMargin + localif.rightMargin + יּ(localView));
            }
            if ((i12 != 1073741824) && (localif.height == -1)) {
              k = 1;
            } else {
              k = 0;
            }
            i5 = localif.topMargin + localif.bottomMargin;
            i3 = localView.getMeasuredHeight() + i5;
            i2 = Math.max(i2, i3);
            if (k != 0) {
              k = i5;
            } else {
              k = i3;
            }
            k = Math.max(i, k);
            if ((j != 0) && (localif.height == -1)) {
              i = 1;
            } else {
              i = 0;
            }
            i5 = i2;
            i6 = i1;
            i8 = k;
            i9 = i;
            i10 = n;
            f3 = f2;
            if (bool1)
            {
              int i15 = localView.getBaseline();
              i5 = i2;
              i6 = i1;
              i8 = k;
              i9 = i;
              i10 = n;
              f3 = f2;
              if (i15 != -1)
              {
                if (localif.gravity < 0) {
                  j = this.ᒰ;
                } else {
                  j = localif.gravity;
                }
                j = ((j & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
                localObject[j] = Math.max(localObject[j], i15);
                arrayOfInt[j] = Math.max(arrayOfInt[j], i3 - i15);
                f3 = f2;
                i10 = n;
                i9 = i;
                i8 = k;
                i6 = i1;
                i5 = i2;
              }
            }
          }
        }
        i4 += 1;
        i2 = i5;
        k = i6;
        i = i8;
        j = i9;
        i3 = i10;
        f1 = f3;
      }
      this.ᔽ += getPaddingLeft() + getPaddingRight();
      if ((localObject[1] == -1) && (localObject[0] == -1) && (localObject[2] == -1))
      {
        n = i2;
        if (localObject[3] == -1) {}
      }
      else
      {
        n = Math.max(i2, Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))) + Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))));
      }
      i3 = k;
      i4 = j;
    }
    else
    {
      i6 = Math.max(i, n);
      n = i1;
      i3 = k;
      i = i6;
      i4 = j;
      if (bool2)
      {
        n = i1;
        i3 = k;
        i = i6;
        i4 = j;
        if (i13 != 1073741824)
        {
          i5 = 0;
          for (;;)
          {
            n = i1;
            i3 = k;
            i = i6;
            i4 = j;
            if (i5 >= i11) {
              break;
            }
            localObject = getVirtualChildAt(i5);
            if ((localObject != null) && (((View)localObject).getVisibility() != 8) && (((ί.if)((View)localObject).getLayoutParams()).weight > 0.0F)) {
              ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject).getMeasuredHeight(), 1073741824));
            }
            i5 += 1;
          }
        }
      }
    }
    j = n;
    if (i4 == 0)
    {
      j = n;
      if (i12 != 1073741824) {
        j = i;
      }
    }
    setMeasuredDimension(0xFF000000 & i3 | i14, ﺑ.resolveSizeAndState(Math.max(j + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i3 << 16));
    if (m != 0) {
      ｰ(i11, paramInt1);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á½·
 * JD-Core Version:    0.7.0.1
 */