package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class RC6Engine
  implements BlockCipher
{
  private boolean aEW;
  private int[] aLc = null;
  
  private int rotateLeft(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> -paramInt2;
  }
  
  private int rotateRight(int paramInt1, int paramInt2)
  {
    return paramInt1 >>> paramInt2 | paramInt1 << -paramInt2;
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte.length + 3) / 4 == 0) {}
    int[] arrayOfInt = new int[(paramArrayOfByte.length + 4 - 1) / 4];
    int i = paramArrayOfByte.length - 1;
    while (i >= 0)
    {
      arrayOfInt[(i / 4)] = ((arrayOfInt[(i / 4)] << 8) + (paramArrayOfByte[i] & 0xFF));
      i -= 1;
    }
    this.aLc = new int[44];
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
    int m = ᐧ(paramArrayOfByte1, paramInt1);
    int i = ᐧ(paramArrayOfByte1, paramInt1 + 4);
    int k = ᐧ(paramArrayOfByte1, paramInt1 + 8);
    paramInt1 = ᐧ(paramArrayOfByte1, paramInt1 + 12);
    i += this.aLc[0];
    paramInt1 += this.aLc[1];
    int j = 1;
    while (j <= 20)
    {
      int i1 = rotateLeft(i * (i * 2 + 1), 5);
      int i2 = rotateLeft(paramInt1 * (paramInt1 * 2 + 1), 5);
      m = rotateLeft(m ^ i1, i2);
      n = this.aLc[(j * 2)];
      k = rotateLeft(k ^ i2, i1);
      i1 = this.aLc[(j * 2 + 1)];
      k += i1;
      n = m + n;
      j += 1;
      m = i;
      i = k;
      k = paramInt1;
      paramInt1 = n;
    }
    j = this.aLc[42];
    int n = this.aLc[43];
    ᐝ(m + j, paramArrayOfByte2, paramInt2);
    ᐝ(i, paramArrayOfByte2, paramInt2 + 4);
    ᐝ(k + n, paramArrayOfByte2, paramInt2 + 8);
    ᐝ(paramInt1, paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int m = ᐧ(paramArrayOfByte1, paramInt1);
    int j = ᐧ(paramArrayOfByte1, paramInt1 + 4);
    int i = ᐧ(paramArrayOfByte1, paramInt1 + 8);
    int k = ᐧ(paramArrayOfByte1, paramInt1 + 12);
    i -= this.aLc[43];
    paramInt1 = m - this.aLc[42];
    m = 20;
    int n;
    int i1;
    for (;;)
    {
      n = k;
      i1 = j;
      if (m < 1) {
        break;
      }
      k = i;
      j = paramInt1;
      paramInt1 = rotateLeft(j * (j * 2 + 1), 5);
      int i2 = rotateLeft(k * (k * 2 + 1), 5);
      i = rotateRight(i1 - this.aLc[(m * 2 + 1)], paramInt1) ^ i2;
      paramInt1 = rotateRight(n - this.aLc[(m * 2)], i2) ^ paramInt1;
      m -= 1;
    }
    j = this.aLc[1];
    k = this.aLc[0];
    ᐝ(paramInt1, paramArrayOfByte2, paramInt2);
    ᐝ(i1 - k, paramArrayOfByte2, paramInt2 + 4);
    ᐝ(i, paramArrayOfByte2, paramInt2 + 8);
    ᐝ(n - j, paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private void ᐝ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int j = 0;
    int i = paramInt1;
    paramInt1 = j;
    while (paramInt1 < 4)
    {
      paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)i);
      i >>>= 8;
      paramInt1 += 1;
    }
  }
  
  private int ᐧ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = 0;
    int i = 3;
    while (i >= 0)
    {
      j = (j << 8) + (paramArrayOfByte[(i + paramInt)] & 0xFF);
      i -= 1;
    }
    return j;
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "RC6";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = getBlockSize();
    if (this.aLc == null) {
      throw new IllegalStateException("RC6 engine not initialised");
    }
    if (paramInt1 + i > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + i > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aEW) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + paramCipherParameters.getClass().getName());
    }
    paramCipherParameters = (KeyParameter)paramCipherParameters;
    this.aEW = paramBoolean;
    ˇ(paramCipherParameters.getKey());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC6Engine
 * JD-Core Version:    0.7.0.1
 */