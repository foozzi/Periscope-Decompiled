package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.BlockCipherPadding;

public class CBCBlockCipherMac
  implements Mac
{
  private int aEU;
  private BlockCipher aEX;
  private BlockCipherPadding aNA;
  private byte[] aNy;
  private int aNz;
  private byte[] buf;
  
  public CBCBlockCipherMac(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, paramBlockCipher.getBlockSize() * 8 / 2, null);
  }
  
  public CBCBlockCipherMac(BlockCipher paramBlockCipher, int paramInt)
  {
    this(paramBlockCipher, paramInt, null);
  }
  
  public CBCBlockCipherMac(BlockCipher paramBlockCipher, int paramInt, BlockCipherPadding paramBlockCipherPadding)
  {
    if (paramInt % 8 != 0) {
      throw new IllegalArgumentException("MAC size must be multiple of 8");
    }
    this.aEX = new CBCBlockCipher(paramBlockCipher);
    this.aNA = paramBlockCipherPadding;
    this.aNz = (paramInt / 8);
    this.aNy = new byte[paramBlockCipher.getBlockSize()];
    this.buf = new byte[paramBlockCipher.getBlockSize()];
    this.aEU = 0;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aEX.getBlockSize();
    if (this.aNA == null) {
      while (this.aEU < i)
      {
        this.buf[this.aEU] = 0;
        this.aEU += 1;
      }
    }
    if (this.aEU == i)
    {
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
    }
    this.aNA.ᵢ(this.buf, this.aEU);
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
    int k = this.aEX.getBlockSize();
    int m = k - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > m)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, m);
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
      paramInt2 -= m;
      paramInt1 += m;
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= k) {
          break;
        }
        this.aEX.ˊ(paramArrayOfByte, paramInt1, this.aNy, 0);
        paramInt2 -= k;
        paramInt1 += k;
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
 * Qualified Name:     org.spongycastle.crypto.macs.CBCBlockCipherMac
 * JD-Core Version:    0.7.0.1
 */