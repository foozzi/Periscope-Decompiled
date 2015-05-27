package o;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

class ƚ$if
  extends BaseAdapter
{
  private ƚ$if(ƚ paramƚ) {}
  
  public int getCount()
  {
    return ƚ.ˊ(this.โ).getChildCount();
  }
  
  public Object getItem(int paramInt)
  {
    return ((ƚ.ˋ)ƚ.ˊ(this.โ).getChildAt(paramInt)).Ị();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      return ƚ.ˊ(this.โ, (ذ.ˊ)getItem(paramInt), true);
    }
    ((ƚ.ˋ)paramView).ˊ((ذ.ˊ)getItem(paramInt));
    return paramView;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ.if
 * JD-Core Version:    0.7.0.1
 */