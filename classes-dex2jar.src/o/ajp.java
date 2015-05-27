package o;

import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class ajp
  extends RecyclerView.ˑ
  implements View.OnClickListener
{
  public final ImageView bHB;
  public final ImageView bHC;
  public final TextView bHD;
  public final TextView bHE;
  public final TextView bHF;
  public final alx bHG;
  public final View bHH;
  public PsUser boA;
  private final amw byZ;
  
  public ajp(View paramView, amw paramamw)
  {
    super(paramView);
    this.bHB = ((ImageView)paramView.findViewById(2131427433));
    this.bHC = ((ImageView)paramView.findViewById(2131427582));
    this.bHD = ((TextView)paramView.findViewById(2131427435));
    this.bHE = ((TextView)paramView.findViewById(2131427583));
    this.bHF = ((TextView)paramView.findViewById(2131427519));
    this.bHG = ((alx)paramView.findViewById(2131427580));
    this.bHH = paramView.findViewById(2131427490);
    this.byZ = paramamw;
    paramView.setOnClickListener(this);
    this.bHG.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    if (this.boA != null)
    {
      switch (paramView.getId())
      {
      default: 
        return;
      case 2131427578: 
        this.byZ.ƚ(this.boA.id);
        return;
      }
      if (this.boA.bpE)
      {
        this.byZ.ﭜ(this.boA.id);
        return;
      }
      this.byZ.ﭕ(this.boA.id);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajp
 * JD-Core Version:    0.7.0.1
 */