package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Arrays;

public class SHA3Digest
  implements ExtendedDigest
{
  private static long[] aGO = ;
  private static int[] aGP = iY();
  private byte[] aGQ = new byte['È'];
  private byte[] aGR = new byte['À'];
  private int aGS;
  private int aGT;
  private int aGU;
  private boolean aGV;
  private int aGW;
  private byte[] aGX;
  private byte[] aGY;
  long[] aGZ = new long[5];
  long[] aHa = new long[25];
  long[] aHb = new long[5];
  
  public SHA3Digest()
  {
    init(0);
  }
  
  public SHA3Digest(int paramInt)
  {
    init(paramInt);
  }
  
  public SHA3Digest(SHA3Digest paramSHA3Digest)
  {
    System.arraycopy(paramSHA3Digest.aGQ, 0, this.aGQ, 0, paramSHA3Digest.aGQ.length);
    System.arraycopy(paramSHA3Digest.aGR, 0, this.aGR, 0, paramSHA3Digest.aGR.length);
    this.aGS = paramSHA3Digest.aGS;
    this.aGT = paramSHA3Digest.aGT;
    this.aGU = paramSHA3Digest.aGU;
    this.aGV = paramSHA3Digest.aGV;
    this.aGW = paramSHA3Digest.aGW;
    this.aGX = Arrays.І(paramSHA3Digest.aGX);
    this.aGY = Arrays.І(paramSHA3Digest.aGY);
  }
  
  private static long[] iX()
  {
    long[] arrayOfLong = new long[24];
    int i = 0;
    while (i < 24)
    {
      arrayOfLong[i] = 0L;
      int j = 0;
      while (j < 7)
      {
        if (ʴ(new byte[] { 1 })) {
          arrayOfLong[i] ^= 1L << (1 << j) - 1;
        }
        j += 1;
      }
      i += 1;
    }
    return arrayOfLong;
  }
  
  private static int[] iY()
  {
    int[] arrayOfInt = new int[25];
    arrayOfInt[0] = 0;
    int i = 1;
    int k = 0;
    int j = 0;
    for (;;)
    {
      int m = i;
      if (j >= 24) {
        break;
      }
      arrayOfInt[(m % 5 + k % 5 * 5)] = ((j + 1) * (j + 2) / 2 % 64);
      i = (m * 0 + k * 1) % 5;
      k = (m * 2 + k * 3) % 5;
      j += 1;
    }
    return arrayOfInt;
  }
  
  private void iZ()
  {
    ˎ(this.aGQ, this.aGR, this.aGS / 8);
    this.aGT = 0;
  }
  
  private void init(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
    case 288: 
      ﯨ(1024, 576);
      return;
    case 224: 
      ﯨ(1152, 448);
      return;
    case 256: 
      ﯨ(1088, 512);
      return;
    case 384: 
      ﯨ(832, 768);
      return;
    case 512: 
      ﯨ(576, 1024);
      return;
    }
    throw new IllegalArgumentException("bitLength must be one of 224, 256, 384, or 512.");
  }
  
  private void ja()
  {
    if (this.aGT + 1 == this.aGS)
    {
      arrayOfByte = this.aGR;
      i = this.aGT / 8;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] | 1 << this.aGT % 8));
      iZ();
      ᵥ(0, this.aGS / 8);
    }
    else
    {
      ᵥ((this.aGT + 7) / 8, this.aGS / 8 - (this.aGT + 7) / 8);
      arrayOfByte = this.aGR;
      i = this.aGT / 8;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] | 1 << this.aGT % 8));
    }
    byte[] arrayOfByte = this.aGR;
    int i = (this.aGS - 1) / 8;
    arrayOfByte[i] = ((byte)(arrayOfByte[i] | 1 << (this.aGS - 1) % 8));
    iZ();
    if (this.aGS == 1024)
    {
      ˎ(this.aGQ, this.aGR);
      this.aGW = 1024;
    }
    else
    {
      ˏ(this.aGQ, this.aGR, this.aGS / 64);
      this.aGW = this.aGS;
    }
    this.aGV = true;
  }
  
  private static boolean ʴ(byte[] paramArrayOfByte)
  {
    boolean bool;
    if ((paramArrayOfByte[0] & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    if ((paramArrayOfByte[0] & 0x80) != 0)
    {
      paramArrayOfByte[0] = ((byte)(paramArrayOfByte[0] << 1 ^ 0x71));
      return bool;
    }
    paramArrayOfByte[0] = ((byte)(paramArrayOfByte[0] << 1));
    return bool;
  }
  
  private void ˆ(byte[] paramArrayOfByte)
  {
    long[] arrayOfLong = new long[paramArrayOfByte.length / 8];
    ˊ(arrayOfLong, paramArrayOfByte);
    ˊ(arrayOfLong);
    ˊ(paramArrayOfByte, arrayOfLong);
  }
  
  private void ˊ(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    if (paramLong % 8L == 0L)
    {
      ˋ(paramArrayOfByte, paramInt, paramLong);
      return;
    }
    ˋ(paramArrayOfByte, paramInt, paramLong - paramLong % 8L);
    ˋ(new byte[] { (byte)(paramArrayOfByte[((int)(paramLong / 8L) + paramInt)] >> (int)(8L - paramLong % 8L)) }, paramInt, paramLong % 8L);
  }
  
  private void ˊ(byte[] paramArrayOfByte, long[] paramArrayOfLong)
  {
    int i = 0;
    while (i < 25)
    {
      int j = 0;
      while (j < 8)
      {
        paramArrayOfByte[(i * 8 + j)] = ((byte)(int)(paramArrayOfLong[i] >>> j * 8 & 0xFF));
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ˊ(long[] paramArrayOfLong)
  {
    int i = 0;
    while (i < 24)
    {
      ˋ(paramArrayOfLong);
      ˎ(paramArrayOfLong);
      ˏ(paramArrayOfLong);
      ᐝ(paramArrayOfLong);
      ˊ(paramArrayOfLong, i);
      i += 1;
    }
  }
  
  private void ˊ(long[] paramArrayOfLong, int paramInt)
  {
    paramArrayOfLong[0] ^= aGO[paramInt];
  }
  
  private void ˊ(long[] paramArrayOfLong, byte[] paramArrayOfByte)
  {
    int i = 0;
    while (i < 25)
    {
      paramArrayOfLong[i] = 0L;
      int j = 0;
      while (j < 8)
      {
        paramArrayOfLong[i] |= (paramArrayOfByte[(i * 8 + j)] & 0xFF) << j * 8;
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ˋ(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    if (this.aGT % 8 != 0) {
      throw new IllegalStateException("attempt to absorb with odd length queue.");
    }
    if (this.aGV) {
      throw new IllegalStateException("attempt to absorb while squeezing.");
    }
    long l1 = 0L;
    while (l1 < paramLong)
    {
      long l2;
      if ((this.aGT == 0) && (paramLong >= this.aGS) && (l1 <= paramLong - this.aGS))
      {
        long l3 = (paramLong - l1) / this.aGS;
        for (l2 = 0L; l2 < l3; l2 += 1L)
        {
          System.arraycopy(paramArrayOfByte, (int)(paramInt + l1 / 8L + this.aGX.length * l2), this.aGX, 0, this.aGX.length);
          ˎ(this.aGQ, this.aGX, this.aGX.length);
        }
        l1 += this.aGS * l3;
      }
      else
      {
        int j = (int)(paramLong - l1);
        int i = j;
        if (this.aGT + j > this.aGS) {
          i = this.aGS - this.aGT;
        }
        j = i % 8;
        i -= j;
        System.arraycopy(paramArrayOfByte, (int)(l1 / 8L) + paramInt, this.aGR, this.aGT / 8, i / 8);
        this.aGT += i;
        l2 = l1 + i;
        if (this.aGT == this.aGS) {
          iZ();
        }
        l1 = l2;
        if (j > 0)
        {
          this.aGR[(this.aGT / 8)] = ((byte)(paramArrayOfByte[((int)(l2 / 8L) + paramInt)] & (1 << j) - 1));
          this.aGT += j;
          l1 = l2 + j;
        }
      }
    }
  }
  
  private void ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[i]));
      i += 1;
    }
    ˆ(paramArrayOfByte1);
  }
  
  private void ˋ(long[] paramArrayOfLong)
  {
    int i = 0;
    int j;
    while (i < 5)
    {
      this.aGZ[i] = 0L;
      j = 0;
      while (j < 5)
      {
        long[] arrayOfLong = this.aGZ;
        arrayOfLong[i] ^= paramArrayOfLong[(j * 5 + i)];
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < 5)
    {
      long l1 = this.aGZ[((i + 1) % 5)];
      long l2 = this.aGZ[((i + 1) % 5)];
      long l3 = this.aGZ[((i + 4) % 5)];
      j = 0;
      while (j < 5)
      {
        int k = j * 5 + i;
        paramArrayOfLong[k] ^= l1 << 1 ^ l2 >>> 63 ^ l3;
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ˎ(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    if (!this.aGV) {
      ja();
    }
    if (paramLong % 8L != 0L) {
      throw new IllegalStateException("outputLength not a multiple of 8");
    }
    int i;
    for (long l = 0L; l < paramLong; l += i)
    {
      if (this.aGW == 0)
      {
        ˆ(this.aGQ);
        if (this.aGS == 1024)
        {
          ˎ(this.aGQ, this.aGR);
          this.aGW = 1024;
        }
        else
        {
          ˏ(this.aGQ, this.aGR, this.aGS / 64);
          this.aGW = this.aGS;
        }
      }
      int j = this.aGW;
      i = j;
      if (j > paramLong - l) {
        i = (int)(paramLong - l);
      }
      System.arraycopy(this.aGR, (this.aGS - this.aGW) / 8, paramArrayOfByte, (int)(l / 8L) + paramInt, i / 8);
      this.aGW -= i;
    }
  }
  
  private void ˎ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, 128);
  }
  
  private void ˎ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    ˋ(paramArrayOfByte1, paramArrayOfByte2, paramInt);
  }
  
  private void ˎ(long[] paramArrayOfLong)
  {
    int i = 0;
    while (i < 5)
    {
      int j = 0;
      while (j < 5)
      {
        int k = i + j * 5;
        long l;
        if (aGP[k] != 0) {
          l = paramArrayOfLong[k] << aGP[k] ^ paramArrayOfLong[k] >>> 64 - aGP[k];
        } else {
          l = paramArrayOfLong[k];
        }
        paramArrayOfLong[k] = l;
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ˏ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramInt * 8);
  }
  
  private void ˏ(long[] paramArrayOfLong)
  {
    System.arraycopy(paramArrayOfLong, 0, this.aHa, 0, this.aHa.length);
    int i = 0;
    while (i < 5)
    {
      int j = 0;
      while (j < 5)
      {
        paramArrayOfLong[((i * 2 + j * 3) % 5 * 5 + j)] = this.aHa[(j * 5 + i)];
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ᐝ(long[] paramArrayOfLong)
  {
    int i = 0;
    while (i < 5)
    {
      int j = 0;
      while (j < 5)
      {
        this.aHb[j] = (paramArrayOfLong[(i * 5 + j)] ^ (paramArrayOfLong[((j + 1) % 5 + i * 5)] ^ 0xFFFFFFFF) & paramArrayOfLong[((j + 2) % 5 + i * 5)]);
        j += 1;
      }
      j = 0;
      while (j < 5)
      {
        paramArrayOfLong[(i * 5 + j)] = this.aHb[j];
        j += 1;
      }
      i += 1;
    }
  }
  
  private void ᵥ(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    while (i != paramInt1 + paramInt2)
    {
      this.aGR[i] = 0;
      i += 1;
    }
  }
  
  private void ﯨ(int paramInt1, int paramInt2)
  {
    if (paramInt1 + paramInt2 != 1600) {
      throw new IllegalStateException("rate + capacity != 1600");
    }
    if ((paramInt1 <= 0) || (paramInt1 >= 1600) || (paramInt1 % 64 != 0)) {
      throw new IllegalStateException("invalid rate value");
    }
    this.aGS = paramInt1;
    this.aGU = 0;
    Arrays.fill(this.aGQ, (byte)0);
    Arrays.fill(this.aGR, (byte)0);
    this.aGT = 0;
    this.aGV = false;
    this.aGW = 0;
    this.aGU = (paramInt2 / 2);
    this.aGX = new byte[paramInt1 / 8];
    this.aGY = new byte[1];
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    ˎ(paramArrayOfByte, paramInt, this.aGU);
    reset();
    return iJ();
  }
  
  public String iG()
  {
    return "SHA3-" + this.aGU;
  }
  
  public int iJ()
  {
    return this.aGU / 8;
  }
  
  public int iM()
  {
    return this.aGS / 8;
  }
  
  public void reset()
  {
    init(this.aGU);
  }
  
  public void update(byte paramByte)
  {
    this.aGY[0] = paramByte;
    ˊ(this.aGY, 0, 8L);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ˊ(paramArrayOfByte, paramInt1, paramInt2 * 8L);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.SHA3Digest
 * JD-Core Version:    0.7.0.1
 */