package o;

import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import tv.periscope.android.api.PsUser;

public class akc
  extends RecyclerView.ˑ
  implements View.OnClickListener
{
  public final ImageView bHB;
  public final TextView bHD;
  private final akd bHJ;
  public final alx bIf;
  public PsUser boA;
  
  public akc(View paramView, akd paramakd, int paramInt)
  {
    super(paramView);
    this.bHB = ((ImageView)paramView.findViewById(2131427433));
    this.bHD = ((TextView)paramView.findViewById(2131427435));
    this.bIf = ((alx)paramView.findViewById(paramInt));
    this.bIf.setOnClickListener(this);
    paramView.setOnClickListener(this);
    this.bHJ = paramakd;
  }
  
  public void onClick(View paramView)
  {
    if (this.boA != null)
    {
      if (paramView == this.bIf)
      {
        boolean bool;
        if (!this.bIf.isChecked()) {
          bool = true;
        } else {
          bool = false;
        }
        this.bHJ.ˊ(bool, this.boA);
        this.bIf.setChecked(bool);
        return;
      }
      if (paramView == this.bB) {
        this.bHJ.ˊ(paramView, this.boA);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akc
 * JD-Core Version:    0.7.0.1
 */