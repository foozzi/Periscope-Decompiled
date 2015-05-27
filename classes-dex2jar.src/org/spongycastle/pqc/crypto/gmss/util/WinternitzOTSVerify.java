package org.spongycastle.pqc.crypto.gmss.util;

import org.spongycastle.crypto.Digest;

public class WinternitzOTSVerify
{
  private Digest beF;
  private int w;
  
  public WinternitzOTSVerify(Digest paramDigest, int paramInt)
  {
    this.w = paramInt;
    this.beF = paramDigest;
  }
  
  public int rf()
  {
    int i = this.beF.iJ();
    int j = ((i << 3) + (this.w - 1)) / this.w;
    int k = ĩ((j << this.w) + 1);
    return i * (j + (this.w + k - 1) / this.w);
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
  
  public byte[] ᵢ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i3 = this.beF.iJ();
    byte[] arrayOfByte1 = new byte[i3];
    this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    byte[] arrayOfByte3 = new byte[this.beF.iJ()];
    this.beF.doFinal(arrayOfByte3, 0);
    int i5 = ((i3 << 3) + (this.w - 1)) / this.w;
    int i4 = ĩ((i5 << this.w) + 1);
    int i = i3 * (i5 + (this.w + i4 - 1) / this.w);
    if (i != paramArrayOfByte2.length) {
      return null;
    }
    byte[] arrayOfByte2 = new byte[i];
    i = 0;
    int n = 0;
    int m = 0;
    int j = 0;
    int i1 = 0;
    int k = 0;
    int i6;
    int i2;
    if (8 % this.w == 0)
    {
      i6 = 8 / this.w;
      i2 = (1 << this.w) - 1;
      paramArrayOfByte1 = new byte[i3];
      j = 0;
      i = k;
      while (j < arrayOfByte3.length)
      {
        k = 0;
        while (k < i6)
        {
          i1 = arrayOfByte3[j] & i2;
          n = m + i1;
          System.arraycopy(paramArrayOfByte2, i * i3, paramArrayOfByte1, 0, i3);
          m = i1;
          while (m < i2)
          {
            this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
            paramArrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte1, 0);
            m += 1;
          }
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, i * i3, i3);
          arrayOfByte3[j] = ((byte)(arrayOfByte3[j] >>> this.w));
          i += 1;
          k += 1;
          m = n;
        }
        j += 1;
      }
      k = (i5 << this.w) - m;
      j = 0;
      while (j < i4)
      {
        m = k & i2;
        System.arraycopy(paramArrayOfByte2, i * i3, paramArrayOfByte1, 0, i3);
        while (m < i2)
        {
          this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
          paramArrayOfByte1 = new byte[this.beF.iJ()];
          this.beF.doFinal(paramArrayOfByte1, 0);
          m += 1;
        }
        System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, i * i3, i3);
        k >>>= this.w;
        i += 1;
        j += this.w;
      }
    }
    else
    {
      long l;
      if (this.w < 8)
      {
        int i7 = i3 / this.w;
        i6 = (1 << this.w) - 1;
        paramArrayOfByte1 = new byte[i3];
        k = 0;
        m = 0;
        while (m < i7)
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
            i2 = (int)(i6 & l);
            i1 = i + i2;
            System.arraycopy(paramArrayOfByte2, j * i3, paramArrayOfByte1, 0, i3);
            i = i2;
            while (i < i6)
            {
              this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
              paramArrayOfByte1 = new byte[this.beF.iJ()];
              this.beF.doFinal(paramArrayOfByte1, 0);
              i += 1;
            }
            System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, j * i3, i3);
            l >>>= this.w;
            j += 1;
            n += 1;
            i = i1;
          }
          m += 1;
        }
        i1 = i3 % this.w;
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
          n = (int)(i6 & l);
          m = i + n;
          System.arraycopy(paramArrayOfByte2, j * i3, paramArrayOfByte1, 0, i3);
          i = n;
          while (i < i6)
          {
            this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
            paramArrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte1, 0);
            i += 1;
          }
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, j * i3, i3);
          l >>>= this.w;
          j += 1;
          k += this.w;
          i = m;
        }
        k = (i5 << this.w) - i;
        i = 0;
        while (i < i4)
        {
          m = k & i6;
          System.arraycopy(paramArrayOfByte2, j * i3, paramArrayOfByte1, 0, i3);
          while (m < i6)
          {
            this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
            paramArrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte1, 0);
            m += 1;
          }
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, j * i3, i3);
          k >>>= this.w;
          j += 1;
          i += this.w;
        }
      }
      else if (this.w < 57)
      {
        i6 = this.w;
        i2 = (1 << this.w) - 1;
        paramArrayOfByte1 = new byte[i3];
        k = 0;
        i = i1;
        j = n;
        for (;;)
        {
          n = k;
          if (n > (i3 << 3) - i6) {
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
          System.arraycopy(paramArrayOfByte2, i * i3, paramArrayOfByte1, 0, i3);
          while (l < i2)
          {
            this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
            paramArrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte1, 0);
            l += 1L;
          }
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, i * i3, i3);
          i += 1;
          k = i1;
        }
        i1 = n >>> 3;
        m = j;
        k = i;
        arrayOfByte1 = paramArrayOfByte1;
        if (i1 < i3)
        {
          l = 0L;
          m = 0;
          k = i1;
          while (k < i3)
          {
            l ^= (arrayOfByte3[k] & 0xFF) << (m << 3);
            m += 1;
            k += 1;
          }
          l = l >>> n % 8 & i2;
          m = (int)(j + l);
          System.arraycopy(paramArrayOfByte2, i * i3, paramArrayOfByte1, 0, i3);
          while (l < i2)
          {
            this.beF.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
            paramArrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(paramArrayOfByte1, 0);
            l += 1L;
          }
          System.arraycopy(paramArrayOfByte1, 0, arrayOfByte2, i * i3, i3);
          k = i + 1;
          arrayOfByte1 = paramArrayOfByte1;
        }
        j = (i5 << this.w) - m;
        i = 0;
        while (i < i4)
        {
          l = j & i2;
          System.arraycopy(paramArrayOfByte2, k * i3, arrayOfByte1, 0, i3);
          while (l < i2)
          {
            this.beF.update(arrayOfByte1, 0, arrayOfByte1.length);
            arrayOfByte1 = new byte[this.beF.iJ()];
            this.beF.doFinal(arrayOfByte1, 0);
            l += 1L;
          }
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, k * i3, i3);
          j >>>= this.w;
          k += 1;
          i += this.w;
        }
      }
    }
    paramArrayOfByte1 = new byte[i3];
    this.beF.update(arrayOfByte2, 0, arrayOfByte2.length);
    paramArrayOfByte1 = new byte[this.beF.iJ()];
    this.beF.doFinal(paramArrayOfByte1, 0);
    return paramArrayOfByte1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.util.WinternitzOTSVerify
 * JD-Core Version:    0.7.0.1
 */