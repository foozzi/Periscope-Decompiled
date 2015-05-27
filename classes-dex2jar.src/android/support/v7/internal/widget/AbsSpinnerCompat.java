package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;
import o.ḯ;
import o.ﹹ;
import o.ﹹ.if;
import o.ﺑ;

public abstract class AbsSpinnerCompat
  extends ﹹ<SpinnerAdapter>
{
  SpinnerAdapter ｉ;
  int ｔ;
  int ｖ;
  int ｬ = 0;
  int ｴ = 0;
  int ｺ = 0;
  int ﾋ = 0;
  private DataSetObserver ﾌ;
  final Rect ﾐ = new Rect();
  final if ﾘ = new if();
  
  AbsSpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    د();
  }
  
  private void د()
  {
    setFocusable(true);
    setWillNotDraw(false);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(-1, -2);
  }
  
  public SpinnerAdapter getAdapter()
  {
    return this.ｉ;
  }
  
  public View getSelectedView()
  {
    if ((this.ʎ > 0) && (this.Ț >= 0)) {
      return getChildAt(this.Ț - this.ｚ);
    }
    return null;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i = getPaddingLeft();
    int m = getPaddingTop();
    int k = getPaddingRight();
    int j = getPaddingBottom();
    Object localObject = this.ﾐ;
    if (i <= this.ｬ) {
      i = this.ｬ;
    }
    ((Rect)localObject).left = i;
    localObject = this.ﾐ;
    if (m > this.ｴ) {
      i = m;
    } else {
      i = this.ｴ;
    }
    ((Rect)localObject).top = i;
    localObject = this.ﾐ;
    if (k > this.ｺ) {
      i = k;
    } else {
      i = this.ｺ;
    }
    ((Rect)localObject).right = i;
    localObject = this.ﾐ;
    if (j > this.ﾋ) {
      i = j;
    } else {
      i = this.ﾋ;
    }
    ((Rect)localObject).bottom = i;
    if (this.ƨ) {
      handleDataChanged();
    }
    m = 0;
    int n = 0;
    int i1 = 1;
    int i3 = getSelectedItemPosition();
    j = m;
    i = n;
    k = i1;
    if (i3 >= 0)
    {
      j = m;
      i = n;
      k = i1;
      if (this.ｉ != null)
      {
        j = m;
        i = n;
        k = i1;
        if (i3 < this.ｉ.getCount())
        {
          View localView = this.ﾘ.ᔇ(i3);
          localObject = localView;
          if (localView == null) {
            localObject = this.ｉ.getView(i3, null, this);
          }
          j = m;
          i = n;
          k = i1;
          if (localObject != null)
          {
            this.ﾘ.ˊ(i3, (View)localObject);
            if (((View)localObject).getLayoutParams() == null)
            {
              this.к = true;
              ((View)localObject).setLayoutParams(generateDefaultLayoutParams());
              this.к = false;
            }
            measureChild((View)localObject, paramInt1, paramInt2);
            j = ˡ((View)localObject) + this.ﾐ.top + this.ﾐ.bottom;
            i = ˮ((View)localObject) + this.ﾐ.left + this.ﾐ.right;
            k = 0;
          }
        }
      }
    }
    m = j;
    j = i;
    if (k != 0)
    {
      k = this.ﾐ.top + this.ﾐ.bottom;
      m = k;
      j = i;
      if (i2 == 0)
      {
        j = this.ﾐ.left + this.ﾐ.right;
        m = k;
      }
    }
    i = Math.max(m, getSuggestedMinimumHeight());
    j = Math.max(j, getSuggestedMinimumWidth());
    i = ﺑ.resolveSizeAndState(i, paramInt2, 0);
    setMeasuredDimension(ﺑ.resolveSizeAndState(j, paramInt1, 0), i);
    this.ｔ = paramInt2;
    this.ｖ = paramInt1;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.Ÿ >= 0L)
    {
      this.ƨ = true;
      this.ﾗ = true;
      this.ｱ = paramParcelable.Ÿ;
      this.ｮ = paramParcelable.position;
      this.ﾜ = 0;
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.Ÿ = getSelectedItemId();
    if (localSavedState.Ÿ >= 0L)
    {
      localSavedState.position = getSelectedItemPosition();
      return localSavedState;
    }
    localSavedState.position = -1;
    return localSavedState;
  }
  
  public void requestLayout()
  {
    if (!this.к) {
      super.requestLayout();
    }
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (this.ｉ != null)
    {
      this.ｉ.unregisterDataSetObserver(this.ﾌ);
      ہ();
    }
    this.ｉ = paramSpinnerAdapter;
    this.ʭ = -1;
    this.λ = -9223372036854775808L;
    if (this.ｉ != null)
    {
      this.ʝ = this.ʎ;
      this.ʎ = this.ｉ.getCount();
      ᓑ();
      this.ﾌ = new ﹹ.if(this);
      this.ｉ.registerDataSetObserver(this.ﾌ);
      int i;
      if (this.ʎ > 0) {
        i = 0;
      } else {
        i = -1;
      }
      ᵗ(i);
      ﾟ(i);
      if (this.ʎ == 0) {
        ᴬ();
      }
    }
    else
    {
      ᓑ();
      ہ();
      ᴬ();
    }
    requestLayout();
  }
  
  public void setSelection(int paramInt)
  {
    ﾟ(paramInt);
    requestLayout();
    invalidate();
  }
  
  public void setSelection(int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.ｚ <= paramInt) && (paramInt <= this.ｚ + getChildCount() - 1)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    ʻ(paramInt, paramBoolean);
  }
  
  void ʻ(int paramInt, boolean paramBoolean)
  {
    if (paramInt != this.ʭ)
    {
      this.к = true;
      int i = this.Ț;
      ﾟ(paramInt);
      ʼ(paramInt - i, paramBoolean);
      this.к = false;
    }
  }
  
  abstract void ʼ(int paramInt, boolean paramBoolean);
  
  int ˡ(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
  
  int ˮ(View paramView)
  {
    return paramView.getMeasuredWidth();
  }
  
  void ہ()
  {
    this.ƨ = false;
    this.ﾗ = false;
    removeAllViewsInLayout();
    this.ʭ = -1;
    this.λ = -9223372036854775808L;
    ᵗ(-1);
    ﾟ(-1);
    invalidate();
  }
  
  void ܝ()
  {
    int j = getChildCount();
    if localif = this.ﾘ;
    int k = this.ｚ;
    int i = 0;
    while (i < j)
    {
      localif.ˊ(k + i, getChildAt(i));
      i += 1;
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ḯ();
    int position;
    long Ÿ;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      this.Ÿ = paramParcel.readLong();
      this.position = paramParcel.readInt();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.Ÿ + " position=" + this.position + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeLong(this.Ÿ);
      paramParcel.writeInt(this.position);
    }
  }
  
  class if
  {
    private final SparseArray<View> ﾚ = new SparseArray();
    
    if() {}
    
    void clear()
    {
      SparseArray localSparseArray = this.ﾚ;
      int j = localSparseArray.size();
      int i = 0;
      while (i < j)
      {
        View localView = (View)localSparseArray.valueAt(i);
        if (localView != null) {
          AbsSpinnerCompat.ˊ(AbsSpinnerCompat.this, localView, true);
        }
        i += 1;
      }
      localSparseArray.clear();
    }
    
    public void ˊ(int paramInt, View paramView)
    {
      this.ﾚ.put(paramInt, paramView);
    }
    
    View ᔇ(int paramInt)
    {
      View localView = (View)this.ﾚ.get(paramInt);
      if (localView != null) {
        this.ﾚ.delete(paramInt);
      }
      return localView;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AbsSpinnerCompat
 * JD-Core Version:    0.7.0.1
 */