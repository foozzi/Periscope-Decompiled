package o;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class afs
  implements View.OnClickListener
{
  afs(afq paramafq) {}
  
  public void onClick(View paramView)
  {
    switch (afq.1.bCJ[afq.ˋ(this.bCH).ordinal()])
    {
    default: 
      return;
    case 1: 
      afq.ˎ(this.bCH).clearFocus();
      return;
    }
    if (afq.ˎ(this.bCH).length() > 0)
    {
      paramView = afq.ˎ(this.bCH).getText().toString();
      if (afq.ˏ(this.bCH) != null) {
        afq.ˏ(this.bCH).ۃ(paramView);
      }
      afq.ˎ(this.bCH).setText("");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afs
 * JD-Core Version:    0.7.0.1
 */