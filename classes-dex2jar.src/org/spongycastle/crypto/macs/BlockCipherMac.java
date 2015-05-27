package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;

public class BlockCipherMac
  implements Mac
{
  private int aEU;
  private BlockCipher aEX;
  private byte[] aNy;
  private int aNz;
  private byte[] buf;
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aEX.getBlockSize();
    while (this.aEU < i)
    {
      this.buf[this.aEU] = 0;
      this.aEU += 1;
    }
    this.aEX.ˊ(this.buf, 0, this.aNy, 0);
    System.arraycopy(this.aNy, 0, paramArrayOfByte, paramInt, this.aNz);
    reset();
    return this.aNz;
  }
  
  public String iG()
  {
    return this.aEX.iG();
  }
  
  public int iO()
  {
    return this.aNz;
  }
  
  public void reset()
  {
    int i = 0;
    while (i < this.buf.length)
    {
      this.buf[i] = 0;
      i += 1;
    }
    this.aEU = 0;
    this.aEX.reset();
  }
  
  public void update(byte paramByte)
  {
    if (this.aEU == this.buf.length)
    {
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
    }
    byte[] arrayOfByte = this.buf;
    int i = this.aEU;
    this.aEU = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int m = this.aEX.getBlockSize();
    int n = m - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > n)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, n);
      int k = this.aEX.ˊ(this.buf, 0, this.aNy, 0) + 0;
      this.aEU = 0;
      paramInt2 -= n;
      paramInt1 += n;
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= m) {
          break;
        }
        k += this.aEX.ˊ(paramArrayOfByte, paramInt1, this.aNy, 0);
        paramInt2 -= m;
        paramInt1 += m;
      }
    }
    System.arraycopy(paramArrayOfByte, i, this.buf, this.aEU, j);
    this.aEU += j;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    reset();
    this.aEX.ˊ(true, paramCipherParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.BlockCipherMac
 * JD-Core Version:    0.7.0.1
 */