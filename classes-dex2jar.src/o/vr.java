package o;

import java.util.Collections;
import java.util.HashSet;

public class vr
{
  private final HashSet<aai.if> bnT = new HashSet();
  private final vn.ˊ bnU;
  private int bnV;
  
  public vr(vn.ˊ paramˊ)
  {
    this.bnU = paramˊ;
  }
  
  private void ˋ(aam paramaam)
  {
    this.bnU.ˊ(paramaam);
  }
  
  private void ˎ(aai paramaai)
  {
    this.bnU.ˊ(paramaai);
  }
  
  private void ﱠ(int paramInt)
  {
    this.bnU.ﮅ(paramInt);
  }
  
  public void onEventMainThread(aai paramaai)
  {
    if (this.bnT.remove(paramaai.bsV))
    {
      if (!paramaai.vA()) {
        this.bnV -= 1;
      }
      ˎ(paramaai);
      if (this.bnT.isEmpty()) {
        ﱠ(this.bnV);
      }
    }
  }
  
  public void onEventMainThread(aam paramaam)
  {
    ˋ(paramaam);
  }
  
  public vr ˊ(aai.if... paramVarArgs)
  {
    Collections.addAll(this.bnT, paramVarArgs);
    this.bnV = this.bnT.size();
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.vr
 * JD-Core Version:    0.7.0.1
 */