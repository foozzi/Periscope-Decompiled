package o;

import com.twitter.sdk.android.core.services.AccountService;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import retrofit.RetrofitError;

public class ni<T extends mg>
{
  private final mh<T> QR;
  protected final ni.ˊ QY;
  private final qx QZ;
  private final if Ra;
  private final ExecutorService executorService;
  
  public ni(mh<T> parammh, ExecutorService paramExecutorService)
  {
    this(parammh, new qx(), new if(), paramExecutorService, new ni.ˊ());
  }
  
  ni(mh<T> parammh, qx paramqx, if paramif, ExecutorService paramExecutorService, ni.ˊ paramˊ)
  {
    this.QZ = paramqx;
    this.QR = parammh;
    this.Ra = paramif;
    this.executorService = paramExecutorService;
    this.QY = paramˊ;
  }
  
  public void bC()
  {
    mg localmg = this.QR.aU();
    long l = this.QZ.cy();
    int i;
    if ((localmg != null) && (this.QY.ᵣ(l))) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      this.executorService.submit(new nk(this));
    }
  }
  
  protected void bD()
  {
    Iterator localIterator = this.QR.aW().values().iterator();
    while (localIterator.hasNext()) {
      ˎ((mg)localIterator.next());
    }
    this.QY.יִ(this.QZ.cy());
  }
  
  public void ˊ(pg parampg)
  {
    parampg.ˊ(new nj(this));
  }
  
  protected void ˎ(mg parammg)
  {
    parammg = this.Ra.ˏ(parammg);
    try
    {
      parammg.verifyCredentials(Boolean.valueOf(true), Boolean.valueOf(false));
      return;
    }
    catch (RetrofitError parammg) {}
  }
  
  public static class if
  {
    public AccountService ˏ(mg parammg)
    {
      return new mi(parammg).aY();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ni
 * JD-Core Version:    0.7.0.1
 */