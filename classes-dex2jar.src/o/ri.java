package o;

import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public abstract class ri<Params, Progress, Result>
  extends qz<Params, Progress, Result>
  implements re<rp>, rm, rp
{
  private final rn Xj = new rn();
  
  public boolean cQ()
  {
    return ((re)cW()).cQ();
  }
  
  public <T extends re<rp>,  extends rm,  extends rp> T cW()
  {
    return this.Xj;
  }
  
  public Collection<rp> cj()
  {
    return ((re)cW()).cj();
  }
  
  public int compareTo(Object paramObject)
  {
    return rh.ˊ(this, paramObject);
  }
  
  public boolean isFinished()
  {
    return ((rp)cW()).isFinished();
  }
  
  public final void ˊ(ExecutorService paramExecutorService, Params... paramVarArgs)
  {
    super.ˊ(new if(paramExecutorService, this), paramVarArgs);
  }
  
  public void ˊ(rp paramrp)
  {
    if (cO() != qz.ˎ.WX) {
      throw new IllegalStateException("Must not add Dependency after task is running");
    }
    ((re)cW()).Ꭵ(paramrp);
  }
  
  public rh є()
  {
    return ((rm)cW()).є();
  }
  
  public void ᐝ(Throwable paramThrowable)
  {
    ((rp)cW()).ᐝ(paramThrowable);
  }
  
  public void ᔊ(boolean paramBoolean)
  {
    ((rp)cW()).ᔊ(paramBoolean);
  }
  
  static class if<Result>
    implements Executor
  {
    private final ri Xk;
    private final Executor executor;
    
    public if(Executor paramExecutor, ri paramri)
    {
      this.executor = paramExecutor;
      this.Xk = paramri;
    }
    
    public void execute(Runnable paramRunnable)
    {
      this.executor.execute(new rj(this, paramRunnable, null));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ri
 * JD-Core Version:    0.7.0.1
 */