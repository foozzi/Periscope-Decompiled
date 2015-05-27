package o;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings.Secure;
import android.renderscript.RenderScript;
import android.text.SpannableStringBuilder;
import android.text.format.Time;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.Display;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.TextView;
import java.math.BigInteger;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class akn
{
  private static final String Wa;
  static final Pattern bIA = Pattern.compile("(\\*(\\d+)\\$(.+?)\\*)");
  private static final fl bIu = new fl();
  private static final if bIv;
  private static RenderScript bIw;
  private static final Random bIx;
  private static final DecimalFormat bIy;
  private static final DecimalFormatSymbols bIz;
  
  static
  {
    Wa = Pattern.quote("/");
    bIy = new DecimalFormat();
    bIz = new DecimalFormatSymbols();
    bIv = new if();
    bIx = new Random();
  }
  
  public static Random AA()
  {
    return bIx;
  }
  
  public static BigInteger AB()
  {
    return BigInteger.valueOf(akx.Bl().getTime() / 1000L + 2208988800L);
  }
  
  public static fl bS()
  {
    return bIu;
  }
  
  public static String cD()
  {
    return String.format(Locale.US, "%s/%s", new Object[] { ᒾ(Build.MANUFACTURER), ᒾ(Build.MODEL) });
  }
  
  public static SpannableStringBuilder ˊ(String paramString, int paramInt, View.OnClickListener... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(localStringBuilder);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramVarArgs[i];
      localObject = bIA.matcher(localStringBuilder);
      if (((Matcher)localObject).find())
      {
        if (((Matcher)localObject).groupCount() != 3) {
          throw new IllegalArgumentException("String not properly formatted: " + paramString);
        }
        int k = ((Matcher)localObject).start(1);
        int m = ((Matcher)localObject).end(1);
        int n = Integer.parseInt(((Matcher)localObject).group(2));
        localObject = ((Matcher)localObject).group(3);
        localStringBuilder.replace(k, m, (String)localObject);
        localSpannableStringBuilder.replace(k, m, (CharSequence)localObject);
        localSpannableStringBuilder.setSpan(new ako(paramInt, paramVarArgs, n - 1), k, ((String)localObject).length() + k, 33);
      }
      i += 1;
    }
    return localSpannableStringBuilder;
  }
  
  public static String ˊ(Context paramContext, long paramLong)
  {
    paramLong = System.currentTimeMillis() - paramLong;
    paramContext = paramContext.getResources();
    if (paramLong <= 5000L) {
      return paramContext.getString(2131099837);
    }
    if (paramLong < 60000L) {
      return paramContext.getString(2131099874, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 1000L)) });
    }
    if (paramLong < 3600000L) {
      return paramContext.getString(2131099808, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 60000L)) });
    }
    if (paramLong < 86400000L) {
      return paramContext.getString(2131099798, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 3600000L)) });
    }
    if (paramLong < 604800000L) {
      return paramContext.getString(2131099759, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 86400000L)) });
    }
    if (paramLong < 2628000000L) {
      return paramContext.getString(2131099915, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 604800000L)) });
    }
    if (paramLong < 31536000000L) {
      return paramContext.getString(2131099809, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 2628000000L)) });
    }
    return paramContext.getString(2131099916, new Object[] { Integer.valueOf((int)Math.floor(paramLong / 31536000000L)) });
  }
  
  public static String ˊ(Resources paramResources, long paramLong, boolean paramBoolean)
  {
    int i;
    if (Integer.parseInt(paramResources.getString(2131099844)) == 4) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (Integer.parseInt(paramResources.getString(2131099841)) == 8) {
      j = 1;
    } else {
      j = 0;
    }
    int k = 3;
    try
    {
      int m = Integer.parseInt(paramResources.getString(2131099840));
      k = m;
    }
    catch (NumberFormatException localNumberFormatException) {}
    bIy.setGroupingSize(k);
    bIz.setGroupingSeparator(paramResources.getString(2131099843).charAt(0));
    bIz.setDecimalSeparator(paramResources.getString(2131099839).charAt(0));
    bIy.setGroupingUsed(true);
    bIy.setDecimalFormatSymbols(bIz);
    if ((!paramBoolean) || (Locale.KOREA.getLanguage().equals(Locale.getDefault().getLanguage()))) {
      return bIy.format(paramLong);
    }
    double d2 = paramLong / 1000000.0D;
    double d1 = d2;
    if (d2 >= 1.0D)
    {
      d2 = d1;
      if (j != 0) {
        d2 = d1 / 100.0D;
      }
      return paramResources.getString(2131099842, new Object[] { bIy.format(Math.floor(10.0D * d2) / 10.0D) });
    }
    d2 = paramLong / 1000.0D;
    d1 = d2;
    if (d2 >= 1.0D)
    {
      d2 = d1;
      if (i != 0) {
        d2 = d1 / 10.0D;
      }
      return paramResources.getString(2131099845, new Object[] { bIy.format(Math.floor(10.0D * d2) / 10.0D) });
    }
    return bIy.format(paramLong);
  }
  
  public static void ˊ(TextView paramTextView, String paramString, int paramInt, View.OnClickListener... paramVarArgs)
  {
    paramTextView.setMovementMethod(new LinkMovementMethod());
    paramTextView.setText(ˊ(paramString, paramInt, paramVarArgs));
  }
  
  public static void ˊ(String paramString, Runnable paramRunnable, long paramLong)
  {
    bIv.ˊ(Message.obtain(bIv, paramString.hashCode(), paramRunnable), paramLong);
  }
  
  public static String ו(Context paramContext)
  {
    return ۦ(paramContext) + "-" + เ(paramContext);
  }
  
  public static String ۦ(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public static String เ(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  public static String Ꭵ(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      paramContext = paramContext.versionName + "/" + paramContext.versionCode;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "unknown";
  }
  
  public static int ᐤ(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new RuntimeException("Could not get package name: " + paramContext);
    }
  }
  
  public static RenderScript ᒡ(Context paramContext)
  {
    if (bIw == null) {
      bIw = RenderScript.create(paramContext);
    }
    return bIw;
  }
  
  public static Point ᒢ(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    paramContext.getSize(localPoint);
    return localPoint;
  }
  
  private static String ᒾ(String paramString)
  {
    return paramString.replaceAll(Wa, "");
  }
  
  public static long ᔥ(String paramString)
  {
    Time localTime = new Time();
    localTime.parse3339(paramString);
    return localTime.toMillis(false);
  }
  
  public static void ᖦ(String paramString)
  {
    if (bIv.hasMessages(paramString.hashCode())) {
      bIv.removeMessages(paramString.hashCode());
    }
  }
  
  public static CharSequence ᴗ(String paramString)
  {
    int k = paramString.indexOf('*');
    if (k == -1) {
      return paramString;
    }
    int i = paramString.indexOf('*', k + 1);
    if (i == -1) {
      return paramString;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString, 0, k);
    int j = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(paramString, k + 1, i);
    k = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append(paramString, i + 1, paramString.length());
    localSpannableStringBuilder.setSpan(new StyleSpan(1), j, k, 18);
    return localSpannableStringBuilder;
  }
  
  public static BigInteger ⁱ(BigInteger paramBigInteger)
  {
    if (paramBigInteger != null) {
      return paramBigInteger.divide(BigInteger.valueOf(4294967296L));
    }
    return BigInteger.ZERO;
  }
  
  static class if
    extends Handler
  {
    private HashMap<Integer, Long> bID = new HashMap();
    
    public void handleMessage(Message paramMessage)
    {
      int i = paramMessage.what;
      if (hasMessages(i)) {
        return;
      }
      removeMessages(i);
      ((Runnable)paramMessage.obj).run();
    }
    
    public void ˊ(Message paramMessage, long paramLong)
    {
      this.bID.put(Integer.valueOf(paramMessage.what), Long.valueOf(paramLong));
      sendMessageDelayed(paramMessage, paramLong);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akn
 * JD-Core Version:    0.7.0.1
 */