package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class aef$ˋ
  extends aef<aeh.ˋ>
{
  private final TextView bzM;
  
  public aef$ˋ(View paramView, ady paramady)
  {
    super(paramView, paramady);
    this.bzM = ((TextView)paramView.findViewById(2131427420));
  }
  
  public static ˋ ˎ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
  {
    return new ˋ(LayoutInflater.from(paramContext).inflate(2130903069, paramViewGroup, false), paramady);
  }
  
  public void ˊ(aeh.ˋ paramˋ)
  {
    this.bzM.setText(paramˋ.getData());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef.Ë
 * JD-Core Version:    0.7.0.1
 */