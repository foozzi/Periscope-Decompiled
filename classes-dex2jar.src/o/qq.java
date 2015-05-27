package o;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

final class qq
  extends qg
{
  qq(String paramString, ExecutorService paramExecutorService, long paramLong, TimeUnit paramTimeUnit) {}
  
  public void ᔮ()
  {
    try
    {
      pj.cd().ˑ("Fabric", "Executing shutdown hook for " + this.VV);
      this.VW.shutdown();
      if (!this.VW.awaitTermination(this.VX, this.VY))
      {
        pj.cd().ˑ("Fabric", this.VV + " did not shut down in the" + " allocated time. Requesting immediate shutdown.");
        this.VW.shutdownNow();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      pj.cd().ˑ("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[] { this.VV }));
      this.VW.shutdownNow();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qq
 * JD-Core Version:    0.7.0.1
 */