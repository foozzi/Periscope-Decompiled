package o;

import java.util.Collections;
import java.util.List;

class vo
  implements vn.ˊ
{
  private List<xh> bnG = Collections.emptyList();
  private List<xh> bnH = Collections.emptyList();
  private List<xh> bnI = Collections.emptyList();
  
  vo(vn paramvn) {}
  
  public void ˊ(aai paramaai)
  {
    if (!paramaai.vA())
    {
      vn.ˊ(this.bnJ).onEventMainThread(paramaai);
      return;
    }
    switch (vn.1.bnK[paramaai.bsV.ordinal()])
    {
    default: 
      return;
    case 1: 
      this.bnG = ((List)paramaai.data);
      return;
    case 2: 
      this.bnI = ((List)paramaai.data);
      return;
    }
    this.bnH = ((List)paramaai.data);
  }
  
  public void ˊ(aam paramaam)
  {
    vn.ˊ(this.bnJ).onEventMainThread(paramaam);
  }
  
  public void ﮅ(int paramInt)
  {
    if (paramInt == 0)
    {
      vn.ˋ(this.bnJ).uZ();
      return;
    }
    vn.ˋ(this.bnJ).ˊ(this.bnI, this.bnH, this.bnG);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vo
 * JD-Core Version:    0.7.0.1
 */