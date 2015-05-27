package o;

import android.view.View;
import android.view.View.OnClickListener;

class ƚ$ˊ
  implements View.OnClickListener
{
  private ƚ$ˊ(ƚ paramƚ) {}
  
  public void onClick(View paramView)
  {
    ((ƚ.ˋ)paramView).Ị().select();
    int j = ƚ.ˊ(this.โ).getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = ƚ.ˊ(this.โ).getChildAt(i);
      boolean bool;
      if (localView == paramView) {
        bool = true;
      } else {
        bool = false;
      }
      localView.setSelected(bool);
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ.Ë
 * JD-Core Version:    0.7.0.1
 */