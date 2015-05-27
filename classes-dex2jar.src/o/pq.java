package o;

import android.content.Context;
import java.io.File;
import java.util.Collection;

public abstract class pq<Result>
  implements Comparable<pq>
{
  pn<Result> UO;
  pj Vf;
  pp<Result> Vg = new pp(this);
  Context dV;
  qr ok;
  
  protected qr cg()
  {
    return this.ok;
  }
  
  public pj ch()
  {
    return this.Vf;
  }
  
  boolean ci()
  {
    return (rg)getClass().getAnnotation(rg.class) != null;
  }
  
  protected Collection<rp> cj()
  {
    return this.Vg.cj();
  }
  
  public Context getContext()
  {
    return this.dV;
  }
  
  public String getPath()
  {
    return ".Fabric" + File.separator + ｯ();
  }
  
  public abstract String getVersion();
  
  final void initialize()
  {
    this.Vg.ˊ(this.Vf.getExecutorService(), new Void[] { null });
  }
  
  protected void onCancelled(Result paramResult) {}
  
  protected void onPostExecute(Result paramResult) {}
  
  public int ˊ(pq parampq)
  {
    if (ˋ(parampq)) {
      return 1;
    }
    if (parampq.ˋ(this)) {
      return -1;
    }
    if ((ci()) && (!parampq.ci())) {
      return 1;
    }
    if ((!ci()) && (parampq.ci())) {
      return -1;
    }
    return 0;
  }
  
  void ˊ(Context paramContext, pj parampj, pn<Result> parampn, qr paramqr)
  {
    this.Vf = parampj;
    this.dV = new pm(paramContext, ｯ(), getPath());
    this.UO = parampn;
    this.ok = paramqr;
  }
  
  boolean ˋ(pq parampq)
  {
    Object localObject = (rg)getClass().getAnnotation(rg.class);
    if (localObject != null)
    {
      localObject = ((rg)localObject).cV();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        if (localObject[i].equals(parampq.getClass())) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  protected abstract Result э();
  
  protected boolean ﺰ()
  {
    return true;
  }
  
  public abstract String ｯ();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pq
 * JD-Core Version:    0.7.0.1
 */