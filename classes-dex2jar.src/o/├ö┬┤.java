package o;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class Դ
  implements ت
{
  private RandomAccessFile AG;
  private long bytesRemaining;
  private final ף zR;
  private String zS;
  private boolean zU;
  
  public Դ()
  {
    this(null);
  }
  
  public Դ(ף paramף)
  {
    this.zR = paramף;
  }
  
  public void close()
  {
    this.zS = null;
    if (this.AG != null) {
      try
      {
        this.AG.close();
        return;
      }
      catch (IOException localIOException)
      {
        throw new Դ.if(localIOException);
      }
      finally
      {
        this.AG = null;
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
      paramInt1 = this.AG.read(paramArrayOfByte, paramInt1, (int)Math.min(this.bytesRemaining, paramInt2));
    }
    catch (IOException paramArrayOfByte)
    {
      throw new Դ.if(paramArrayOfByte);
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
    try
    {
      this.zS = paramк.uri.toString();
      this.AG = new RandomAccessFile(paramк.uri.getPath(), "r");
      this.AG.seek(paramк.tU);
      long l;
      if (paramк.length == -1L) {
        l = this.AG.length() - paramк.tU;
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
      throw new Դ.if(paramк);
    }
    this.zU = true;
    if (this.zR != null) {
      this.zR.ĉ();
    }
    return this.bytesRemaining;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô´
 * JD-Core Version:    0.7.0.1
 */