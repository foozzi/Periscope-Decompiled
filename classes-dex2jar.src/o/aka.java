package o;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Filter;

class aka
  implements TextWatcher
{
  aka(ajw paramajw) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    ajw.ˎ(this.bIe).getFilter().filter(paramEditable.toString());
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ajw.ˎ(this.bIe).getFilter().filter(paramCharSequence);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aka
 * JD-Core Version:    0.7.0.1
 */