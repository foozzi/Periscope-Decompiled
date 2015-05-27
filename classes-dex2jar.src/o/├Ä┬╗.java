package o;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class λ
  implements ت
{
  private long bytesRemaining;
  private final ף zR;
  private String zS;
  private InputStream zT;
  private boolean zU;
  private final ContentResolver zV;
  
  public λ(Context paramContext, ף paramף)
  {
    this.zV = paramContext.getContentResolver();
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
        throw new λ.if(localIOException);
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
      throw new λ.if(paramArrayOfByte);
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
        this.zT = new FileInputStream(this.zV.openAssetFileDescriptor(paramк.uri, "r").getFileDescriptor());
        if (this.zT.skip(paramк.tU) != paramк.tU) {
          break label155;
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
        throw new λ.if(paramк);
      }
      this.zU = true;
      if (this.zR != null) {
        this.zR.ĉ();
      }
      return this.bytesRemaining;
      label155:
      boolean bool = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î»
 * JD-Core Version:    0.7.0.1
 */