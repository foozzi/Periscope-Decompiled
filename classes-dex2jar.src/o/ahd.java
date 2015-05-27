package o;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class ahd
  extends agy
  implements View.OnClickListener
{
  private afn bDC;
  public final TextView bEn;
  public final TextView bEo;
  public final alm bEp;
  public agr bEq;
  
  public ahd(View paramView, afn paramafn)
  {
    super(paramView);
    this.bEn = ((TextView)paramView.findViewById(2131427501));
    this.bEo = ((TextView)paramView.findViewById(2131427502));
    this.bEp = ((alm)paramView.findViewById(2131427454));
    this.bDC = paramafn;
    float f = paramView.getResources().getDimension(2131361859);
    this.bEp.setCornerRadius(new float[] { f, 0.0F, 0.0F, f });
    paramView.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    if (this.bEq.zy() > 0.2F)
    {
      this.bDC.ˋ(this.bEq.bxr, new vk(vi.if.bmj));
      return;
    }
    this.bDC.onCancel();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahd
 * JD-Core Version:    0.7.0.1
 */