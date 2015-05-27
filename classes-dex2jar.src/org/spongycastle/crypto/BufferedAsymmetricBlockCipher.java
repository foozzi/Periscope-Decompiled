package org.spongycastle.crypto;

public class BufferedAsymmetricBlockCipher
{
  protected int aEU;
  private final AsymmetricBlockCipher aEV;
  protected byte[] buf;
  
  public BufferedAsymmetricBlockCipher(AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aEV = paramAsymmetricBlockCipher;
  }
  
  public byte[] doFinal()
  {
    byte[] arrayOfByte = this.aEV.ˑ(this.buf, 0, this.aEU);
    reset();
    return arrayOfByte;
  }
  
  public int iB()
  {
    return this.aEV.iB();
  }
  
  public int iC()
  {
    return this.aEV.iC();
  }
  
  public void reset()
  {
    if (this.buf != null)
    {
      int i = 0;
      while (i < this.buf.length)
      {
        this.buf[i] = 0;
        i += 1;
      }
    }
    this.aEU = 0;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    reset();
    this.aEV.ˊ(paramBoolean, paramCipherParameters);
    int j = this.aEV.iB();
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    this.buf = new byte[j + i];
    this.aEU = 0;
  }
  
  public void ـ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return;
    }
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    if (this.aEU + paramInt2 > this.buf.length) {
      throw new DataLengthException("attempt to process message too long for cipher");
    }
    System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, paramInt2);
    this.aEU += paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.BufferedAsymmetricBlockCipher
 * JD-Core Version:    0.7.0.1
 */