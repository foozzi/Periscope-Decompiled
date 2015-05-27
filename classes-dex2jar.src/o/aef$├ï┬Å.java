package o;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class aef$ˏ
  extends aef<aeh.ˏ>
{
  private final TextView bzM;
  private final TextView bzR;
  
  public aef$ˏ(View paramView, ady paramady)
  {
    super(paramView, paramady);
    this.bzM = ((TextView)paramView.findViewById(2131427427));
    this.bzR = ((TextView)paramView.findViewById(2131427426));
  }
  
  public static ˏ ᐝ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
  {
    return new ˏ(LayoutInflater.from(paramContext).inflate(2130903072, paramViewGroup, false), paramady);
  }
  
  public void ˊ(aeh.ˏ paramˏ)
  {
    Resources localResources = this.bzM.getResources();
    anf localanf = paramˏ.xE();
    switch (aef.1.bzD[paramˏ.xC().ordinal()])
    {
    default: 
      return;
    case 1: 
      i = Math.max(0, localanf.BS() + localanf.BQ() - paramˏ.xD());
      this.bzR.setText(akn.ˊ(localResources, i, true));
      if (localanf.BQ() > 0)
      {
        this.bzM.setText(akn.ᴗ(localResources.getString(2131099811, new Object[] { akn.ˊ(localResources, localanf.BQ(), true) })));
        return;
      }
      this.bzM.setText(akn.ᴗ(localResources.getString(2131099810)));
      return;
    }
    int i = Math.max(0, localanf.BR() - paramˏ.xD());
    this.bzR.setText(akn.ˊ(localResources, i, true));
    this.bzM.setText(akn.ᴗ(localResources.getString(2131099810)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef.Ë
 * JD-Core Version:    0.7.0.1
 */