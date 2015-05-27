package o;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class ﺋ
  implements ᵇ.ˊ
{
  public ﺋ(RecyclerView paramRecyclerView) {}
  
  public void addView(View paramView, int paramInt)
  {
    this.aB.addView(paramView, paramInt);
    RecyclerView.ˊ(this.aB, paramView);
  }
  
  public void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if (localˑ != null)
    {
      if ((!localˑ.Ῐ()) && (!localˑ.ᴐ())) {
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localˑ);
      }
      localˑ.ᵨ();
    }
    RecyclerView.ˊ(this.aB, paramView, paramInt, paramLayoutParams);
  }
  
  public void detachViewFromParent(int paramInt)
  {
    Object localObject = getChildAt(paramInt);
    if (localObject != null)
    {
      localObject = RecyclerView.ᗮ((View)localObject);
      if (localObject != null)
      {
        if ((((RecyclerView.ˑ)localObject).Ῐ()) && (!((RecyclerView.ˑ)localObject).ᴐ())) {
          throw new IllegalArgumentException("called detach on an already detached child " + localObject);
        }
        ((RecyclerView.ˑ)localObject).addFlags(256);
      }
    }
    RecyclerView.ˊ(this.aB, paramInt);
  }
  
  public View getChildAt(int paramInt)
  {
    return this.aB.getChildAt(paramInt);
  }
  
  public int getChildCount()
  {
    return this.aB.getChildCount();
  }
  
  public int indexOfChild(View paramView)
  {
    return this.aB.indexOfChild(paramView);
  }
  
  public void removeAllViews()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˋ(this.aB, getChildAt(i));
      i += 1;
    }
    this.aB.removeAllViews();
  }
  
  public void removeViewAt(int paramInt)
  {
    View localView = this.aB.getChildAt(paramInt);
    if (localView != null) {
      RecyclerView.ˋ(this.aB, localView);
    }
    this.aB.removeViewAt(paramInt);
  }
  
  public RecyclerView.ˑ ᵣ(View paramView)
  {
    return RecyclerView.ᗮ(paramView);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº
 * JD-Core Version:    0.7.0.1
 */