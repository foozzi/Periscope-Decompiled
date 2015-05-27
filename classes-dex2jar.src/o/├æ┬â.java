package o;

import java.io.File;
import java.util.concurrent.Callable;

class у
  implements Callable<Boolean>
{
  у(ɬ paramɬ) {}
  
  public Boolean call()
  {
    try
    {
      boolean bool = ɬ.ˊ(this.nN).delete();
      pj.cd().ˑ("Fabric", "Initialization marker file removed: " + bool);
      return Boolean.valueOf(bool);
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Fabric", "Problem encountered deleting Crashlytics initialization marker.", localException);
    }
    return Boolean.valueOf(false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ñ
 * JD-Core Version:    0.7.0.1
 */