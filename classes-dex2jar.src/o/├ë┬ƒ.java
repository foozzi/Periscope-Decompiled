package o;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;

class ɟ
  implements Runnable
{
  ɟ(ɔ paramɔ) {}
  
  public void run()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)this.cH.getContext().getSystemService("input_method");
    if (localInputMethodManager != null) {
      ɔ.cw.ˊ(localInputMethodManager, this.cH, 0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É
 * JD-Core Version:    0.7.0.1
 */