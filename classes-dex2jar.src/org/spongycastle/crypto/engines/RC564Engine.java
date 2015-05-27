package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.RC5Parameters;

public class RC564Engine
  implements BlockCipher
{
  private boolean aEW;
  private int aLb = 12;
  private long[] aLd = null;
  
  private long ʾ(long paramLong1, long paramLong2)
  {
    return paramLong1 >>> (int)(0x3F & paramLong2) | paramLong1 << (int)(64L - (0x3F & paramLong2));
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    long[] arrayOfLong = new long[(paramArrayOfByte.length + 7) / 8];
    int i = 0;
    while (i != paramArrayOfByte.length)
    {
      j = i / 8;
      arrayOfLong[j] += ((paramArrayOfByte[i] & 0xFF) << i % 8 * 8);
      i += 1;
    }
    this.aLd = new long[(this.aLb + 1) * 2];
    this.aLd[0] = -5196783011329398165L;
    i = 1;
    while (i < this.aLd.length)
    {
      this.aLd[i] = (this.aLd[(i - 1)] - 7046029254386353131L);
      i += 1;
    }
    if (arrayOfLong.length > this.aLd.length) {
      i = arrayOfLong.length * 3;
    } else {
      i = this.aLd.length * 3;
    }
    long l2 = 0L;
    long l1 = 0L;
    int m = 0;
    int k = 0;
    int j = 0;
    while (j < i)
    {
      paramArrayOfByte = this.aLd;
      l2 = ι(this.aLd[m] + l2 + l1, 3L);
      paramArrayOfByte[m] = l2;
      l1 = ι(arrayOfLong[k] + l2 + l1, l2 + l1);
      arrayOfLong[k] = l1;
      m = (m + 1) % this.aLd.length;
      k = (k + 1) % arrayOfLong.length;
      j += 1;
    }
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    long l2 = ﾞ(paramArrayOfByte1, paramInt1) + this.aLd[0];
    long l1 = ﾞ(paramArrayOfByte1, paramInt1 + 8) + this.aLd[1];
    paramInt1 = 1;
    while (paramInt1 <= this.aLb)
    {
      l2 = ι(l2 ^ l1, l1) + this.aLd[(paramInt1 * 2)];
      l1 = ι(l1 ^ l2, l2) + this.aLd[(paramInt1 * 2 + 1)];
      paramInt1 += 1;
    }
    ˏ(l2, paramArrayOfByte2, paramInt2);
    ˏ(l1, paramArrayOfByte2, paramInt2 + 8);
    return 16;
  }
  
  private void ˏ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i < 8)
    {
      paramArrayOfByte[(i + paramInt)] = ((byte)(int)paramLong);
      paramLong >>>= 8;
      i += 1;
    }
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    long l1 = ﾞ(paramArrayOfByte1, paramInt1);
    long l2 = ﾞ(paramArrayOfByte1, paramInt1 + 8);
    paramInt1 = this.aLb;
    while (paramInt1 >= 1)
    {
      l2 = ʾ(l2 - this.aLd[(paramInt1 * 2 + 1)], l1) ^ l1;
      l1 = ʾ(l1 - this.aLd[(paramInt1 * 2)], l2) ^ l2;
      paramInt1 -= 1;
    }
    ˏ(l1 - this.aLd[0], paramArrayOfByte2, paramInt2);
    ˏ(l2 - this.aLd[1], paramArrayOfByte2, paramInt2 + 8);
    return 16;
  }
  
  private long ι(long paramLong1, long paramLong2)
  {
    return paramLong1 << (int)(0x3F & paramLong2) | paramLong1 >>> (int)(64L - (0x3F & paramLong2));
  }
  
  private long ﾞ(byte[] paramArrayOfByte, int paramInt)
  {
    long l = 0L;
    int i = 7;
    while (i >= 0)
    {
      l = (l << 8) + (paramArrayOfByte[(i + paramInt)] & 0xFF);
      i -= 1;
    }
    return l;
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "RC5-64";
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
    if (!(paramCipherParameters instanceof RC5Parameters)) {
      throw new IllegalArgumentException("invalid parameter passed to RC564 init - " + paramCipherParameters.getClass().getName());
    }
    paramCipherParameters = (RC5Parameters)paramCipherParameters;
    this.aEW = paramBoolean;
    this.aLb = paramCipherParameters.getRounds();
    ˇ(paramCipherParameters.getKey());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RC564Engine
 * JD-Core Version:    0.7.0.1
 */