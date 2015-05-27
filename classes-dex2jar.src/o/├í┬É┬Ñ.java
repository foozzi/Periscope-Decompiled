package o;

import android.view.View;
import android.widget.ListView;

public class ᐥ
  extends נ
{
  private final ListView Ξ;
  
  public ᐥ(ListView paramListView)
  {
    super(paramListView);
    this.Ξ = paramListView;
  }
  
  public boolean ʳ(int paramInt)
  {
    ListView localListView = this.Ξ;
    int i = localListView.getCount();
    if (i == 0) {
      return false;
    }
    int j = localListView.getChildCount();
    int k = localListView.getFirstVisiblePosition();
    if (paramInt > 0)
    {
      if (k + j >= i) {
        if (localListView.getChildAt(j - 1).getBottom() <= localListView.getHeight()) {
          return false;
        }
      }
    }
    else if (paramInt < 0)
    {
      if (k <= 0) {
        if (localListView.getChildAt(0).getTop() >= 0) {
          return false;
        }
      }
    }
    else {
      return false;
    }
    return true;
  }
  
  public void ʻ(int paramInt1, int paramInt2)
  {
    ListView localListView = this.Ξ;
    paramInt1 = localListView.getFirstVisiblePosition();
    if (paramInt1 == -1) {
      return;
    }
    View localView = localListView.getChildAt(0);
    if (localView == null) {
      return;
    }
    localListView.setSelectionFromTop(paramInt1, localView.getTop() - paramInt2);
  }
  
  public boolean ｰ(int paramInt)
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¥
 * JD-Core Version:    0.7.0.1
 */