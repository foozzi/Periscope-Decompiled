package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.RC5Parameters;

public class RC532Engine
  implements BlockCipher
{
  private boolean aEW;
  private int aLb = 12;
  private int[] aLc = null;
  
  private int rotateLeft(int paramInt1, int paramInt2)
  {
    return paramInt1 << (paramInt2 & 0x1F) | paramInt1 >>> 32 - (paramInt2 & 0x1F);
  }
  
  private int rotateRight(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> (paramInt2 & 0x1F) | paramInt1 << 32 - (paramInt2 & 0x1F);
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[(paramArrayOfByte.length + 3) / 4];
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      j = i / 4;
      arrayOfInt[j] += ((paramArrayOfByte[i] & 0xFF) << i % 4 * 8);
      i += 1;
    }
    this.aLc = new int[(this.aLb + 1) * 2];
    this.aLc[0] = -1209970333;
    i = 1;
    while (i < this.aLc.length)
    {
      this.aLc[i] = (this.aLc[(i - 1)] - 1640531527);
      i += 1;
    }
    if (arrayOfInt.length > this.aLc.length) {
      i = arrayOfInt.length * 3;
    } else {
      i = this.aLc.length * 3;
    }
    int i1 = 0;
    int n = 0;
    int m = 0;
    int k = 0;
    int j = 0;
    while (j < i)
    {
      paramArrayOfByte = this.aLc;
      i1 = rotateLeft(this.aLc[m] + i1 + n, 3);
      paramArrayOfByte[m] = i1;
      n = rotateLeft(arrayOfInt[k] + i1 + n, i1 + n);
      arrayOfInt[k] = n;
      m = (m + 1) % this.aLc.length;
      k = (k + 1) % arrayOfInt.length;
      j += 1;
    }
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int j = ᐧ(paramArrayOfByte1, paramInt1) + this.aLc[0];
    int i = ᐧ(paramArrayOfByte1, paramInt1 + 4) + this.aLc[1];
    paramInt1 = 1;
    while (paramInt1 <= this.aLb)
    {
      j = rotateLeft(j ^ i, i) + this.aLc[(paramInt1 * 2)];
      i = rotateLeft(i ^ j, j) + this.aLc[(paramInt1 * 2 + 1)];
      paramInt1 += 1;
    }
    ᐝ(j, paramArrayOfByte2, paramInt2);
    ᐝ(i, paramArrayOfByte2, paramInt2 + 4);
    return 8;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = ᐧ(paramArrayOfByte1, paramInt1);
    int j = ᐧ(paramArrayOfByte1, paramInt1 + 4);
    paramInt1 = this.aLb;
    while (paramInt1 >= 1)
    {
      j = rotateRight(j - this.aLc[(paramInt1 * 2 + 1)], i) ^ i;
      i = rotateRight(i - this.aLc[(paramInt1 * 2)], j) ^ j;
      paramInt1 -= 1;
    }
    ᐝ(i - this.aLc[0], paramArrayOfByte2, paramInt2);
    ᐝ(j - this.aLc[1], paramArrayOfByte2, paramInt2 + 4);
    return 8;
  }
  
  private void ᐝ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >> 16));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >> 24));
  }
  
  private int ᐧ(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "RC5-32";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aEW) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof RC5Parameters))
    {
      paramCipherParameters = (RC5Parameters)paramCipherParameters;
      this.aLb = paramCipherParameters.getRounds();
      ˇ(paramCipherParameters.getKey());
    }
    else if ((paramCipherParameters instanceof KeyParameter))
    {
      ˇ(((KeyParameter)paramCipherParameters).getKey());
    }
    else
    {
      throw new IllegalArgumentException("invalid parameter passed to RC532 init - " + paramCipherParameters.getClass().getName());
    }
    this.aEW = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC532Engine
 * JD-Core Version:    0.7.0.1
 */