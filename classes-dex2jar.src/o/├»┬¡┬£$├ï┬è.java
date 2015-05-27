package o;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;

class ﭜ$ˊ
  implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener
{
  private ﭜ$ˊ(ﭜ paramﭜ) {}
  
  private void ᒼ()
  {
    if (ﭜ.ʽ(this.ﮋ) != null) {
      ﭜ.ʽ(this.ﮋ).onDismiss();
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView == ﭜ.ᐝ(this.ﮋ))
    {
      this.ﮋ.ڊ();
      paramView = ﭜ.ˊ(this.ﮋ).ɨ();
      int i = ﭜ.ˊ(this.ﮋ).ᐦ().ˊ(paramView);
      paramView = ﭜ.ˊ(this.ﮋ).ᐦ().ᴶ(i);
      if (paramView != null)
      {
        paramView.addFlags(524288);
        this.ﮋ.getContext().startActivity(paramView);
      }
      return;
    }
    if (paramView == ﭜ.ʻ(this.ﮋ))
    {
      ﭜ.ˊ(this.ﮋ, false);
      ﭜ.ˊ(this.ﮋ, ﭜ.ʼ(this.ﮋ));
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public void onDismiss()
  {
    ᒼ();
    if (this.ﮋ.ἶ != null) {
      this.ﮋ.ἶ.ˎ(false);
    }
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((ﭜ.if)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default: 
      break;
    case 1: 
      ﭜ.ˊ(this.ﮋ, 2147483647);
      return;
    case 0: 
      this.ﮋ.ڊ();
      if (ﭜ.ˏ(this.ﮋ))
      {
        if (paramInt <= 0) {
          return;
        }
        ﭜ.ˊ(this.ﮋ).ᐦ().ᴸ(paramInt);
        return;
      }
      if (!ﭜ.ˊ(this.ﮋ).ᒄ()) {
        paramInt += 1;
      }
      paramAdapterView = ﭜ.ˊ(this.ﮋ).ᐦ().ᴶ(paramInt);
      if (paramAdapterView != null)
      {
        paramAdapterView.addFlags(524288);
        this.ﮋ.getContext().startActivity(paramAdapterView);
      }
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (paramView == ﭜ.ᐝ(this.ﮋ))
    {
      if (ﭜ.ˊ(this.ﮋ).getCount() > 0)
      {
        ﭜ.ˊ(this.ﮋ, true);
        ﭜ.ˊ(this.ﮋ, ﭜ.ʼ(this.ﮋ));
      }
    }
    else {
      throw new IllegalArgumentException();
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.Ë
 * JD-Core Version:    0.7.0.1
 */