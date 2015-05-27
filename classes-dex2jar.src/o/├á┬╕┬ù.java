package o;

import android.annotation.TargetApi;
import android.os.Trace;

public class ท
{
  public static void beginSection(String paramString)
  {
    if (ผ.SDK_INT >= 18) {
      ۥ(paramString);
    }
  }
  
  public static void endSection()
  {
    if (ผ.SDK_INT >= 18) {
      ԏ();
    }
  }
  
  @TargetApi(18)
  private static void ԏ() {}
  
  @TargetApi(18)
  private static void ۥ(String paramString)
  {
    Trace.beginSection(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸
 * JD-Core Version:    0.7.0.1
 */