package o;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

class ῑ$aux
  implements View.OnTouchListener
{
  private ῑ$aux(ῑ paramῑ) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int k = (int)paramMotionEvent.getX();
    int m = (int)paramMotionEvent.getY();
    if ((i == 0) && (ῑ.ˋ(this.j) != null) && (ῑ.ˋ(this.j).isShowing()) && (k >= 0) && (k < ῑ.ˋ(this.j).getWidth()) && (m >= 0) && (m < ῑ.ˋ(this.j).getHeight())) {
      ῑ.ˏ(this.j).postDelayed(ῑ.ˎ(this.j), 250L);
    } else if (i == 1) {
      ῑ.ˏ(this.j).removeCallbacks(ῑ.ˎ(this.j));
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.aux
 * JD-Core Version:    0.7.0.1
 */