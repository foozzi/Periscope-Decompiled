package org.spongycastle.util.io;

import java.io.OutputStream;
import org.spongycastle.util.Arrays;

public class BufferingOutputStream
  extends OutputStream
{
  private int aEU;
  private final OutputStream bki;
  private final byte[] buf;
  
  public void close()
  {
    flush();
    this.bki.close();
  }
  
  public void flush()
  {
    this.bki.write(this.buf, 0, this.aEU);
    this.aEU = 0;
    Arrays.fill(this.buf, (byte)0);
  }
  
  public void write(int paramInt)
  {
    byte[] arrayOfByte = this.buf;
    int i = this.aEU;
    this.aEU = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    if (this.aEU == this.buf.length) {
      flush();
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < this.buf.length - this.aEU)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, paramInt2);
      this.aEU += paramInt2;
      return;
    }
    int j = this.buf.length - this.aEU;
    System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, j);
    this.aEU += j;
    flush();
    int i = paramInt1 + j;
    paramInt1 = paramInt2 - j;
    paramInt2 = i;
    while (paramInt1 >= this.buf.length)
    {
      this.bki.write(paramArrayOfByte, paramInt2, this.buf.length);
      paramInt2 += this.buf.length;
      paramInt1 -= this.buf.length;
    }
    if (paramInt1 > 0)
    {
      System.arraycopy(paramArrayOfByte, paramInt2, this.buf, this.aEU, paramInt1);
      this.aEU += paramInt1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.BufferingOutputStream
 * JD-Core Version:    0.7.0.1
 */