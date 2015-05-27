package o;

import android.os.HandlerThread;
import android.os.Process;

public class হ
  extends HandlerThread
{
  private final int priority;
  
  public হ(String paramString, int paramInt)
  {
    super(paramString);
    this.priority = paramInt;
  }
  
  public void run()
  {
    Process.setThreadPriority(this.priority);
    super.run();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¹
 * JD-Core Version:    0.7.0.1
 */