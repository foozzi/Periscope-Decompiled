package o;

import android.support.v7.internal.widget.SpinnerCompat;
import android.support.v7.internal.widget.SpinnerCompat.ˋ;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public class ד
  implements AdapterView.OnItemClickListener
{
  public ד(SpinnerCompat.ˋ paramˋ, SpinnerCompat paramSpinnerCompat) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.ᖪ.ᒸ.setSelection(paramInt);
    if (this.ᖪ.ᒸ.Ŷ != null) {
      this.ᖪ.ᒸ.performItemClick(paramView, paramInt, SpinnerCompat.ˋ.ˊ(this.ᖪ).getItemId(paramInt));
    }
    this.ᖪ.dismiss();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×
 * JD-Core Version:    0.7.0.1
 */