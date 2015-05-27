package o;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public class ډ
  extends ϛ<ParcelFileDescriptor>
  implements ב<Uri>
{
  public ډ(Context paramContext, ɽ<ﻣ, ParcelFileDescriptor> paramɽ)
  {
    super(paramContext, paramɽ);
  }
  
  protected Į<ParcelFileDescriptor> ˊ(Context paramContext, Uri paramUri)
  {
    return new ȓ(paramContext, paramUri);
  }
  
  protected Į<ParcelFileDescriptor> ˊ(Context paramContext, String paramString)
  {
    return new ŕ(paramContext.getApplicationContext().getAssets(), paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */