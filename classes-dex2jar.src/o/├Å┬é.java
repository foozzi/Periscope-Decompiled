package o;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

public class ς<T>
  implements ɽ<String, T>
{
  private final ɽ<Uri, T> js;
  
  public ς(ɽ<Uri, T> paramɽ)
  {
    this.js = paramɽ;
  }
  
  private static Uri ͺ(String paramString)
  {
    return Uri.fromFile(new File(paramString));
  }
  
  public Į<T> ˊ(String paramString, int paramInt1, int paramInt2)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    Object localObject;
    if (paramString.startsWith("/"))
    {
      localObject = ͺ(paramString);
    }
    else
    {
      Uri localUri = Uri.parse(paramString);
      localObject = localUri;
      if (localUri.getScheme() == null) {
        localObject = ͺ(paramString);
      }
    }
    return this.js.ˎ(localObject, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ï
 * JD-Core Version:    0.7.0.1
 */