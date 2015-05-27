package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import o.ז;
import o.ᵇ;
import o.ﯦ;
import o.ﯩ;
import o.ﯩ.ʼ;
import o.ﯩ.ʽ;
import o.ﺑ;

public abstract class RecyclerView$ʻ
{
  ᵇ K;
  RecyclerView aL;
  RecyclerView.ˈ aM;
  private boolean aN = false;
  
  private void ˊ(RecyclerView.ʾ paramʾ, int paramInt, View paramView)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if (localˑ.ᴐ()) {
      return;
    }
    if ((localˑ.Ḯ()) && (!localˑ.isRemoved()) && (!localˑ.Ἱ()) && (!RecyclerView.ʻ(this.aL).hasStableIds()))
    {
      removeViewAt(paramInt);
      paramʾ.ᵔ(localˑ);
      return;
    }
    ι(paramInt);
    paramʾ.ﯨ(paramView);
  }
  
  private void ˊ(RecyclerView.ˈ paramˈ)
  {
    if (this.aM == paramˈ) {
      this.aM = null;
    }
  }
  
  public static int ˋ(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = Math.max(0, paramInt1 - paramInt2);
    paramInt1 = 0;
    paramInt2 = 0;
    if (paramBoolean)
    {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = 1073741824;
      }
      else
      {
        paramInt1 = 0;
        paramInt2 = 0;
      }
    }
    else if (paramInt3 >= 0)
    {
      paramInt1 = paramInt3;
      paramInt2 = 1073741824;
    }
    else if (paramInt3 == -1)
    {
      paramInt1 = i;
      paramInt2 = 1073741824;
    }
    else if (paramInt3 == -2)
    {
      paramInt1 = i;
      paramInt2 = -2147483648;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
  }
  
  private void ˋ(View paramView, int paramInt, boolean paramBoolean)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if ((paramBoolean) || (localˑ.isRemoved())) {
      RecyclerView.ˎ(this.aL, paramView);
    } else {
      RecyclerView.ˏ(this.aL, paramView);
    }
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    if ((localˑ.ᵈ()) || (localˑ.ᴛ()))
    {
      if (localˑ.ᴛ()) {
        localˑ.ᴺ();
      } else {
        localˑ.ᵑ();
      }
      this.K.ˊ(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    else if (paramView.getParent() == this.aL)
    {
      int j = this.K.indexOfChild(paramView);
      int i = paramInt;
      if (paramInt == -1) {
        i = this.K.getChildCount();
      }
      if (j == -1) {
        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.aL.indexOfChild(paramView));
      }
      if (j != i) {
        RecyclerView.ˏ(this.aL).ᐡ(j, i);
      }
    }
    else
    {
      this.K.ˊ(paramView, paramInt, false);
      localʼ.aQ = true;
      if ((this.aM != null) && (this.aM.isRunning())) {
        this.aM.ᵀ(paramView);
      }
    }
    if (localʼ.aR)
    {
      localˑ.bB.invalidate();
      localʼ.aR = false;
    }
  }
  
  private void ˏ(int paramInt, View paramView)
  {
    this.K.detachViewFromParent(paramInt);
  }
  
  public void addView(View paramView)
  {
    addView(paramView, -1);
  }
  
  public void addView(View paramView, int paramInt)
  {
    ˋ(paramView, paramInt, false);
  }
  
  public View getChildAt(int paramInt)
  {
    if (this.K != null) {
      return this.K.getChildAt(paramInt);
    }
    return null;
  }
  
  public int getChildCount()
  {
    if (this.K != null) {
      return this.K.getChildCount();
    }
    return 0;
  }
  
  public View getFocusedChild()
  {
    if (this.aL == null) {
      return null;
    }
    View localView = this.aL.getFocusedChild();
    if ((localView == null) || (this.K.ᑊ(localView))) {
      return null;
    }
    return localView;
  }
  
  public int getHeight()
  {
    if (this.aL != null) {
      return this.aL.getHeight();
    }
    return 0;
  }
  
  public int getLayoutDirection()
  {
    return ﺑ.ˌ(this.aL);
  }
  
  public int getPaddingBottom()
  {
    if (this.aL != null) {
      return this.aL.getPaddingBottom();
    }
    return 0;
  }
  
  public int getPaddingLeft()
  {
    if (this.aL != null) {
      return this.aL.getPaddingLeft();
    }
    return 0;
  }
  
  public int getPaddingRight()
  {
    if (this.aL != null) {
      return this.aL.getPaddingRight();
    }
    return 0;
  }
  
  public int getPaddingTop()
  {
    if (this.aL != null) {
      return this.aL.getPaddingTop();
    }
    return 0;
  }
  
  public int getWidth()
  {
    if (this.aL != null) {
      return this.aL.getWidth();
    }
    return 0;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    ˊ(this.aL.H, this.aL.ar, paramAccessibilityEvent);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean performAccessibilityAction(int paramInt, Bundle paramBundle)
  {
    return ˊ(this.aL.H, this.aL.ar, paramInt, paramBundle);
  }
  
  public void removeView(View paramView)
  {
    this.K.removeView(paramView);
  }
  
  public void removeViewAt(int paramInt)
  {
    if (getChildAt(paramInt) != null) {
      this.K.removeViewAt(paramInt);
    }
  }
  
  public void requestLayout()
  {
    if (this.aL != null) {
      this.aL.requestLayout();
    }
  }
  
  public abstract RecyclerView.ʼ ł();
  
  public boolean ŗ()
  {
    return false;
  }
  
  public boolean ſ()
  {
    return false;
  }
  
  public void ʹ(RecyclerView paramRecyclerView) {}
  
  public int ʻ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public void ʻ(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public int ʼ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public void ʿ(View paramView, int paramInt)
  {
    ˋ(paramView, paramInt, true);
  }
  
  public void ˀ(int paramInt)
  {
    if (this.aL != null) {
      this.aL.ˀ(paramInt);
    }
  }
  
  public void ˁ(int paramInt)
  {
    if (this.aL != null) {
      this.aL.ˁ(paramInt);
    }
  }
  
  public void ˈ(View paramView, int paramInt)
  {
    ˊ(paramView, paramInt, (RecyclerView.ʼ)paramView.getLayoutParams());
  }
  
  public View ˉ(View paramView, int paramInt)
  {
    return null;
  }
  
  public int ˊ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public RecyclerView.ʼ ˊ(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new RecyclerView.ʼ(paramContext, paramAttributeSet);
  }
  
  public View ˊ(View paramView, int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    return null;
  }
  
  public void ˊ(int paramInt, RecyclerView.ʾ paramʾ)
  {
    View localView = getChildAt(paramInt);
    removeViewAt(paramInt);
    paramʾ.ᵛ(localView);
  }
  
  public void ˊ(RecyclerView.if paramif1, RecyclerView.if paramif2) {}
  
  public void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  public void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, View paramView, ﯩ paramﯩ)
  {
    int i;
    if (ſ()) {
      i = ˣ(paramView);
    } else {
      i = 0;
    }
    int j;
    if (ŗ()) {
      j = ˣ(paramView);
    } else {
      j = 0;
    }
    paramﯩ.ʽ(ﯩ.ʽ.ˋ(i, 1, j, 1, false, false));
  }
  
  public void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, AccessibilityEvent paramAccessibilityEvent)
  {
    paramʾ = ﯦ.ˊ(paramAccessibilityEvent);
    if ((this.aL == null) || (paramʾ == null)) {
      return;
    }
    boolean bool;
    if ((ﺑ.ˎ(this.aL, 1)) || (ﺑ.ˎ(this.aL, -1)) || (ﺑ.ˋ(this.aL, -1)) || (ﺑ.ˋ(this.aL, 1))) {
      bool = true;
    } else {
      bool = false;
    }
    paramʾ.setScrollable(bool);
    if (RecyclerView.ʻ(this.aL) != null) {
      paramʾ.setItemCount(RecyclerView.ʻ(this.aL).getItemCount());
    }
  }
  
  public void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, ﯩ paramﯩ)
  {
    paramﯩ.setClassName(RecyclerView.class.getName());
    if ((ﺑ.ˎ(this.aL, -1)) || (ﺑ.ˋ(this.aL, -1)))
    {
      paramﯩ.addAction(8192);
      paramﯩ.setScrollable(true);
    }
    if ((ﺑ.ˎ(this.aL, 1)) || (ﺑ.ˋ(this.aL, 1)))
    {
      paramﯩ.addAction(4096);
      paramﯩ.setScrollable(true);
    }
    paramﯩ.ʼ(ﯩ.ʼ.ˋ(ˎ(paramʾ, paramˉ), ˏ(paramʾ, paramˉ), ᐝ(paramʾ, paramˉ), ˋ(paramʾ, paramˉ)));
  }
  
  public void ˊ(RecyclerView paramRecyclerView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void ˊ(RecyclerView paramRecyclerView, RecyclerView.ʾ paramʾ)
  {
    ՙ(paramRecyclerView);
  }
  
  public void ˊ(View paramView, int paramInt, RecyclerView.ʼ paramʼ)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if (localˑ.isRemoved()) {
      RecyclerView.ˎ(this.aL, paramView);
    } else {
      RecyclerView.ˏ(this.aL, paramView);
    }
    this.K.ˊ(paramView, paramInt, paramʼ, localˑ.isRemoved());
  }
  
  public void ˊ(View paramView, RecyclerView.ʾ paramʾ)
  {
    removeView(paramView);
    paramʾ.ᵛ(paramView);
  }
  
  public void ˊ(ﯩ paramﯩ)
  {
    ˊ(this.aL.H, this.aL.ar, paramﯩ);
  }
  
  public boolean ˊ(RecyclerView.ʼ paramʼ)
  {
    return paramʼ != null;
  }
  
  public boolean ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, int paramInt, Bundle paramBundle)
  {
    if (this.aL == null) {
      return false;
    }
    int k = 0;
    int m = 0;
    int i = 0;
    int j = 0;
    switch (paramInt)
    {
    default: 
      paramInt = m;
      break;
    case 8192: 
      if (ﺑ.ˎ(this.aL, -1)) {
        i = -(getHeight() - getPaddingTop() - getPaddingBottom());
      }
      paramInt = i;
      if (ﺑ.ˋ(this.aL, -1))
      {
        j = -(getWidth() - getPaddingLeft() - getPaddingRight());
        paramInt = i;
      }
      break;
    case 4096: 
      i = k;
      if (ﺑ.ˎ(this.aL, 1)) {
        i = getHeight() - getPaddingTop() - getPaddingBottom();
      }
      paramInt = i;
      if (ﺑ.ˋ(this.aL, 1))
      {
        j = getWidth() - getPaddingLeft() - getPaddingRight();
        paramInt = i;
      }
      break;
    }
    if ((paramInt == 0) && (j == 0)) {
      return false;
    }
    this.aL.scrollBy(j, paramInt);
    return true;
  }
  
  public boolean ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, View paramView, int paramInt, Bundle paramBundle)
  {
    return false;
  }
  
  public boolean ˊ(RecyclerView paramRecyclerView, RecyclerView.ˉ paramˉ, View paramView1, View paramView2)
  {
    return ˊ(paramRecyclerView, paramView1, paramView2);
  }
  
  public boolean ˊ(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i = getPaddingLeft();
    int k = getPaddingTop();
    int j = getWidth();
    int i3 = getPaddingRight();
    int m = getHeight();
    int n = getPaddingBottom();
    int i4 = paramView.getLeft() + paramRect.left;
    int i1 = paramView.getTop() + paramRect.top;
    int i5 = paramRect.width();
    int i2 = paramRect.height();
    i = Math.min(0, i4 - i);
    k = Math.min(0, i1 - k);
    j = Math.max(0, i4 + i5 - (j - i3));
    m = Math.max(0, i1 + i2 - (m - n));
    if (ﺑ.ˌ(paramRecyclerView) == 1)
    {
      if (j != 0) {
        i = j;
      }
    }
    else if (i == 0) {
      i = j;
    }
    if (k != 0) {
      j = k;
    } else {
      j = m;
    }
    if ((i != 0) || (j != 0))
    {
      if (paramBoolean) {
        paramRecyclerView.scrollBy(i, j);
      } else {
        paramRecyclerView.smoothScrollBy(i, j);
      }
      return true;
    }
    return false;
  }
  
  @Deprecated
  public boolean ˊ(RecyclerView paramRecyclerView, View paramView1, View paramView2)
  {
    return (ˠ()) || (RecyclerView.ـ(paramRecyclerView));
  }
  
  public boolean ˊ(RecyclerView paramRecyclerView, ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean ˊ(View paramView, int paramInt, Bundle paramBundle)
  {
    return ˊ(this.aL.H, this.aL.ar, paramView, paramInt, paramBundle);
  }
  
  public int ˋ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public int ˋ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public int ˋ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public void ˋ(RecyclerView.ʾ paramʾ)
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      ˊ(paramʾ, i, getChildAt(i));
      i -= 1;
    }
  }
  
  public void ˋ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, int paramInt1, int paramInt2)
  {
    RecyclerView.ˎ(this.aL, paramInt1, paramInt2);
  }
  
  public void ˋ(View paramView, ﯩ paramﯩ)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if ((localˑ != null) && (!localˑ.isRemoved())) {
      ˊ(this.aL.H, this.aL.ar, paramView, paramﯩ);
    }
  }
  
  public int ˎ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if ((this.aL == null) || (RecyclerView.ʻ(this.aL) == null)) {
      return 1;
    }
    if (ſ()) {
      return RecyclerView.ʻ(this.aL).getItemCount();
    }
    return 1;
  }
  
  public int ˎ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public RecyclerView.ʼ ˎ(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof RecyclerView.ʼ)) {
      return new RecyclerView.ʼ((RecyclerView.ʼ)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new RecyclerView.ʼ((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new RecyclerView.ʼ(paramLayoutParams);
  }
  
  void ˎ(RecyclerView.ʾ paramʾ)
  {
    int j = paramʾ.х();
    int i = 0;
    while (i < j)
    {
      View localView = paramʾ.ᔋ(i);
      RecyclerView.ˑ localˑ = RecyclerView.ᗮ(localView);
      if (!localˑ.ᴐ())
      {
        if (localˑ.Ῐ()) {
          this.aL.removeDetachedView(localView, false);
        }
        paramʾ.ᵥ(localView);
      }
      i += 1;
    }
    paramʾ.ј();
    if (j > 0) {
      this.aL.invalidate();
    }
  }
  
  public void ˎ(String paramString)
  {
    if (this.aL != null) {
      this.aL.ˎ(paramString);
    }
  }
  
  public int ˏ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if ((this.aL == null) || (RecyclerView.ʻ(this.aL) == null)) {
      return 1;
    }
    if (ŗ()) {
      return RecyclerView.ʻ(this.aL).getItemCount();
    }
    return 1;
  }
  
  public int ˏ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public void ˏ(RecyclerView.ʾ paramʾ)
  {
    int i = getChildCount() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.ᗮ(getChildAt(i)).ᴐ()) {
        ˊ(i, paramʾ);
      }
      i -= 1;
    }
  }
  
  public void ˏ(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void ː(View paramView)
  {
    ʿ(paramView, -1);
  }
  
  public boolean ˠ()
  {
    return (this.aM != null) && (this.aM.isRunning());
  }
  
  public int ˣ(View paramView)
  {
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).Ј();
  }
  
  void Ί()
  {
    if (this.aM != null) {
      this.aM.stop();
    }
  }
  
  public void ι(int paramInt)
  {
    ˏ(paramInt, getChildAt(paramInt));
  }
  
  @Deprecated
  public void ՙ(RecyclerView paramRecyclerView) {}
  
  public boolean ד()
  {
    return false;
  }
  
  public int ו(View paramView)
  {
    Rect localRect = ((RecyclerView.ʼ)paramView.getLayoutParams()).aP;
    return paramView.getMeasuredWidth() + localRect.left + localRect.right;
  }
  
  public void י(RecyclerView paramRecyclerView) {}
  
  public int ۦ(View paramView)
  {
    Rect localRect = ((RecyclerView.ʼ)paramView.getLayoutParams()).aP;
    return paramView.getMeasuredHeight() + localRect.top + localRect.bottom;
  }
  
  public void ৲(int paramInt) {}
  
  public int เ(View paramView)
  {
    return paramView.getLeft() - ᵌ(paramView);
  }
  
  public int Ꭵ(View paramView)
  {
    return paramView.getTop() - ᒢ(paramView);
  }
  
  public int ᐝ(RecyclerView.ˉ paramˉ)
  {
    return 0;
  }
  
  public void ᐝ(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  
  public void ᐝ(View paramView, int paramInt1, int paramInt2)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    Rect localRect = this.aL.ᵗ(paramView);
    int i = localRect.left;
    int j = localRect.right;
    int k = localRect.top;
    int m = localRect.bottom;
    paramView.measure(ˋ(getWidth(), getPaddingLeft() + getPaddingRight() + localʼ.leftMargin + localʼ.rightMargin + (paramInt1 + (i + j)), localʼ.width, ŗ()), ˋ(getHeight(), getPaddingTop() + getPaddingBottom() + localʼ.topMargin + localʼ.bottomMargin + (paramInt2 + (k + m)), localʼ.height, ſ()));
  }
  
  public void ᐝ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = ((RecyclerView.ʼ)paramView.getLayoutParams()).aP;
    paramView.layout(localRect.left + paramInt1, localRect.top + paramInt2, paramInt3 - localRect.right, paramInt4 - localRect.bottom);
  }
  
  public boolean ᐝ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    return false;
  }
  
  public void ᐡ(int paramInt1, int paramInt2)
  {
    View localView = getChildAt(paramInt1);
    if (localView == null) {
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
    }
    ι(paramInt1);
    ˈ(localView, paramInt2);
  }
  
  public int ᐤ(View paramView)
  {
    return paramView.getRight() + ᵓ(paramView);
  }
  
  public int ᒡ(View paramView)
  {
    return paramView.getBottom() + ᖮ(paramView);
  }
  
  public int ᒢ(View paramView)
  {
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).aP.top;
  }
  
  public int ᖮ(View paramView)
  {
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).aP.bottom;
  }
  
  public int ᵌ(View paramView)
  {
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).aP.left;
  }
  
  public int ᵓ(View paramView)
  {
    return ((RecyclerView.ʼ)paramView.getLayoutParams()).aP.right;
  }
  
  public View ﯨ(int paramInt)
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      RecyclerView.ˑ localˑ = RecyclerView.ᗮ(localView);
      if ((localˑ != null) && (localˑ.getLayoutPosition() == paramInt) && (!localˑ.ᴐ()) && ((this.aL.ar.ڏ()) || (!localˑ.isRemoved()))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public void ﹴ(int paramInt) {}
  
  void ﾞ(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      this.aL = null;
      this.K = null;
      return;
    }
    this.aL = paramRecyclerView;
    this.K = paramRecyclerView.K;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ê»
 * JD-Core Version:    0.7.0.1
 */