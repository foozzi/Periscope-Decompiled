package o;

import android.os.MessageQueue.IdleHandler;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

class ʷ$ˎ
  implements MessageQueue.IdleHandler
{
  private final ReferenceQueue<ץ<?>> hF;
  private final Map<ﮆ, WeakReference<ץ<?>>> hw;
  
  public ʷ$ˎ(Map<ﮆ, WeakReference<ץ<?>>> paramMap, ReferenceQueue<ץ<?>> paramReferenceQueue)
  {
    this.hw = paramMap;
    this.hF = paramReferenceQueue;
  }
  
  public boolean queueIdle()
  {
    ʷ.ˏ localˏ = (ʷ.ˏ)this.hF.poll();
    if (localˏ != null) {
      this.hw.remove(ʷ.ˏ.ˊ(localˏ));
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê·.Ë
 * JD-Core Version:    0.7.0.1
 */