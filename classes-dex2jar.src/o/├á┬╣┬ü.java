package o;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

public class แ
  extends ϛ<InputStream>
  implements ܕ<Uri>
{
  public แ(Context paramContext, ɽ<ﻣ, InputStream> paramɽ)
  {
    super(paramContext, paramɽ);
  }
  
  protected Į<InputStream> ˊ(Context paramContext, Uri paramUri)
  {
    return new ʔ(paramContext, paramUri);
  }
  
  protected Į<InputStream> ˊ(Context paramContext, String paramString)
  {
    return new ʏ(paramContext.getApplicationContext().getAssets(), paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¹
 * JD-Core Version:    0.7.0.1
 */