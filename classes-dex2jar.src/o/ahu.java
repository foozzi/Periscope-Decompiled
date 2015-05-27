package o;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v7.widget.RecyclerView.aux;
import android.support.v7.widget.RecyclerView.if;
import java.util.concurrent.TimeUnit;

public class ahu
  extends aif
  implements zl, ahg.ˋ, ahg.ˎ, ahg.ˊ
{
  private final ahg bFo;
  private final zj bFp;
  private final ahh bFq;
  private aif.if bFr;
  private aif.if.ˊ bFs;
  private ade bFt;
  private aif.if.if bFu;
  
  public ahu(Activity paramActivity, ot paramot, vn paramvn, ahg paramahg, zj paramzj, amw paramamw, aip paramaip, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    super(paramamw, paramaip, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
    this.bFt = new ade(paramActivity);
    paramActivity = paramActivity.getResources();
    this.bFq = new ahh(paramActivity.getDimensionPixelOffset(2131361860), paramActivity.getColor(2131296386));
    this.bFo = paramahg;
    this.bFo.ˊ(this);
    this.bFo.ˊ(this);
    this.bFo.ˊ(this);
    this.bFp = paramzj;
    this.bFp.ˊ(this);
    this.bFr = new ahw(this, paramvn, paramot, new ahv(this));
  }
  
  public void uT()
  {
    this.bFp.ﹾ(TimeUnit.SECONDS.toMillis(5L));
  }
  
  public void uU()
  {
    if (this.bFs != null) {
      this.bFs.zM();
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
    return this.bFo;
  }
  
  public aif.if zH()
  {
    return this.bFr;
  }
  
  public RecyclerView.aux zI()
  {
    return this.bFq;
  }
  
  public void ๅ(String paramString)
  {
    this.bGa.ƚ(paramString);
  }
  
  public void ᐞ(String paramString)
  {
    this.bFt.ł(paramString);
  }
  
  public void ᓐ(String paramString)
  {
    this.bFt.ŗ(paramString);
  }
  
  public void ｃ(int paramInt)
  {
    this.bFo.notifyDataSetChanged();
  }
  
  public void ｩ(int paramInt)
  {
    this.bFo.notifyDataSetChanged();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahu
 * JD-Core Version:    0.7.0.1
 */