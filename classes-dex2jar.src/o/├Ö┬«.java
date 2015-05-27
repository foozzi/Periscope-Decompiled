package o;

import java.util.concurrent.Callable;

class ٮ
  implements Callable<T>
{
  ٮ(ة paramة, Callable paramCallable) {}
  
  public T call()
  {
    try
    {
      Object localObject = this.nW.call();
      return localObject;
    }
    catch (Exception localException)
    {
      pj.cd().ˏ("Fabric", "Failed to execute task.", localException);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ù®
 * JD-Core Version:    0.7.0.1
 */