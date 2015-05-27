package o;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class х
  implements View.OnKeyListener
{
  х(ɔ paramɔ) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (ɔ.ˌ(this.cH) == null) {
      return false;
    }
    if ((ɔ.ˈ(this.cH).isPopupShowing()) && (ɔ.ˈ(this.cH).getListSelection() != -1)) {
      return ɔ.ˊ(this.cH, paramView, paramInt, paramKeyEvent);
    }
    if ((!ɔ.ˏ.ˊ(ɔ.ˈ(this.cH))) && (ᒻ.ˊ(paramKeyEvent)) && (paramKeyEvent.getAction() == 1) && (paramInt == 66))
    {
      paramView.cancelLongPress();
      ɔ.ˊ(this.cH, 0, null, ɔ.ˈ(this.cH).getText().toString());
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ñ
 * JD-Core Version:    0.7.0.1
 */