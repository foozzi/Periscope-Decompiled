package org.spongycastle.crypto.paddings;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class PaddedBufferedBlockCipher
  extends BufferedBlockCipher
{
  BlockCipherPadding aNA;
  
  public PaddedBufferedBlockCipher(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, new PKCS7Padding());
  }
  
  public PaddedBufferedBlockCipher(BlockCipher paramBlockCipher, BlockCipherPadding paramBlockCipherPadding)
  {
    this.aEX = paramBlockCipher;
    this.aNA = paramBlockCipherPadding;
    this.buf = new byte[paramBlockCipher.getBlockSize()];
    this.aEU = 0;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int j = this.aEX.getBlockSize();
    int i = 0;
    if (this.aEW)
    {
      if (this.aEU == j)
      {
        if (j * 2 + paramInt > paramArrayOfByte.length)
        {
          reset();
          throw new OutputLengthException("output buffer too short");
        }
        i = this.aEX.ˊ(this.buf, 0, paramArrayOfByte, paramInt);
        this.aEU = 0;
      }
      this.aNA.ᵢ(this.buf, this.aEU);
      paramInt = this.aEX.ˊ(this.buf, 0, paramArrayOfByte, paramInt + i);
      reset();
      return i + paramInt;
    }
    if (this.aEU == j)
    {
      i = this.aEX.ˊ(this.buf, 0, this.buf, 0);
      this.aEU = 0;
    }
    else
    {
      reset();
      throw new DataLengthException("last block incomplete in decryption");
    }
    try
    {
      i -= this.aNA.ﾟ(this.buf);
      System.arraycopy(this.buf, 0, paramArrayOfByte, paramInt, i);
      return i;
    }
    finally
    {
      reset();
    }
  }
  
  public int getOutputSize(int paramInt)
  {
    paramInt += this.aEU;
    int i = paramInt % this.buf.length;
    if (i == 0)
    {
      if (this.aEW) {
        return this.buf.length + paramInt;
      }
      return paramInt;
    }
    return paramInt - i + this.buf.length;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    reset();
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      this.aNA.init(paramCipherParameters.iN());
      this.aEX.ˊ(paramBoolean, paramCipherParameters.lh());
      return;
    }
    this.aNA.init(null);
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
    int j = 0;
    int i1 = this.buf.length - this.aEU;
    int k = paramInt1;
    int m = paramInt2;
    if (paramInt2 > i1)
    {
      System.arraycopy(paramArrayOfByte1, paramInt1, this.buf, this.aEU, i1);
      i = this.aEX.ˊ(this.buf, 0, paramArrayOfByte2, paramInt3) + 0;
      this.aEU = 0;
      paramInt2 -= i1;
      paramInt1 += i1;
      for (;;)
      {
        j = i;
        k = paramInt1;
        m = paramInt2;
        if (paramInt2 <= this.buf.length) {
          break;
        }
        i += this.aEX.ˊ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt3 + i);
        paramInt2 -= n;
        paramInt1 += n;
      }
    }
    System.arraycopy(paramArrayOfByte1, k, this.buf, this.aEU, m);
    this.aEU += m;
    return j;
  }
  
  public int ء(int paramInt)
  {
    paramInt += this.aEU;
    int i = paramInt % this.buf.length;
    if (i == 0) {
      return Math.max(0, paramInt - this.buf.length);
    }
    return paramInt - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher
 * JD-Core Version:    0.7.0.1
 */