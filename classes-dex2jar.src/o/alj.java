package o;

import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.View.OnClickListener;

public class alj
  extends RecyclerView.ˑ
  implements View.OnClickListener
{
  public final alh bLM;
  public ale bLN;
  
  public alj(View paramView)
  {
    super(paramView);
    this.bLM = ((alh)paramView);
    this.bLM.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    if (this.bLM == paramView) {
      this.bLN.execute();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alj
 * JD-Core Version:    0.7.0.1
 */