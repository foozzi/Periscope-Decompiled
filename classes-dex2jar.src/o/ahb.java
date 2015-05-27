package o;

import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;

public class ahb
  extends RelativeLayout
{
  private amf bEk;
  private agp bEl;
  
  public ahb(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public ahb(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public ahb(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void ˊ(Context paramContext)
  {
    this.bEk = ((amf)LayoutInflater.from(paramContext).inflate(2130903091, this, true).findViewById(2131427506));
    paramContext = new ahc(this, paramContext);
    paramContext.ᵎ(true);
    this.bEk.setAllowScroll(false);
    this.bEk.setItemAnimator(new ags());
    this.bEk.setLayoutManager(paramContext);
    this.bEk.setHasFixedSize(true);
  }
  
  public void setChatAdapter(agp paramagp)
  {
    this.bEk.setAdapter(paramagp);
    this.bEl = paramagp;
  }
  
  public void ˍ(ant paramant)
  {
    this.bEl.ʼ(paramant);
    ϟ(this.bEl.getItemCount() - 1);
  }
  
  public void ϟ(int paramInt)
  {
    this.bEk.ﹴ(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahb
 * JD-Core Version:    0.7.0.1
 */