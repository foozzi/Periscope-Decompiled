package o;

import android.support.v4.view.ViewPager.aux;

public class amp
  implements ViewPager.aux
{
  private final amq bNl;
  private int mState;
  private int Ț;
  
  public amp(amq paramamq)
  {
    this.bNl = paramamq;
  }
  
  public void ʹ(int paramInt)
  {
    if ((this.mState == 2) && (paramInt == 0)) {
      this.bNl.setPosition(this.Ț);
    }
    this.mState = paramInt;
  }
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2)
  {
    this.bNl.ᐝ(paramInt1, paramFloat);
  }
  
  public void ﾞ(int paramInt)
  {
    this.Ț = paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amp
 * JD-Core Version:    0.7.0.1
 */