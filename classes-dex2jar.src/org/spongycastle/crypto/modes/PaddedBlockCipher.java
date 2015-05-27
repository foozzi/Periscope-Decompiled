package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;

public class PaddedBlockCipher
  extends BufferedBlockCipher
{
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int k = this.aEX.getBlockSize();
    int j = 0;
    if (this.aEW)
    {
      if (this.aEU == k)
      {
        if (k * 2 + paramInt > paramArrayOfByte.length) {
          throw new DataLengthException("output buffer too short");
        }
        j = this.aEX.ˊ(this.buf, 0, paramArrayOfByte, paramInt);
        this.aEU = 0;
      }
      int i = (byte)(k - this.aEU);
      while (this.aEU < k)
      {
        this.buf[this.aEU] = i;
        this.aEU += 1;
      }
      paramInt = j + this.aEX.ˊ(this.buf, 0, paramArrayOfByte, paramInt + j);
    }
    else
    {
      if (this.aEU == k)
      {
        j = this.aEX.ˊ(this.buf, 0, this.buf, 0);
        this.aEU = 0;
      }
      else
      {
        throw new DataLengthException("last block incomplete in decryption");
      }
      int m = this.buf[(k - 1)] & 0xFF;
      if ((m < 0) || (m > k)) {
        throw new InvalidCipherTextException("pad block corrupted");
      }
      j -= m;
      System.arraycopy(this.buf, 0, paramArrayOfByte, paramInt, j);
      paramInt = j;
    }
    reset();
    return paramInt;
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
  
  public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int n = getBlockSize();
    int i = ء(paramInt2);
    if ((i > 0) && (paramInt3 + i > paramArrayOfByte2.length)) {
      throw new DataLengthException("output buffer too short");
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
      return paramInt - this.buf.length;
    }
    return paramInt - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.PaddedBlockCipher
 * JD-Core Version:    0.7.0.1
 */