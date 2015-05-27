package o;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.Log;

public class ẛ
{
  private final Context dV;
  private final int je;
  private final int jf;
  
  public ẛ(Context paramContext)
  {
    this(paramContext, (ActivityManager)paramContext.getSystemService("activity"), new ẛ.if(paramContext.getResources().getDisplayMetrics()));
  }
  
  ẛ(Context paramContext, ActivityManager paramActivityManager, ẛ.ˊ paramˊ)
  {
    this.dV = paramContext;
    int i = ˊ(paramActivityManager);
    int k = paramˊ.〳() * paramˊ.〵() * 4;
    int j = k * 4;
    k *= 2;
    if (k + j <= i)
    {
      this.jf = k;
      this.je = j;
    }
    else
    {
      int m = Math.round(i / 6.0F);
      this.jf = (m * 2);
      this.je = (m * 4);
    }
    if (Log.isLoggable("MemorySizeCalculator", 3))
    {
      paramContext = new StringBuilder().append("Calculated memory cache size: ").append(ᑉ(this.jf)).append(" pool size: ").append(ᑉ(this.je)).append(" memory class limited? ");
      boolean bool;
      if (k + j > i) {
        bool = true;
      } else {
        bool = false;
      }
      Log.d("MemorySizeCalculator", bool + " max size: " + ᑉ(i) + " memoryClass: " + paramActivityManager.getMemoryClass() + " isLowMemoryDevice: " + ˋ(paramActivityManager));
    }
  }
  
  private static int ˊ(ActivityManager paramActivityManager)
  {
    int i = paramActivityManager.getMemoryClass();
    boolean bool = ˋ(paramActivityManager);
    float f2 = i * 1024 * 1024;
    float f1;
    if (bool) {
      f1 = 0.33F;
    } else {
      f1 = 0.4F;
    }
    return Math.round(f2 * f1);
  }
  
  @TargetApi(19)
  private static boolean ˋ(ActivityManager paramActivityManager)
  {
    int i = Build.VERSION.SDK_INT;
    return (i < 11) || ((i >= 19) && (paramActivityManager.isLowRamDevice()));
  }
  
  private String ᑉ(int paramInt)
  {
    return Formatter.formatFileSize(this.dV, paramInt);
  }
  
  public int ẋ()
  {
    return this.jf;
  }
  
  public int ẍ()
  {
    return this.je;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áº
 * JD-Core Version:    0.7.0.1
 */