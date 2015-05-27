package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.paddings.BlockCipherPadding;

public class CFBBlockCipherMac
  implements Mac
{
  private int aEU;
  private BlockCipherPadding aNA = null;
  private MacCFBBlockCipher aNB;
  private byte[] aNy;
  private int aNz;
  private byte[] buf;
  
  public CFBBlockCipherMac(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, 8, paramBlockCipher.getBlockSize() * 8 / 2, null);
  }
  
  public CFBBlockCipherMac(BlockCipher paramBlockCipher, int paramInt1, int paramInt2, BlockCipherPadding paramBlockCipherPadding)
  {
    if (paramInt2 % 8 != 0) {
      throw new IllegalArgumentException("MAC size must be multiple of 8");
    }
    this.aNy = new byte[paramBlockCipher.getBlockSize()];
    this.aNB = new MacCFBBlockCipher(paramBlockCipher, paramInt1);
    this.aNA = paramBlockCipherPadding;
    this.aNz = (paramInt2 / 8);
    this.buf = new byte[this.aNB.getBlockSize()];
    this.aEU = 0;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aNB.getBlockSize();
    if (this.aNA == null) {
      while (this.aEU < i)
      {
        this.buf[this.aEU] = 0;
        this.aEU += 1;
      }
    }
    this.aNA.ᵢ(this.buf, this.aEU);
    this.aNB.ˊ(this.buf, 0, this.aNy, 0);
    this.aNB.ᒽ(this.aNy);
    System.arraycopy(this.aNy, 0, paramArrayOfByte, paramInt, this.aNz);
    reset();
    return this.aNz;
  }
  
  public String iG()
  {
    return this.aNB.iG();
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
    this.aNB.reset();
  }
  
  public void update(byte paramByte)
  {
    if (this.aEU == this.buf.length)
    {
      this.aNB.ˊ(this.buf, 0, this.aNy, 0);
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
    int m = this.aNB.getBlockSize();
    int n = m - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > n)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, n);
      int k = this.aNB.ˊ(this.buf, 0, this.aNy, 0) + 0;
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
        k += this.aNB.ˊ(paramArrayOfByte, paramInt1, this.aNy, 0);
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
    this.aNB.ˊ(paramCipherParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.CFBBlockCipherMac
 * JD-Core Version:    0.7.0.1
 */