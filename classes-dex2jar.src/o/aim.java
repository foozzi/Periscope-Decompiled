package o;

import android.app.Activity;
import android.support.v7.widget.RecyclerView.aux;
import android.support.v7.widget.RecyclerView.if;

public class aim
  extends aif
  implements zl
{
  private aif.if bFr;
  private aif.if.if bFu;
  private final zn bGr;
  private final ajn bGs;
  private aif.if.ˊ bGt;
  
  public aim(Activity paramActivity, ot paramot, vn paramvn, aad paramaad, amw paramamw, aip paramaip, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    super(paramamw, paramaip, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    this.bGr = new zn(this, paramvn);
    this.bGs = new ajn(paramActivity, new aac(paramaad), paramamw);
    this.bFr = new ain(this, paramvn, paramot);
  }
  
  public void uT()
  {
    this.bGs.notifyDataSetChanged();
  }
  
  public void uU()
  {
    if (this.bGt != null) {
      this.bGt.zM();
    }
  }
  
  public void uV()
  {
    if (this.bFu != null) {
      this.bFu.zL();
    }
  }
  
  public RecyclerView.if zG()
  {
    return this.bGs;
  }
  
  public aif.if zH()
  {
    return this.bFr;
  }
  
  public RecyclerView.aux zI()
  {
    return null;
  }
  
  public void ｃ(int paramInt)
  {
    this.bGs.notifyDataSetChanged();
  }
  
  public void ｩ(int paramInt)
  {
    this.bGs.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aim
 * JD-Core Version:    0.7.0.1
 */