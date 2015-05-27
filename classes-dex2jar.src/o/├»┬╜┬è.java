package o;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;

public abstract class ｊ<T>
  implements Į<T>
{
  private T data;
  private final String gV;
  private final AssetManager gW;
  
  public ｊ(AssetManager paramAssetManager, String paramString)
  {
    this.gW = paramAssetManager;
    this.gV = paramString;
  }
  
  public void cancel() {}
  
  public String getId()
  {
    return this.gV;
  }
  
  protected abstract T ˊ(AssetManager paramAssetManager, String paramString);
  
  public T ˊ(ᔿ paramᔿ)
  {
    this.data = ˊ(this.gW, this.gV);
    return this.data;
  }
  
  protected abstract void ˮ(T paramT);
  
  public void ב()
  {
    if (this.data == null) {
      return;
    }
    try
    {
      ˮ(this.data);
      return;
    }
    catch (IOException localIOException)
    {
      if (Log.isLoggable("AssetUriFetcher", 2)) {
        Log.v("AssetUriFetcher", "Failed to close data", localIOException);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */