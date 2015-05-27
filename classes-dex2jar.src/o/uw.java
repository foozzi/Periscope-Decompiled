package o;

import java.io.IOException;
import java.io.InputStream;

class uw
  extends InputStream
{
  uw(uv paramuv) {}
  
  public int available()
  {
    if (uv.ˊ(this.ZX)) {
      throw new IOException("closed");
    }
    return (int)Math.min(this.ZX.ZT.size, 2147483647L);
  }
  
  public void close()
  {
    this.ZX.close();
  }
  
  public int read()
  {
    if (uv.ˊ(this.ZX)) {
      throw new IOException("closed");
    }
    if ((this.ZX.ZT.size == 0L) && (this.ZX.ZW.read(this.ZX.ZT, 2048L) == -1L)) {
      return -1;
    }
    return this.ZX.ZT.readByte() & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (uv.ˊ(this.ZX)) {
      throw new IOException("closed");
    }
    vd.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((this.ZX.ZT.size == 0L) && (this.ZX.ZW.read(this.ZX.ZT, 2048L) == -1L)) {
      return -1;
    }
    return this.ZX.ZT.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public String toString()
  {
    return this.ZX + ".inputStream()";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uw
 * JD-Core Version:    0.7.0.1
 */