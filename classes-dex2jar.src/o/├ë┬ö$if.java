package o;

import android.os.ResultReceiver;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

class ɔ$if
{
  private Method cI;
  private Method cJ;
  private Method cK;
  private Method cL;
  
  ɔ$if()
  {
    try
    {
      this.cI = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
      this.cI.setAccessible(true);
    }
    catch (NoSuchMethodException localNoSuchMethodException1) {}
    try
    {
      this.cJ = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
      this.cJ.setAccessible(true);
    }
    catch (NoSuchMethodException localNoSuchMethodException2) {}
    try
    {
      this.cK = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
      this.cK.setAccessible(true);
    }
    catch (NoSuchMethodException localNoSuchMethodException3) {}
    try
    {
      this.cL = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[] { Integer.TYPE, ResultReceiver.class });
      this.cL.setAccessible(true);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException4) {}
  }
  
  void ˊ(InputMethodManager paramInputMethodManager, View paramView, int paramInt)
  {
    if (this.cL != null) {
      try
      {
        this.cL.invoke(paramInputMethodManager, new Object[] { Integer.valueOf(paramInt), null });
        return;
      }
      catch (Exception localException) {}
    }
    paramInputMethodManager.showSoftInput(paramView, paramInt);
  }
  
  void ˊ(AutoCompleteTextView paramAutoCompleteTextView)
  {
    if (this.cI != null) {
      try
      {
        this.cI.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
  
  void ˊ(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
  {
    if (this.cK != null) {
      try
      {
        this.cK.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
  
  void ˋ(AutoCompleteTextView paramAutoCompleteTextView)
  {
    if (this.cJ != null) {
      try
      {
        this.cJ.invoke(paramAutoCompleteTextView, new Object[0]);
        return;
      }
      catch (Exception paramAutoCompleteTextView) {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É.if
 * JD-Core Version:    0.7.0.1
 */