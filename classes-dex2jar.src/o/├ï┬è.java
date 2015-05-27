package o;

import android.app.Activity;
import android.app.SharedElementCallback;

class ˊ
{
  private static SharedElementCallback ˊ(ˊ.if paramif)
  {
    ˊ.ˊ localˊ = null;
    if (paramif != null) {
      localˊ = new ˊ.ˊ(paramif);
    }
    return localˊ;
  }
  
  public static void ˊ(Activity paramActivity)
  {
    paramActivity.finishAfterTransition();
  }
  
  public static void ˊ(Activity paramActivity, ˊ.if paramif)
  {
    paramActivity.setEnterSharedElementCallback(ˊ(paramif));
  }
  
  public static void ˋ(Activity paramActivity)
  {
    paramActivity.postponeEnterTransition();
  }
  
  public static void ˋ(Activity paramActivity, ˊ.if paramif)
  {
    paramActivity.setExitSharedElementCallback(ˊ(paramif));
  }
  
  public static void ˎ(Activity paramActivity)
  {
    paramActivity.startPostponedEnterTransition();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë
 * JD-Core Version:    0.7.0.1
 */