package o;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;

public class nl
{
  private final String Rf;
  
  public nl()
  {
    this("https://api.twitter.com");
  }
  
  public nl(String paramString)
  {
    this.Rf = paramString;
  }
  
  public static String ˉ(String paramString1, String paramString2)
  {
    return paramString1 + '/' + paramString2 + ' ' + Build.MODEL + '/' + Build.VERSION.RELEASE + " (" + Build.MANUFACTURER + ';' + Build.MODEL + ';' + Build.BRAND + ';' + Build.PRODUCT + ')';
  }
  
  public String bE()
  {
    return this.Rf;
  }
  
  public Uri.Builder ˎ(String... paramVarArgs)
  {
    Uri.Builder localBuilder = Uri.parse(bE()).buildUpon();
    if (paramVarArgs != null)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.appendPath(paramVarArgs[i]);
        i += 1;
      }
    }
    return localBuilder;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.nl
 * JD-Core Version:    0.7.0.1
 */