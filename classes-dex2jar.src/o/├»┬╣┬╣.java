package o;

import android.content.Context;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.CapturedViewProperty;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

public abstract class ﹹ<T extends Adapter>
  extends ViewGroup
{
  public boolean mInLayout = false;
  private int ĉ;
  ﹹ.ˎ č;
  public ﹹ.ˊ Ŷ;
  ﹹ.ˋ ż;
  public boolean ƨ;
  @ViewDebug.ExportedProperty(category="list")
  public int ƫ = -1;
  long Ƴ = -9223372036854775808L;
  @ViewDebug.ExportedProperty(category="list")
  public int Ț = -1;
  long ȯ = -9223372036854775808L;
  private View ɢ;
  @ViewDebug.ExportedProperty(category="list")
  public int ʎ;
  public int ʝ;
  public int ʭ = -1;
  public long λ = -9223372036854775808L;
  private boolean ϋ;
  private boolean ϒ;
  private ﹹ<T>.ˏ Ϝ;
  public boolean к = false;
  @ViewDebug.ExportedProperty(category="scrolling")
  public int ｚ = 0;
  int ｫ;
  public int ｮ;
  public long ｱ = -9223372036854775808L;
  long ﾏ;
  public boolean ﾗ = false;
  public int ﾜ;
  
  public ﹹ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void י(boolean paramBoolean)
  {
    if (isInFilterMode()) {
      paramBoolean = false;
    }
    if (paramBoolean)
    {
      if (this.ɢ != null)
      {
        this.ɢ.setVisibility(0);
        setVisibility(8);
      }
      else
      {
        setVisibility(0);
      }
      if (this.ƨ) {
        onLayout(false, getLeft(), getTop(), getRight(), getBottom());
      }
    }
    else
    {
      if (this.ɢ != null) {
        this.ɢ.setVisibility(8);
      }
      setVisibility(0);
    }
  }
  
  private void ᴖ()
  {
    if (this.č == null) {
      return;
    }
    int i = getSelectedItemPosition();
    if (i >= 0)
    {
      View localView = getSelectedView();
      this.č.ˋ(this, localView, i, getAdapter().getItemId(i));
      return;
    }
    this.č.ˎ(this);
  }
  
  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.ʎ > 0);
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = getSelectedView();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public abstract T getAdapter();
  
  public long getItemIdAtPosition(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0)) {
      return -9223372036854775808L;
    }
    return localAdapter.getItemId(paramInt);
  }
  
  @ViewDebug.CapturedViewProperty
  public long getSelectedItemId()
  {
    return this.Ƴ;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getSelectedItemPosition()
  {
    return this.ƫ;
  }
  
  public abstract View getSelectedView();
  
  public void handleDataChanged()
  {
    int m = this.ʎ;
    int j = 0;
    int k = 0;
    if (m > 0)
    {
      int i = k;
      if (this.ﾗ)
      {
        this.ﾗ = false;
        j = ᴱ();
        i = k;
        if (j >= 0)
        {
          i = k;
          if (ʽ(j, true) == j)
          {
            ﾟ(j);
            i = 1;
          }
        }
      }
      j = i;
      if (i == 0)
      {
        k = getSelectedItemPosition();
        j = k;
        if (k >= m) {
          j = m - 1;
        }
        k = j;
        if (j < 0) {
          k = 0;
        }
        j = ʽ(k, true);
        m = j;
        if (j < 0) {
          m = ʽ(k, false);
        }
        j = i;
        if (m >= 0)
        {
          ﾟ(m);
          ᴬ();
          j = 1;
        }
      }
    }
    if (j == 0)
    {
      this.Ț = -1;
      this.ȯ = -9223372036854775808L;
      this.ƫ = -1;
      this.Ƴ = -9223372036854775808L;
      this.ﾗ = false;
      ᴬ();
    }
  }
  
  boolean isInFilterMode()
  {
    return false;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.Ϝ);
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ĉ = getHeight();
  }
  
  public boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    if (this.Ŷ != null)
    {
      playSoundEffect(0);
      if (paramView != null) {
        paramView.sendAccessibilityEvent(1);
      }
      this.Ŷ.ˊ(this, paramView, paramInt, paramLong);
      return true;
    }
    return false;
  }
  
  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }
  
  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }
  
  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }
  
  public abstract void setAdapter(T paramT);
  
  public void setEmptyView(View paramView)
  {
    this.ɢ = paramView;
    paramView = getAdapter();
    boolean bool;
    if ((paramView == null) || (paramView.isEmpty())) {
      bool = true;
    } else {
      bool = false;
    }
    י(bool);
  }
  
  public void setFocusable(boolean paramBoolean)
  {
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0)) {
      i = 1;
    } else {
      i = 0;
    }
    this.ϋ = paramBoolean;
    if (!paramBoolean) {
      this.ϒ = false;
    }
    if ((paramBoolean) && ((i == 0) || (isInFilterMode()))) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    super.setFocusable(paramBoolean);
  }
  
  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0)) {
      i = 1;
    } else {
      i = 0;
    }
    this.ϒ = paramBoolean;
    if (paramBoolean) {
      this.ϋ = true;
    }
    if ((paramBoolean) && ((i == 0) || (isInFilterMode()))) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    super.setFocusableInTouchMode(paramBoolean);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
  
  public void setOnItemClickListener(ﹹ.ˊ paramˊ)
  {
    this.Ŷ = paramˊ;
  }
  
  public void setOnItemLongClickListener(ﹹ.ˋ paramˋ)
  {
    if (!isLongClickable()) {
      setLongClickable(true);
    }
    this.ż = paramˋ;
  }
  
  public void setOnItemSelectedListener(ﹹ.ˎ paramˎ)
  {
    this.č = paramˎ;
  }
  
  public abstract void setSelection(int paramInt);
  
  int ʽ(int paramInt, boolean paramBoolean)
  {
    return paramInt;
  }
  
  public void ᓑ()
  {
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0)) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i == 0) || (isInFilterMode())) {
      i = 1;
    } else {
      i = 0;
    }
    boolean bool;
    if ((i != 0) && (this.ϒ)) {
      bool = true;
    } else {
      bool = false;
    }
    super.setFocusableInTouchMode(bool);
    if ((i != 0) && (this.ϋ)) {
      bool = true;
    } else {
      bool = false;
    }
    super.setFocusable(bool);
    if (this.ɢ != null)
    {
      if ((localAdapter == null) || (localAdapter.isEmpty())) {
        bool = true;
      } else {
        bool = false;
      }
      י(bool);
    }
  }
  
  void ᔆ()
  {
    if (this.č != null) {
      if ((this.mInLayout) || (this.к))
      {
        if (this.Ϝ == null) {
          this.Ϝ = new ﹹ.ˏ(this, null);
        }
        post(this.Ϝ);
      }
      else
      {
        ᴖ();
      }
    }
    if ((this.Ț != -1) && (isShown()) && (!isInTouchMode())) {
      sendAccessibilityEvent(4);
    }
  }
  
  public void ᴬ()
  {
    if ((this.Ț != this.ʭ) || (this.ȯ != this.λ))
    {
      ᔆ();
      this.ʭ = this.Ț;
      this.λ = this.ȯ;
    }
  }
  
  int ᴱ()
  {
    int i2 = this.ʎ;
    if (i2 == 0) {
      return -1;
    }
    long l1 = this.ｱ;
    int i = this.ｮ;
    if (l1 == -9223372036854775808L) {
      return -1;
    }
    i = Math.min(i2 - 1, Math.max(0, i));
    long l2 = SystemClock.uptimeMillis();
    int k = i;
    int m = i;
    int j = 0;
    Adapter localAdapter = getAdapter();
    if (localAdapter == null) {
      return -1;
    }
    while (SystemClock.uptimeMillis() <= l2 + 100L)
    {
      if (localAdapter.getItemId(i) == l1) {
        return i;
      }
      int n;
      if (m == i2 - 1) {
        n = 1;
      } else {
        n = 0;
      }
      int i1;
      if (k == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if ((n != 0) && (i1 != 0)) {
        break;
      }
      if ((i1 != 0) || ((j != 0) && (n == 0)))
      {
        m += 1;
        i = m;
        j = 0;
      }
      else if ((n != 0) || ((j == 0) && (i1 == 0)))
      {
        k -= 1;
        i = k;
        j = 1;
      }
    }
    return -1;
  }
  
  void ᴲ()
  {
    if (getChildCount() > 0)
    {
      this.ﾗ = true;
      this.ﾏ = this.ĉ;
      if (this.Ț >= 0)
      {
        localView = getChildAt(this.Ț - this.ｚ);
        this.ｱ = this.Ƴ;
        this.ｮ = this.ƫ;
        if (localView != null) {
          this.ｫ = localView.getTop();
        }
        this.ﾜ = 0;
        return;
      }
      View localView = getChildAt(0);
      Adapter localAdapter = getAdapter();
      if ((this.ｚ >= 0) && (this.ｚ < localAdapter.getCount())) {
        this.ｱ = localAdapter.getItemId(this.ｚ);
      } else {
        this.ｱ = -1L;
      }
      this.ｮ = this.ｚ;
      if (localView != null) {
        this.ｫ = localView.getTop();
      }
      this.ﾜ = 1;
    }
  }
  
  public void ᵗ(int paramInt)
  {
    this.Ț = paramInt;
    this.ȯ = getItemIdAtPosition(paramInt);
  }
  
  public void ﾟ(int paramInt)
  {
    this.ƫ = paramInt;
    this.Ƴ = getItemIdAtPosition(paramInt);
    if ((this.ﾗ) && (this.ﾜ == 0) && (paramInt >= 0))
    {
      this.ｮ = paramInt;
      this.ｱ = this.Ƴ;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¹¹
 * JD-Core Version:    0.7.0.1
 */