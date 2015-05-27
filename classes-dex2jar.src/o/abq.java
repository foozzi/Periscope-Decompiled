package o;

import android.content.Context;
import tv.periscope.android.util.Size;

public class abq
{
  private boolean bvw;
  private abj bwK = new abj();
  private abi bwL;
  private abi bwM;
  private abg bwN;
  
  public abq(Context paramContext)
  {
    this.bwM = new abi(paramContext, 2131034116, 2131034114);
    this.bwL = new abi(paramContext, 2131034116, 2131034115);
    this.bwN = new abg();
  }
  
  public void vQ()
  {
    if (this.bwN != null) {
      this.bwN.vQ();
    }
    this.bwK.vQ();
    this.bwM.vQ();
    this.bwL.vQ();
  }
  
  public void ˊ(abn paramabn)
  {
    Size localSize1 = paramabn.ww();
    if (localSize1 == null) {
      return;
    }
    int i = paramabn.wt();
    Size localSize2 = abp.wy();
    this.bwN.ˊ(localSize1, localSize2, i, this.bvw);
    this.bwN.ˊ(this.bwM, this.bwL, this.bwK, paramabn);
  }
  
  public void ᑦ(boolean paramBoolean)
  {
    this.bvw = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abq
 * JD-Core Version:    0.7.0.1
 */