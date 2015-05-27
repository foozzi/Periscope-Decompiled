package o;

import java.util.Iterator;
import java.util.List;

class ᔮ$if
  extends qg
{
  private final float nH;
  
  ᔮ$if(ᔮ paramᔮ, float paramFloat)
  {
    this.nH = paramFloat;
  }
  
  private void ᘤ()
  {
    pj.cd().ˑ("Fabric", "Starting report processing in " + this.nH + " second(s)...");
    if (this.nH > 0.0F) {
      try
      {
        Thread.sleep((this.nH * 1000.0F));
      }
      catch (InterruptedException localInterruptedException1)
      {
        Thread.currentThread().interrupt();
        return;
      }
    }
    Object localObject3 = ɬ.ｿ();
    ऽ localऽ = ((ɬ)localObject3).Ľ();
    Object localObject1 = this.pd.ᔩ();
    if (localऽ.ن()) {
      return;
    }
    if ((!((List)localObject1).isEmpty()) && (!((ɬ)localObject3).Т()))
    {
      pj.cd().ˑ("Fabric", "User declined to send. Removing " + ((List)localObject1).size() + " Report(s).");
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((ᔪ)((Iterator)localObject1).next()).ᔂ();
      }
      return;
    }
    int i = 0;
    for (;;)
    {
      int j = i;
      if (((List)localObject1).isEmpty()) {
        break;
      }
      if (ɬ.ｿ().Ľ().ن()) {
        return;
      }
      pj.cd().ˑ("Fabric", "Attempting to send " + ((List)localObject1).size() + " report(s)");
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (ᔪ)((Iterator)localObject1).next();
        this.pd.ˊ((ᔪ)localObject3);
      }
      localObject3 = this.pd.ᔩ();
      localObject1 = localObject3;
      i = j;
      if (!((List)localObject3).isEmpty())
      {
        localObject1 = ᔮ.ᔪ();
        i = j + 1;
        long l = localObject1[java.lang.Math.min(j, ᔮ.ᔪ().length - 1)];
        pj.cd().ˑ("Fabric", "Report submisson: scheduling delayed retry in " + l + " seconds");
        try
        {
          Thread.sleep(1000L * l);
        }
        catch (InterruptedException localInterruptedException2)
        {
          Thread.currentThread().interrupt();
          return;
        }
        Object localObject2 = localObject3;
      }
    }
  }
  
  public void ᔮ()
  {
    try
    {
      ᘤ();
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Fabric", "An unexpected error occurred while attempting to upload crash reports.", localException);
    }
    ᔮ.ˊ(this.pd, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á®.if
 * JD-Core Version:    0.7.0.1
 */