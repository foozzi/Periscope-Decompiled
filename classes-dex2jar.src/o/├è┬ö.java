package o;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

public class ʔ
  extends ɻ<InputStream>
{
  public ʔ(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  protected void ˊ(InputStream paramInputStream)
  {
    paramInputStream.close();
  }
  
  protected InputStream ˎ(Uri paramUri, ContentResolver paramContentResolver)
  {
    return paramContentResolver.openInputStream(paramUri);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */