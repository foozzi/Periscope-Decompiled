package o;

import java.util.concurrent.ExecutorService;

class or
  implements Runnable
{
  private final pa TH;
  private final ot TI;
  
  or(ot paramot)
  {
    this.TI = paramot;
    this.TH = new pa();
  }
  
  public void run()
  {
    oz localoz = this.TH.bZ();
    if (localoz == null) {
      throw new IllegalStateException("No pending post available");
    }
    this.TI.ˊ(localoz);
  }
  
  public void ˊ(pe parampe, Object paramObject)
  {
    parampe = oz.ˎ(parampe, paramObject);
    this.TH.ˎ(parampe);
    this.TI.getExecutorService().execute(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.or
 * JD-Core Version:    0.7.0.1
 */