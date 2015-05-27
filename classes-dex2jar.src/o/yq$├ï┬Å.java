package o;

abstract class yq$ˏ
{
  private volatile boolean bqR;
  private final Long bqS = new Long(0L);
  private Thread bqT;
  private volatile boolean וֹ;
  
  public void join()
  {
    this.bqR = true;
    try
    {
      this.bqT.join();
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  public abstract void run();
  
  public void start()
  {
    this.bqT = new Thread(new yq.ˏ.if(this));
    this.bqT.start();
  }
  
  public void uD()
  {
    synchronized (this.bqS)
    {
      while (!this.וֹ)
      {
        boolean bool = this.bqR;
        if (bool) {
          break;
        }
        try
        {
          this.bqS.wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      return;
    }
  }
  
  protected boolean uE()
  {
    return !this.bqR;
  }
  
  protected void uF()
  {
    synchronized (this.bqS)
    {
      this.וֹ = true;
      this.bqS.notifyAll();
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.yq.Ë
 * JD-Core Version:    0.7.0.1
 */