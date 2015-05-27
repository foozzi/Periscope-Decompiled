package o;

import java.io.InputStream;

class ug
  extends InputStream
{
  ug(ue paramue) {}
  
  public int available()
  {
    return (int)Math.min(this.ZH.size, 2147483647L);
  }
  
  public void close() {}
  
  public int read()
  {
    if (this.ZH.size > 0L) {
      return this.ZH.readByte() & 0xFF;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.ZH.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public String toString()
  {
    return this.ZH + ".inputStream()";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ug
 * JD-Core Version:    0.7.0.1
 */