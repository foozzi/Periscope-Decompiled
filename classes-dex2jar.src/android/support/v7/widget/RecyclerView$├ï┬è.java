package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

class RecyclerView$ˊ
  extends Observable<RecyclerView.ˋ>
{
  public void notifyChanged()
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.ˋ)this.mObservers.get(i)).onChanged();
      i -= 1;
    }
  }
  
  public void ᵣ(int paramInt1, int paramInt2)
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.ˋ)this.mObservers.get(i)).יּ(paramInt1, paramInt2);
      i -= 1;
    }
  }
  
  public void יִ(int paramInt1, int paramInt2)
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.ˋ)this.mObservers.get(i)).ᐟ(paramInt1, paramInt2);
      i -= 1;
    }
  }
  
  public boolean ﾉ()
  {
    return !this.mObservers.isEmpty();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */