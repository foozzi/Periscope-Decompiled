package o;

import java.util.concurrent.ExecutorService;

class ʷ$if
{
  private final ExecutorService eP;
  private final ExecutorService eQ;
  private final Γ hA;
  
  public ʷ$if(ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, Γ paramΓ)
  {
    this.eQ = paramExecutorService1;
    this.eP = paramExecutorService2;
    this.hA = paramΓ;
  }
  
  public ΐ ˎ(ﮆ paramﮆ, boolean paramBoolean)
  {
    return new ΐ(paramﮆ, this.eQ, this.eP, paramBoolean, this.hA);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê·.if
 * JD-Core Version:    0.7.0.1
 */