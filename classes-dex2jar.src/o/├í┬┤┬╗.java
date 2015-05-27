package o;

import android.util.Log;
import java.io.File;
import java.io.IOException;

public class ᴻ
  implements ᓳ
{
  private static ᴻ iX = null;
  private final File directory;
  private final ᴠ iY = new ᴠ();
  private final ῒ iZ;
  private ᴐ ja;
  private final int ᴾ;
  
  protected ᴻ(File paramFile, int paramInt)
  {
    this.directory = paramFile;
    this.ᴾ = paramInt;
    this.iZ = new ῒ();
  }
  
  public static ᓳ ˊ(File paramFile, int paramInt)
  {
    try
    {
      if (iX == null) {
        iX = new ᴻ(paramFile, paramInt);
      }
      paramFile = iX;
      return paramFile;
    }
    finally {}
  }
  
  private ᴐ ᵦ()
  {
    try
    {
      if (this.ja == null) {
        this.ja = ᴐ.ˊ(this.directory, 1, 1, this.ᴾ);
      }
      ᴐ localᴐ = this.ja;
      return localᴐ;
    }
    finally {}
  }
  
  public void ʻ(ﮆ paramﮆ)
  {
    paramﮆ = this.iZ.ι(paramﮆ);
    try
    {
      ᵦ().remove(paramﮆ);
      return;
    }
    catch (IOException paramﮆ)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", paramﮆ);
      }
    }
  }
  
  public void ˊ(ﮆ paramﮆ, ᓳ.ˊ paramˊ)
  {
    Object localObject = this.iZ.ι(paramﮆ);
    this.iY.ʼ(paramﮆ);
    try
    {
      localObject = ᵦ().ʽ((String)localObject);
      if (localObject != null) {}
      try
      {
        if (paramˊ.ˎ(((ᴐ.if)localObject).ﺑ(0))) {
          ((ᴐ.if)localObject).commit();
        }
        ((ᴐ.if)localObject).abortUnlessCommitted();
      }
      finally
      {
        ((ᴐ.if)localObject).abortUnlessCommitted();
      }
      return;
    }
    catch (IOException paramˊ)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", paramˊ);
      }
      return;
    }
    finally
    {
      this.iY.ʽ(paramﮆ);
    }
  }
  
  public File ᐝ(ﮆ paramﮆ)
  {
    Object localObject = this.iZ.ι(paramﮆ);
    paramﮆ = null;
    try
    {
      localObject = ᵦ().ʼ((String)localObject);
      if (localObject != null) {
        paramﮆ = ((ᴐ.ˋ)localObject).ﺑ(0);
      }
      return paramﮆ;
    }
    catch (IOException paramﮆ)
    {
      if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
        Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", paramﮆ);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´»
 * JD-Core Version:    0.7.0.1
 */