package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class aef$ˊ
  extends aef<aeh.ˊ>
  implements View.OnClickListener
{
  private String bsJ;
  private final ImageView bzI;
  private final TextView bzJ;
  private final TextView bzK;
  private final View bzL;
  
  private aef$ˊ(View paramView, ady paramady)
  {
    super(paramView, paramady);
    this.bzJ = ((TextView)paramView.findViewById(2131427488));
    this.bzI = ((ImageView)paramView.findViewById(2131427487));
    this.bzK = ((TextView)paramView.findViewById(2131427489));
    this.bzL = paramView.findViewById(2131427490);
    paramView.setOnClickListener(this);
  }
  
  public static ˊ ˋ(Context paramContext, ViewGroup paramViewGroup, ady paramady)
  {
    return new ˊ(LayoutInflater.from(paramContext).inflate(2130903084, paramViewGroup, false), paramady);
  }
  
  public void onClick(View paramView)
  {
    this.bzc.ƚ(this.bsJ);
  }
  
  public void ˊ(aeh.ˊ paramˊ)
  {
    paramˊ = paramˊ.xA();
    this.bsJ = paramˊ.nD;
    this.bzJ.setText(paramˊ.boE);
    Object localObject = vf.tI().נּ(paramˊ.nD);
    if (localObject == null)
    {
      this.bzK.setText(2131099711);
      this.bzL.setVisibility(8);
    }
    else
    {
      this.bzK.setText(((PsUser)localObject).bpx);
      if (((PsUser)localObject).bpI) {
        this.bzL.setVisibility(0);
      } else {
        this.bzL.setVisibility(8);
      }
    }
    localObject = this.bB.getContext();
    if (anw.ᐨ(paramˊ.Tk))
    {
      ᓲ.ˌ((Context)localObject).ʻ(paramˊ.Tk).ˊ(abe.bvo).ﹷ(2130837567).ˊ(this.bzI);
      return;
    }
    akl.ˊ(this.bzI, paramˊ.boE, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aef.Ë
 * JD-Core Version:    0.7.0.1
 */