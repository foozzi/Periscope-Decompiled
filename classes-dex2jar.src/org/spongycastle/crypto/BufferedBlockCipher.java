package org.spongycastle.crypto;

public class BufferedBlockCipher
{
  public int aEU;
  public boolean aEW;
  public BlockCipher aEX;
  protected boolean aEY;
  protected boolean aEZ;
  public byte[] buf;
  
  public BufferedBlockCipher() {}
  
  public BufferedBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aEX = paramBlockCipher;
    this.buf = new byte[paramBlockCipher.getBlockSize()];
    this.aEU = 0;
    String str = paramBlockCipher.iG();
    int i = str.indexOf('/') + 1;
    boolean bool;
    if ((i > 0) && (str.startsWith("PGP", i))) {
      bool = true;
    } else {
      bool = false;
    }
    this.aEZ = bool;
    if ((this.aEZ) || ((paramBlockCipher instanceof StreamCipher)))
    {
      this.aEY = true;
      return;
    }
    if ((i > 0) && (str.startsWith("OpenPGP", i))) {
      bool = true;
    } else {
      bool = false;
    }
    this.aEY = bool;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    try
    {
      if (this.aEU + paramInt > paramArrayOfByte.length) {
        throw new OutputLengthException("output buffer too short for doFinal()");
      }
      if (this.aEU != 0)
      {
        if (!this.aEY) {
          throw new DataLengthException("data not block size aligned");
        }
        this.aEX.ˊ(this.buf, 0, this.buf, 0);
        i = this.aEU;
        this.aEU = 0;
        System.arraycopy(this.buf, 0, paramArrayOfByte, paramInt, i);
      }
      return i;
    }
    finally
    {
      reset();
    }
  }
  
  public int getBlockSize()
  {
    return this.aEX.getBlockSize();
  }
  
  public int getOutputSize(int paramInt)
  {
    return this.aEU + paramInt;
  }
  
  public BlockCipher iH()
  {
    return this.aEX;
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
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    reset();
    this.aEX.ˊ(paramBoolean, paramCipherParameters);
  }
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int n = getBlockSize();
    int i = ء(paramInt2);
    if ((i > 0) && (paramInt3 + i > paramArrayOfByte2.length)) {
      throw new OutputLengthException("output buffer too short");
    }
    i = 0;
    int i1 = this.buf.length - this.aEU;
    int k = paramInt1;
    int m = paramInt2;
    if (paramInt2 > i1)
    {
      System.arraycopy(paramArrayOfByte1, paramInt1, this.buf, this.aEU, i1);
      int j = this.aEX.ˊ(this.buf, 0, paramArrayOfByte2, paramInt3) + 0;
      this.aEU = 0;
      paramInt2 -= i1;
      paramInt1 += i1;
      for (;;)
      {
        i = j;
        k = paramInt1;
        m = paramInt2;
        if (paramInt2 <= this.buf.length) {
          break;
        }
        j += this.aEX.ˊ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt3 + j);
        paramInt2 -= n;
        paramInt1 += n;
      }
    }
    System.arraycopy(paramArrayOfByte1, k, this.buf, this.aEU, m);
    this.aEU += m;
    paramInt1 = i;
    if (this.aEU == this.buf.length)
    {
      paramInt1 = i + this.aEX.ˊ(this.buf, 0, paramArrayOfByte2, paramInt3 + i);
      this.aEU = 0;
    }
    return paramInt1;
  }
  
  public int ء(int paramInt)
  {
    int i = paramInt + this.aEU;
    if (this.aEZ) {
      paramInt = i % this.buf.length - (this.aEX.getBlockSize() + 2);
    } else {
      paramInt = i % this.buf.length;
    }
    return i - paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.BufferedBlockCipher
 * JD-Core Version:    0.7.0.1
 */