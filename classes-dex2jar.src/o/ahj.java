package o;

import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.widget.TextView;

class ahj
  extends RecyclerView.ˑ
{
  public final View bEK;
  public final TextView bEL;
  public String bnh;
  
  public ahj(View paramView)
  {
    super(paramView);
    this.bEK = paramView.findViewById(2131427445);
    this.bEL = ((TextView)paramView.findViewById(2131427540));
  }
  
  public void Ґ(int paramInt)
  {
    if (paramInt > 0)
    {
      this.bEL.setText(akn.ˊ(this.bEL.getResources(), paramInt, true));
      this.bEK.setVisibility(0);
      return;
    }
    this.bEK.setVisibility(4);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahj
 * JD-Core Version:    0.7.0.1
 */