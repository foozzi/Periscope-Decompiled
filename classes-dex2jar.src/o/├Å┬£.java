package o;

import java.io.InputStream;

public class Ϝ
  extends InputStream
{
  private boolean closed = false;
  private final к tE;
  private final ϒ tF;
  private boolean zU = false;
  private final byte[] zW;
  
  public Ϝ(ϒ paramϒ, к paramк)
  {
    this.tF = paramϒ;
    this.tE = paramк;
    this.zW = new byte[1];
  }
  
  private void ﾜ()
  {
    if (!this.zU)
    {
      this.tF.ˊ(this.tE);
      this.zU = true;
    }
  }
  
  public void close()
  {
    if (!this.closed)
    {
      this.tF.close();
      this.closed = true;
    }
  }
  
  public void open()
  {
    ﾜ();
  }
  
  public int read()
  {
    if (read(this.zW) == -1) {
      return -1;
    }
    return this.zW[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool;
    if (!this.closed) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    ﾜ();
    return this.tF.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long skip(long paramLong)
  {
    boolean bool;
    if (!this.closed) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    ﾜ();
    return super.skip(paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ï
 * JD-Core Version:    0.7.0.1
 */