package o;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class akj
{
  public static void ᔉ(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static void ᔊ(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).showSoftInput(paramView, 1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akj
 * JD-Core Version:    0.7.0.1
 */