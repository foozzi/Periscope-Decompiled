package o;

import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public class ᵇ
{
  final ᵇ.ˊ Ԇ;
  final ᵇ.if Ն;
  final List<View> յ;
  
  public ᵇ(ᵇ.ˊ paramˊ)
  {
    this.Ԇ = paramˊ;
    this.Ն = new ᵇ.if();
    this.յ = new ArrayList();
  }
  
  private int ᖮ(int paramInt)
  {
    if (paramInt < 0) {
      return -1;
    }
    int j = this.Ԇ.getChildCount();
    int i = paramInt;
    while (i < j)
    {
      int k = paramInt - (i - this.Ն.ᵙ(i));
      if (k == 0)
      {
        while (this.Ն.get(i)) {
          i += 1;
        }
        return i;
      }
      i += k;
    }
    return -1;
  }
  
  public void detachViewFromParent(int paramInt)
  {
    paramInt = ᖮ(paramInt);
    this.Ԇ.detachViewFromParent(paramInt);
    this.Ն.ᵓ(paramInt);
  }
  
  public View getChildAt(int paramInt)
  {
    paramInt = ᖮ(paramInt);
    return this.Ԇ.getChildAt(paramInt);
  }
  
  public int getChildCount()
  {
    return this.Ԇ.getChildCount() - this.յ.size();
  }
  
  public int indexOfChild(View paramView)
  {
    int i = this.Ԇ.indexOfChild(paramView);
    if (i == -1) {
      return -1;
    }
    if (this.Ն.get(i)) {
      return -1;
    }
    return i - this.Ն.ᵙ(i);
  }
  
  public void removeView(View paramView)
  {
    int i = this.Ԇ.indexOfChild(paramView);
    if (i < 0) {
      return;
    }
    this.Ԇ.removeViewAt(i);
    if (this.Ն.ᵓ(i)) {
      this.յ.remove(paramView);
    }
  }
  
  public void removeViewAt(int paramInt)
  {
    paramInt = ᖮ(paramInt);
    View localView = this.Ԇ.getChildAt(paramInt);
    if (localView == null) {
      return;
    }
    this.Ԇ.removeViewAt(paramInt);
    if (this.Ն.ᵓ(paramInt)) {
      this.յ.remove(localView);
    }
  }
  
  public String toString()
  {
    return this.Ն.toString() + ", hidden list:" + this.յ.size();
  }
  
  public void ˊ(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = this.Ԇ.getChildCount();
    } else {
      paramInt = ᖮ(paramInt);
    }
    this.Ԇ.attachViewToParent(paramView, paramInt, paramLayoutParams);
    this.Ն.ʿ(paramInt, paramBoolean);
    if (paramBoolean) {
      this.յ.add(paramView);
    }
  }
  
  public void ˊ(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {
      paramInt = this.Ԇ.getChildCount();
    } else {
      paramInt = ᖮ(paramInt);
    }
    this.Ԇ.addView(paramView, paramInt);
    this.Ն.ʿ(paramInt, paramBoolean);
    if (paramBoolean) {
      this.յ.add(paramView);
    }
  }
  
  public void ˏ(View paramView, boolean paramBoolean)
  {
    ˊ(paramView, -1, paramBoolean);
  }
  
  public boolean ᑊ(View paramView)
  {
    return this.յ.contains(paramView);
  }
  
  public void ᕀ(View paramView)
  {
    int i = this.Ԇ.indexOfChild(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    this.Ն.set(i);
    this.յ.add(paramView);
  }
  
  public View ᵌ(int paramInt)
  {
    return this.Ԇ.getChildAt(paramInt);
  }
  
  public boolean ᵕ(View paramView)
  {
    int i = this.Ԇ.indexOfChild(paramView);
    if (i == -1)
    {
      this.յ.remove(paramView);
      return true;
    }
    if (this.Ն.get(i))
    {
      this.Ն.ᵓ(i);
      this.Ԇ.removeViewAt(i);
      this.յ.remove(paramView);
      return true;
    }
    return false;
  }
  
  public View ᵢ(int paramInt1, int paramInt2)
  {
    int j = this.յ.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)this.յ.get(i);
      RecyclerView.ˑ localˑ = this.Ԇ.ᵣ(localView);
      if ((localˑ.getLayoutPosition() == paramInt1) && (!localˑ.Ḯ()) && ((paramInt2 == -1) || (localˑ.getItemViewType() == paramInt2))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public void ﺫ()
  {
    this.Ԇ.removeAllViews();
    this.Ն.reset();
    this.յ.clear();
  }
  
  public int ﻴ()
  {
    return this.Ԇ.getChildCount();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */