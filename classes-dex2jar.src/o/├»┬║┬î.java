package o;

import android.net.Uri;
import java.io.File;

public class ﺌ<T>
  implements ɽ<File, T>
{
  private final ɽ<Uri, T> js;
  
  public ﺌ(ɽ<Uri, T> paramɽ)
  {
    this.js = paramɽ;
  }
  
  public Į<T> ˊ(File paramFile, int paramInt1, int paramInt2)
  {
    return this.js.ˎ(Uri.fromFile(paramFile), paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº
 * JD-Core Version:    0.7.0.1
 */