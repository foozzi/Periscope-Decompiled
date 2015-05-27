package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class IDEAEngine
  implements BlockCipher
{
  private int[] aJE = null;
  
  private int ˀ(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
    {
      paramInt1 = 65537 - paramInt2;
    }
    else if (paramInt2 == 0)
    {
      paramInt1 = 65537 - paramInt1;
    }
    else
    {
      paramInt1 *= paramInt2;
      paramInt2 = paramInt1 & 0xFFFF;
      int i = paramInt1 >>> 16;
      if (paramInt2 < i) {
        paramInt1 = 1;
      } else {
        paramInt1 = 0;
      }
      paramInt1 = paramInt2 - i + paramInt1;
    }
    return 0xFFFF & paramInt1;
  }
  
  private int[] ˋ(boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (paramBoolean) {
      return ᐠ(paramArrayOfByte);
    }
    return ˎ(ᐠ(paramArrayOfByte));
  }
  
  private void ˎ(int[] paramArrayOfInt, byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int n = 0;
    int m = ᐧ(paramArrayOfByte1, paramInt1);
    int k = ᐧ(paramArrayOfByte1, paramInt1 + 2);
    int j = ᐧ(paramArrayOfByte1, paramInt1 + 4);
    int i = ᐧ(paramArrayOfByte1, paramInt1 + 6);
    paramInt1 = 0;
    while (paramInt1 < 8)
    {
      int i1 = n + 1;
      m = ˀ(m, paramArrayOfInt[n]);
      n = i1 + 1;
      i1 = k + paramArrayOfInt[i1] & 0xFFFF;
      k = n + 1;
      j = j + paramArrayOfInt[n] & 0xFFFF;
      n = k + 1;
      i = ˀ(i, paramArrayOfInt[k]);
      k = n + 1;
      int i2 = ˀ(j ^ m, paramArrayOfInt[n]);
      n = k + 1;
      k = ˀ((i1 ^ i) + i2 & 0xFFFF, paramArrayOfInt[k]);
      i2 = i2 + k & 0xFFFF;
      m ^= k;
      i ^= i2;
      k ^= j;
      j = i2 ^ i1;
      paramInt1 += 1;
    }
    paramInt1 = n + 1;
    ᐝ(ˀ(m, paramArrayOfInt[n]), paramArrayOfByte2, paramInt2);
    m = paramInt1 + 1;
    ᐝ(paramArrayOfInt[paramInt1] + j, paramArrayOfByte2, paramInt2 + 2);
    ᐝ(paramArrayOfInt[m] + k, paramArrayOfByte2, paramInt2 + 4);
    ᐝ(ˀ(i, paramArrayOfInt[(m + 1)]), paramArrayOfByte2, paramInt2 + 6);
  }
  
  private int[] ˎ(int[] paramArrayOfInt)
  {
    int[] arrayOfInt = new int[52];
    int i = ⅽ(paramArrayOfInt[0]);
    int j = ײַ(paramArrayOfInt[1]);
    int m = ײַ(paramArrayOfInt[2]);
    int k = 0 + 1 + 1 + 1 + 1;
    int n = ⅽ(paramArrayOfInt[3]);
    int i1 = 52 - 1;
    arrayOfInt[i1] = n;
    n = i1 - 1;
    arrayOfInt[n] = m;
    m = n - 1;
    arrayOfInt[m] = j;
    j = m - 1;
    arrayOfInt[j] = i;
    i = 1;
    while (i < 8)
    {
      n = k + 1;
      m = paramArrayOfInt[k];
      k = n + 1;
      n = paramArrayOfInt[n];
      j -= 1;
      arrayOfInt[j] = n;
      j -= 1;
      arrayOfInt[j] = m;
      n = k + 1;
      m = ⅽ(paramArrayOfInt[k]);
      k = n + 1;
      n = ײַ(paramArrayOfInt[n]);
      int i2 = k + 1;
      i1 = ײַ(paramArrayOfInt[k]);
      k = i2 + 1;
      i2 = ⅽ(paramArrayOfInt[i2]);
      j -= 1;
      arrayOfInt[j] = i2;
      j -= 1;
      arrayOfInt[j] = n;
      j -= 1;
      arrayOfInt[j] = i1;
      j -= 1;
      arrayOfInt[j] = m;
      i += 1;
    }
    m = k + 1;
    k = paramArrayOfInt[k];
    i = m + 1;
    m = paramArrayOfInt[m];
    j -= 1;
    arrayOfInt[j] = m;
    j -= 1;
    arrayOfInt[j] = k;
    k = i + 1;
    i = ⅽ(paramArrayOfInt[i]);
    n = k + 1;
    k = ײַ(paramArrayOfInt[k]);
    m = ײַ(paramArrayOfInt[n]);
    n = ⅽ(paramArrayOfInt[(n + 1)]);
    j -= 1;
    arrayOfInt[j] = n;
    j -= 1;
    arrayOfInt[j] = m;
    j -= 1;
    arrayOfInt[j] = k;
    arrayOfInt[(j - 1)] = i;
    return arrayOfInt;
  }
  
  private void ᐝ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
  
  private int[] ᐠ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt = new int[52];
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length < 16)
    {
      arrayOfByte = new byte[16];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, arrayOfByte.length - paramArrayOfByte.length, paramArrayOfByte.length);
    }
    int i = 0;
    while (i < 8)
    {
      arrayOfInt[i] = ᐧ(arrayOfByte, i * 2);
      i += 1;
    }
    i = 8;
    while (i < 52)
    {
      if ((i & 0x7) < 6) {
        arrayOfInt[i] = (((arrayOfInt[(i - 7)] & 0x7F) << 9 | arrayOfInt[(i - 6)] >> 7) & 0xFFFF);
      } else if ((i & 0x7) == 6) {
        arrayOfInt[i] = (((arrayOfInt[(i - 7)] & 0x7F) << 9 | arrayOfInt[(i - 14)] >> 7) & 0xFFFF);
      } else {
        arrayOfInt[i] = (((arrayOfInt[(i - 15)] & 0x7F) << 9 | arrayOfInt[(i - 14)] >> 7) & 0xFFFF);
      }
      i += 1;
    }
    return arrayOfInt;
  }
  
  private int ᐧ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] << 8 & 0xFF00) + (paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
  
  private int ⅽ(int paramInt)
  {
    if (paramInt < 2) {
      return paramInt;
    }
    int j = 1;
    int m = 65537 / paramInt;
    int i = 65537 % paramInt;
    int k = paramInt;
    for (paramInt = m; i != 1; paramInt = j * m + paramInt & 0xFFFF)
    {
      m = k / i;
      k %= i;
      j = paramInt * m + j & 0xFFFF;
      if (k == 1) {
        return j;
      }
      m = i / k;
      i %= k;
    }
    return 1 - paramInt & 0xFFFF;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "IDEA";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aJE == null) {
      throw new IllegalStateException("IDEA engine not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    ˎ(this.aJE, paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    return 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aJE = ˋ(paramBoolean, ((KeyParameter)paramCipherParameters).getKey());
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to IDEA init - " + paramCipherParameters.getClass().getName());
  }
  
  int ײַ(int paramInt)
  {
    return 0 - paramInt & 0xFFFF;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.IDEAEngine
 * JD-Core Version:    0.7.0.1
 */