package o;

import java.io.IOException;
import java.io.OutputStream;

class uu
  extends OutputStream
{
  uu(ut paramut) {}
  
  public void close()
  {
    this.ZV.close();
  }
  
  public void flush()
  {
    if (!ut.ˊ(this.ZV)) {
      this.ZV.flush();
    }
  }
  
  public String toString()
  {
    return this.ZV + ".outputStream()";
  }
  
  public void write(int paramInt)
  {
    if (ut.ˊ(this.ZV)) {
      throw new IOException("closed");
    }
    this.ZV.ZT.ﺜ((byte)paramInt);
    this.ZV.eh();
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (ut.ˊ(this.ZV)) {
      throw new IOException("closed");
    }
    this.ZV.ZT.ˉ(paramArrayOfByte, paramInt1, paramInt2);
    this.ZV.eh();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uu
 * JD-Core Version:    0.7.0.1
 */