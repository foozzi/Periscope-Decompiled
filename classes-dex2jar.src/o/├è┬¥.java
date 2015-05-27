package o;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class ʝ
  implements ت
{
  private long bytesRemaining;
  private final AssetManager gW;
  private final ף zR;
  private String zS;
  private InputStream zT;
  private boolean zU;
  
  public ʝ(Context paramContext, ף paramף)
  {
    this.gW = paramContext.getAssets();
    this.zR = paramף;
  }
  
  public void close()
  {
    this.zS = null;
    if (this.zT != null) {
      try
      {
        this.zT.close();
        return;
      }
      catch (IOException localIOException)
      {
        throw new ʝ.if(localIOException);
      }
      finally
      {
        this.zT = null;
        if (this.zU)
        {
          this.zU = false;
          if (this.zR != null) {
            this.zR.č();
          }
        }
      }
    }
  }
  
  public String getUri()
  {
    return this.zS;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.bytesRemaining == 0L) {
      return -1;
    }
    try
    {
      paramInt1 = this.zT.read(paramArrayOfByte, paramInt1, (int)Math.min(this.bytesRemaining, paramInt2));
    }
    catch (IOException paramArrayOfByte)
    {
      throw new ʝ.if(paramArrayOfByte);
    }
    if (paramInt1 > 0)
    {
      this.bytesRemaining -= paramInt1;
      if (this.zR != null) {
        this.zR.ɨ(paramInt1);
      }
    }
    return paramInt1;
  }
  
  public long ˊ(к paramк)
  {
    for (;;)
    {
      try
      {
        this.zS = paramк.uri.toString();
        String str2 = paramк.uri.getPath();
        String str1;
        if (str2.startsWith("/android_asset/"))
        {
          str1 = str2.substring(15);
        }
        else
        {
          str1 = str2;
          if (str2.startsWith("/")) {
            str1 = str2.substring(1);
          }
        }
        this.zS = paramк.uri.toString();
        this.zT = this.gW.open(str1, 1);
        if (this.zT.skip(paramк.tU) != paramк.tU) {
          break label206;
        }
        bool = true;
        ړ.ᐟ(bool);
        long l;
        if (paramк.length == -1L) {
          l = this.zT.available();
        } else {
          l = paramк.length;
        }
        this.bytesRemaining = l;
        if (this.bytesRemaining < 0L) {
          throw new EOFException();
        }
      }
      catch (IOException paramк)
      {
        throw new ʝ.if(paramк);
      }
      this.zU = true;
      if (this.zR != null) {
        this.zR.ĉ();
      }
      return this.bytesRemaining;
      label206:
      boolean bool = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */