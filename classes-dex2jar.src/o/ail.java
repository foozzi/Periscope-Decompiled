package o;

import android.support.v4.view.ViewPager.aux;

class ail
  implements ViewPager.aux
{
  private final aik bGq;
  
  public ail(aik paramaik)
  {
    this.bGq = paramaik;
  }
  
  public void ʹ(int paramInt)
  {
    aik localaik = this.bGq;
    boolean bool;
    if (paramInt != 1) {
      bool = true;
    } else {
      bool = false;
    }
    localaik.setRefreshable(bool);
  }
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void ﾞ(int paramInt) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ail
 * JD-Core Version:    0.7.0.1
 */