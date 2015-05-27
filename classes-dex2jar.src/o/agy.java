package o;

import android.animation.ValueAnimator;
import android.support.v7.widget.RecyclerView.ˑ;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

public class agy
  extends RecyclerView.ˑ
{
  public ang bEb;
  
  public agy(View paramView)
  {
    super(paramView);
  }
  
  static class if
    implements Runnable
  {
    private View bEc;
    private agr bEd;
    private ValueAnimator bEe;
    private boolean bEf;
    private boolean bEg;
    
    if(View paramView, agr paramagr)
    {
      this.bEc = paramView;
      this.bEd = paramagr;
      this.bEe = ˊ(paramView, paramagr);
    }
    
    private ValueAnimator ˊ(View paramView, agr paramagr)
    {
      ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { paramagr.zy(), 0.0F });
      localValueAnimator.setDuration(paramagr.zz());
      localValueAnimator.setInterpolator(new DecelerateInterpolator());
      localValueAnimator.addUpdateListener(new agz(this, paramagr, paramView));
      localValueAnimator.addListener(new aha(this));
      return localValueAnimator;
    }
    
    public void reset()
    {
      if (this.bEe != null) {
        this.bEe.cancel();
      }
      this.bEe = null;
      this.bEc = null;
      this.bEd = null;
    }
    
    public void run()
    {
      zC();
    }
    
    public void setDuration(long paramLong)
    {
      if (this.bEe == null) {
        return;
      }
      if (this.bEg)
      {
        paramLong = ((float)paramLong * ((Float)this.bEe.getAnimatedValue()).floatValue());
        this.bEe.removeAllListeners();
        this.bEe.removeAllUpdateListeners();
        this.bEe.cancel();
        this.bEd.ˢ(paramLong);
        this.bEe = ˊ(this.bEc, this.bEd);
        this.bEe.start();
        return;
      }
      this.bEe.setDuration(paramLong);
    }
    
    public boolean zB()
    {
      return this.bEf;
    }
    
    public boolean zC()
    {
      if ((!this.bEg) && (this.bEe != null) && (!this.bEe.isStarted()))
      {
        this.bEe.start();
        this.bEg = true;
        return true;
      }
      return false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agy
 * JD-Core Version:    0.7.0.1
 */