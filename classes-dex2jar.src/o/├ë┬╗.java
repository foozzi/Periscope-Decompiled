package o;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;

public abstract class ɻ<T>
  implements Į<T>
{
  private final Context dV;
  private T data;
  private final Uri uri;
  
  public ɻ(Context paramContext, Uri paramUri)
  {
    this.dV = paramContext.getApplicationContext();
    this.uri = paramUri;
  }
  
  public void cancel() {}
  
  public String getId()
  {
    return this.uri.toString();
  }
  
  public final T ˊ(ᔿ paramᔿ)
  {
    paramᔿ = this.dV.getContentResolver();
    this.data = ˋ(this.uri, paramᔿ);
    return this.data;
  }
  
  protected abstract T ˋ(Uri paramUri, ContentResolver paramContentResolver);
  
  protected abstract void ˮ(T paramT);
  
  public void ב()
  {
    if (this.data != null) {
      try
      {
        ˮ(this.data);
        return;
      }
      catch (IOException localIOException)
      {
        if (Log.isLoggable("LocalUriFetcher", 2)) {
          Log.v("LocalUriFetcher", "failed to close data", localIOException);
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É»
 * JD-Core Version:    0.7.0.1
 */