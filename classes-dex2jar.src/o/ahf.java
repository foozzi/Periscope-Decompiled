package o;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class ahf
  extends agy
  implements View.OnClickListener
{
  private final afn bDC;
  public agr bEq;
  public final TextView bEs;
  
  public ahf(View paramView, afn paramafn)
  {
    super(paramView);
    this.bEs = ((TextView)paramView.findViewById(2131427504));
    this.bDC = paramafn;
    paramView.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    if (this.bEq == null) {
      return;
    }
    if (this.bEq.zy() > 0.2F)
    {
      this.bDC.ˋ(this.bEq.bxr, new vk(vi.if.bmj));
      return;
    }
    this.bDC.onCancel();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahf
 * JD-Core Version:    0.7.0.1
 */