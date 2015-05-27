package o;

import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

class ahk
  extends ahj
{
  public final TextView bEA;
  public final ImageView bEB;
  public final TextView bED;
  public final TextView bEM;
  public final alm bEN;
  public final alm bEO;
  public final View bEP;
  public final TextView bEQ;
  
  public ahk(View paramView)
  {
    super(paramView);
    this.bEA = ((TextView)paramView.findViewById(2131427379));
    this.bEB = ((ImageView)paramView.findViewById(2131427450));
    this.bED = ((TextView)paramView.findViewById(2131427446));
    this.bEN = ((alm)paramView.findViewById(2131427454));
    this.bEP = paramView.findViewById(2131427441);
    this.bEM = ((TextView)paramView.findViewById(2131427457));
    this.bEO = ((alm)paramView.findViewById(2131427452));
    this.bEQ = ((TextView)paramView.findViewById(2131427456));
    if (this.bEO != null)
    {
      float f = paramView.getResources().getDimension(2131361859);
      this.bEO.setCornerRadius(new float[] { f, f, 0.0F, 0.0F });
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahk
 * JD-Core Version:    0.7.0.1
 */