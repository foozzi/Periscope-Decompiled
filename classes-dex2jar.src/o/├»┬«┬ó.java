package o;

import android.net.Uri;
import java.util.List;

final class ﮢ
{
  private static final int jr = "file:///android_asset/".length();
  
  public static boolean ˏ(Uri paramUri)
  {
    return ("file".equals(paramUri.getScheme())) && (!paramUri.getPathSegments().isEmpty()) && ("android_asset".equals(paramUri.getPathSegments().get(0)));
  }
  
  public static String ᐝ(Uri paramUri)
  {
    return paramUri.toString().substring(jr);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®¢
 * JD-Core Version:    0.7.0.1
 */