package o;

import android.os.Handler;
import android.view.View;

class afa
  implements adw.ˋ
{
  afa(aet paramaet) {}
  
  public void ˊ(View paramView, float paramFloat, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramView.getId() == 2131427465)
    {
      aet.ˏ(this.bBV).setAlpha(1.0F - paramFloat);
      aet.ᐝ(this.bBV).setRotation(180.0F * paramFloat);
      return;
    }
    aet.ʻ(this.bBV).setAlpha(1.0F - paramFloat);
    aet.ʼ(this.bBV).setAlpha(1.0F - paramFloat);
  }
  
  public void ˍ(View paramView, int paramInt)
  {
    if ((paramView.getId() == 2131427465) && (paramInt == 1)) {
      aet.ˎ(this.bBV).removeCallbacks(aet.ˋ(this.bBV));
    }
  }
  
  public void ৲(View paramView)
  {
    int i = paramView.getId();
    switch (i)
    {
    default: 
      return;
    }
    aet.ʽ(this.bBV);
    if ((i == 2131427482) && (aet.ͺ(this.bBV))) {
      aet.ʾ(this.bBV).ᵡ(aet.ι(this.bBV));
    }
  }
  
  public void ᐢ(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131427465: 
      aet.ʿ(this.bBV);
      return;
    }
    aet.ˊ(this.bBV);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afa
 * JD-Core Version:    0.7.0.1
 */