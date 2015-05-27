package o;

import android.content.Context;
import com.twitter.sdk.android.core.internal.scribe.ScribeFilesSender;
import java.util.concurrent.ScheduledExecutorService;

class nv
  extends rs<nz>
{
  private final sg px;
  
  public nv(Context paramContext, ScheduledExecutorService paramScheduledExecutorService, oa paramoa, ny paramny, ScribeFilesSender paramScribeFilesSender)
  {
    super(paramContext, paramScheduledExecutorService, paramoa);
    this.px = paramScribeFilesSender;
    ﭙ(paramny.RM);
  }
  
  public sg Ḭ()
  {
    return this.px;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nv
 * JD-Core Version:    0.7.0.1
 */