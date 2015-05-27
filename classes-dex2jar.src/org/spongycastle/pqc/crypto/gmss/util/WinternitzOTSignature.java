package org.spongycastle.pqc.crypto.gmss.util;

import java.lang.reflect.Array;
import org.spongycastle.crypto.Digest;

public class WinternitzOTSignature
{
  private Digest beF;
  private int beG;
  private int beH;
  private GMSSRandom beu;
  private int bfB;
  private byte[][] bfS;
  private int bfT;
  private int w;
  
  public WinternitzOTSignature(byte[] paramArrayOfByte, Digest paramDigest, int paramInt)
  {
    this.w = paramInt;
    this.beF = paramDigest;
    this.beu = new GMSSRandom(this.beF);
    this.beG = this.beF.iJ();
    this.bfB = ((int)Math.ceil((this.beG << 3) / paramInt));
    this.bfT = ĩ((this.bfB << paramInt) + 1);
    this.beH = (this.bfB + (int)Math.ceil(this.bfT / paramInt));
    paramInt = this.beH;
    int i = this.beG;
    this.bfS = ((byte[][])Array.newInstance(Byte.TYPE, new int[] { paramInt, i }));
    paramDigest = new byte[this.beG];
    System.arraycopy(paramArrayOfByte, 0, paramDigest, 0, paramDigest.length);
    paramInt = 0;
    while (paramInt < this.beH)
    {
      this.bfS[paramInt] = this.beu.ᵞ(paramDigest);
      paramInt += 1;
    }
  }
  
  public byte[] qW()
  {
    byte[] arrayOfByte2 = new byte[this.beH * this.beG];
    byte[] arrayOfByte1 = new byte[this.beG];
    int k = this.w;
    int i = 0;
    while (i < this.beH)
    {
      this.beF.update(this.bfS[i], 0, this.bfS[i].length);
      arrayOfByte1 = new byte[this.beF.iJ()];
      this.beF.doFinal(arrayOfByte1, 0);
      int j = 2;
      while (j < 1 << k)
      {
        this.beF.update(arrayOfByte1, 0, arrayOfByte1.length);
        arrayOfByte1 = new byte[this.beF.iJ()];
        this.beF.doFinal(arrayOfByte1, 0);
        j += 1;
      }
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, this.beG * i, this.beG);
      i += 1;
    }
    this.beF.update(arrayOfByte2, 0, arrayOfByte2.length);
    arrayOfByte1 = new byte[this.beF.iJ()];
    this.beF.doFinal(arrayOfByte1, 0);
    return arrayOfByte1;
  }
  
  public int ĩ(int paramInt)
  {
    int i = 1;
    int j = 2;
    while (j < paramInt)
    {
      j <<= 1;
      i += 1;
    }
    return i;
  }
  
  public byte[] וּ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte2 = new byte[this.beH * this.beG];
    byte[] arrayOfByte1 = new byte[this.beG];
    int i = 0;
    int m = 0;
    int k = 0;
    int j = 0;
    int n = 0;
    int i1 = 0;
    this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    byte[] arrayOfByte3 = new byte[this.beF.iJ()];
    this.beF.doFinal(arrayOfByte3, 0);
    int i3;
    int i2;
    if (8 % this.w == 0)
    {
      i3 = 8 / this.w;
      i2 = (1 << this.w) - 1;
      paramArrayOfByte = new byte[this.beG];
      j = 0;
      m = i1;
      i = k;
      while (j < arrayOfByte3.length)
      {
        k = 0;
        while (k < i3)
        {
          i1 = arrayOfByte3[j] & i2;
          n = m + i1;
          System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
          m = i1;
          while (m > 0)
          {
            this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
            paramArrayOfByte = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte, 0);
            m -= 1;
          }
          System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
          arrayOfByte3[j] = ((byte)(arrayOfByte3[j] >>> this.w));
          i += 1;
          k += 1;
          m = n;
        }
        j += 1;
      }
      k = (this.bfB << this.w) - m;
      j = 0;
      while (j < this.bfT)
      {
        m = k & i2;
        System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
        while (m > 0)
        {
          this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
          paramArrayOfByte = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte, 0);
          m -= 1;
        }
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
        k >>>= this.w;
        i += 1;
        j += this.w;
      }
      return arrayOfByte2;
    }
    int i4;
    long l;
    if (this.w < 8)
    {
      i4 = this.beG / this.w;
      i3 = (1 << this.w) - 1;
      paramArrayOfByte = new byte[this.beG];
      k = 0;
      m = 0;
      while (m < i4)
      {
        l = 0L;
        n = 0;
        while (n < this.w)
        {
          l ^= (arrayOfByte3[k] & 0xFF) << (n << 3);
          k += 1;
          n += 1;
        }
        n = 0;
        while (n < 8)
        {
          i2 = (int)(i3 & l);
          i1 = j + i2;
          System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
          j = i2;
          while (j > 0)
          {
            this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
            paramArrayOfByte = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte, 0);
            j -= 1;
          }
          System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
          l >>>= this.w;
          i += 1;
          n += 1;
          j = i1;
        }
        m += 1;
      }
      i1 = this.beG % this.w;
      l = 0L;
      m = 0;
      while (m < i1)
      {
        l ^= (arrayOfByte3[k] & 0xFF) << (m << 3);
        k += 1;
        m += 1;
      }
      k = 0;
      while (k < i1 << 3)
      {
        n = (int)(i3 & l);
        m = j + n;
        System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
        j = n;
        while (j > 0)
        {
          this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
          paramArrayOfByte = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte, 0);
          j -= 1;
        }
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
        l >>>= this.w;
        i += 1;
        k += this.w;
        j = m;
      }
      k = (this.bfB << this.w) - j;
      j = 0;
      while (j < this.bfT)
      {
        m = k & i3;
        System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
        while (m > 0)
        {
          this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
          paramArrayOfByte = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte, 0);
          m -= 1;
        }
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
        k >>>= this.w;
        i += 1;
        j += this.w;
      }
      return arrayOfByte2;
    }
    if (this.w < 57)
    {
      i3 = this.beG;
      i4 = this.w;
      i2 = (1 << this.w) - 1;
      paramArrayOfByte = new byte[this.beG];
      k = 0;
      j = n;
      i = m;
      for (;;)
      {
        n = k;
        if (n > (i3 << 3) - i4) {
          break;
        }
        i1 = n + this.w;
        l = 0L;
        m = 0;
        k = n >>> 3;
        while (k < i1 + 7 >>> 3)
        {
          l ^= (arrayOfByte3[k] & 0xFF) << (m << 3);
          m += 1;
          k += 1;
        }
        l = l >>> n % 8 & i2;
        j = (int)(j + l);
        System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
        while (l > 0L)
        {
          this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
          paramArrayOfByte = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte, 0);
          l -= 1L;
        }
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
        i += 1;
        k = i1;
      }
      i1 = n >>> 3;
      k = i;
      m = j;
      arrayOfByte1 = paramArrayOfByte;
      if (i1 < this.beG)
      {
        l = 0L;
        m = 0;
        k = i1;
        while (k < this.beG)
        {
          l ^= (arrayOfByte3[k] & 0xFF) << (m << 3);
          m += 1;
          k += 1;
        }
        l = l >>> n % 8 & i2;
        m = (int)(j + l);
        System.arraycopy(this.bfS[i], 0, paramArrayOfByte, 0, this.beG);
        while (l > 0L)
        {
          this.beF.update(paramArrayOfByte, 0, paramArrayOfByte.length);
          paramArrayOfByte = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte, 0);
          l -= 1L;
        }
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte2, this.beG * i, this.beG);
        k = i + 1;
        arrayOfByte1 = paramArrayOfByte;
      }
      j = (this.bfB << this.w) - m;
      i = 0;
      while (i < this.bfT)
      {
        l = j & i2;
        System.arraycopy(this.bfS[k], 0, arrayOfByte1, 0, this.beG);
        while (l > 0L)
        {
          this.beF.update(arrayOfByte1, 0, arrayOfByte1.length);
          arrayOfByte1 = new byte[this.beF.iJ()];
          this.beF.doFinal(arrayOfByte1, 0);
          l -= 1L;
        }
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, this.beG * k, this.beG);
        j >>>= this.w;
        k += 1;
        i += this.w;
      }
    }
    return arrayOfByte2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSignature
 * JD-Core Version:    0.7.0.1
 */