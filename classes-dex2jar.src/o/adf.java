package o;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import tv.periscope.android.api.PsUser;

public class adf
{
  private final aad bnA;
  private final Context mContext;
  
  public adf(Context paramContext, aad paramaad)
  {
    this.mContext = paramContext.getApplicationContext();
    this.bnA = paramaad;
  }
  
  private int wU()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new adg(this)).length;
      return i;
    }
    catch (Exception localException) {}
    return 1;
  }
  
  private void ʻ(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("\nVM: " + System.getProperty("java.vm.name") + " " + System.getProperty("java.vm.version"));
  }
  
  private void ʼ(StringBuilder paramStringBuilder)
  {
    int i = ძ.ٴ(this.mContext);
    paramStringBuilder.append("\nGoogle play services status: " + ძ.Ї(i));
  }
  
  private void ˊ(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("\npackage: ").append(this.mContext.getPackageName());
    paramStringBuilder.append("\nversion: ").append(akn.ᐤ(this.mContext));
  }
  
  private void ˋ(StringBuilder paramStringBuilder)
  {
    if (this.bnA.vl())
    {
      PsUser localPsUser = this.bnA.vz();
      paramStringBuilder.append("\nuserId: ").append(localPsUser.id);
      paramStringBuilder.append("\nusername: ").append(localPsUser.bpx);
      return;
    }
    paramStringBuilder.append("\nuserId: <none -- logged out>");
  }
  
  private void ˎ(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("\nDevice: " + Build.DEVICE);
    paramStringBuilder.append("\nModel: " + Build.MODEL);
    paramStringBuilder.append("\nSupported ABIs: ");
    try
    {
      String[] arrayOfString = Build.SUPPORTED_ABIS;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        paramStringBuilder.append("\n" + str);
        i += 1;
      }
    }
    catch (NoSuchFieldError localNoSuchFieldError)
    {
      paramStringBuilder.append("\nNo Supported ABIs");
    }
    paramStringBuilder.append("\nHardware: " + Build.HARDWARE);
    paramStringBuilder.append("\nBrand: " + Build.BRAND);
    paramStringBuilder.append("\nProduct: " + Build.PRODUCT);
    paramStringBuilder.append("\nManufacturer: " + Build.MANUFACTURER);
    paramStringBuilder.append("\nBoard: " + Build.BOARD);
    paramStringBuilder.append("\nCores: " + wU() + "\n");
    paramStringBuilder.append("\nAndroid OS Version: " + Build.VERSION.RELEASE + " " + Build.VERSION.SDK_INT + Build.VERSION.INCREMENTAL + " (" + Build.VERSION.CODENAME + ")");
  }
  
  private void ˏ(StringBuilder paramStringBuilder)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    paramStringBuilder.append("\nScreen Density: ");
    switch (localDisplayMetrics.densityDpi)
    {
    default: 
      break;
    case 120: 
      paramStringBuilder.append(" LDPI");
      break;
    case 160: 
      paramStringBuilder.append(" MDPI");
      break;
    case 240: 
      paramStringBuilder.append(" HDPI");
      break;
    case 213: 
      paramStringBuilder.append(" TVDPI");
      break;
    case 320: 
      paramStringBuilder.append(" XHDPI");
      break;
    case 480: 
      paramStringBuilder.append(" XXHDPI");
      break;
    }
    paramStringBuilder.append(" UNKNOWN: " + localDisplayMetrics.densityDpi);
    paramStringBuilder.append("\nScreen Size: " + localDisplayMetrics.widthPixels + "x" + localDisplayMetrics.heightPixels);
  }
  
  private void ᐝ(StringBuilder paramStringBuilder)
  {
    ActivityManager localActivityManager = (ActivityManager)this.mContext.getSystemService("activity");
    localActivityManager.getMemoryInfo(new ActivityManager.MemoryInfo());
    int i = localActivityManager.getMemoryClass();
    paramStringBuilder.append("\nMemory Info: " + i + "MB");
  }
  
  public String wT()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ˊ(localStringBuilder);
    localStringBuilder.append("\n");
    ˋ(localStringBuilder);
    localStringBuilder.append("\n");
    ˎ(localStringBuilder);
    localStringBuilder.append("\n");
    ʼ(localStringBuilder);
    localStringBuilder.append("\n");
    ˏ(localStringBuilder);
    localStringBuilder.append("\n");
    ᐝ(localStringBuilder);
    localStringBuilder.append("\n");
    ʻ(localStringBuilder);
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adf
 * JD-Core Version:    0.7.0.1
 */