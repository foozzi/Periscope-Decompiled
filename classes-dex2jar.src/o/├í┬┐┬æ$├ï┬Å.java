package o;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

class ῑ$ˏ
  implements AbsListView.OnScrollListener
{
  private ῑ$ˏ(ῑ paramῑ) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!this.j.isInputMethodNotNeeded()) && (ῑ.ˋ(this.j).getContentView() != null))
    {
      ῑ.ˏ(this.j).removeCallbacks(ῑ.ˎ(this.j));
      ῑ.ˎ(this.j).run();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.Ë
 * JD-Core Version:    0.7.0.1
 */