package o;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class ﺰ
  extends FilterInputStream
{
  private final long contentLength;
  private int nb;
  
  ﺰ(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    this.contentLength = paramLong;
  }
  
  public static InputStream ˊ(InputStream paramInputStream, long paramLong)
  {
    return new ﺰ(paramInputStream, paramLong);
  }
  
  private int ᕝ(int paramInt)
  {
    if (paramInt >= 0)
    {
      this.nb += paramInt;
      return paramInt;
    }
    if (this.contentLength - this.nb > 0L) {
      throw new IOException("Failed to read all expected data, expected: " + this.contentLength + ", but read: " + this.nb);
    }
    return paramInt;
  }
  
  public int available()
  {
    try
    {
      long l = Math.max(this.contentLength - this.nb, this.in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read()
  {
    try
    {
      int i = ᕝ(super.read());
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = ᕝ(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº°
 * JD-Core Version:    0.7.0.1
 */