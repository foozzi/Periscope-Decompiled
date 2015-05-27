package o;

import android.content.res.AssetManager;
import java.io.InputStream;

public class ʏ
  extends ｊ<InputStream>
{
  public ʏ(AssetManager paramAssetManager, String paramString)
  {
    super(paramAssetManager, paramString);
  }
  
  protected void ˊ(InputStream paramInputStream)
  {
    paramInputStream.close();
  }
  
  protected InputStream ˎ(AssetManager paramAssetManager, String paramString)
  {
    return paramAssetManager.open(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */