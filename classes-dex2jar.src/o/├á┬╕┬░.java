package o;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

class ะ
  implements Callable<Boolean>
{
  ะ(ऽ paramऽ) {}
  
  public Boolean call()
  {
    if (!ऽ.ˊ(this.op).get())
    {
      ﾚ localﾚ = ऽ.ˎ(this.op).ɬ();
      if (localﾚ != null) {
        ऽ.ˊ(this.op, localﾚ);
      }
      ऽ.ˏ(this.op);
      ऽ.ˋ(this.op);
      pj.cd().ˑ("Fabric", "Open sessions were closed and a new session was opened.");
      return Boolean.valueOf(true);
    }
    pj.cd().ˑ("Fabric", "Skipping session finalization because a crash has already occurred.");
    return Boolean.valueOf(false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸°
 * JD-Core Version:    0.7.0.1
 */