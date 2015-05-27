package org.spongycastle.pqc.crypto.gmss;

import java.lang.reflect.Array;
import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.util.encoders.Hex;

public class GMSSRootSig
{
  private byte[] aDx;
  private int aQu;
  private int aaN;
  private int avM;
  private Digest beF;
  private int beG;
  private int beH;
  private int beM;
  private byte[] beN;
  private GMSSRandom beu;
  private byte[] bfA;
  private int bfB;
  private int bfC;
  private int bfD;
  private long bfE;
  private long bfF;
  private int bfG;
  private byte[] bfz;
  private int height;
  private int w;
  
  public GMSSRootSig(Digest paramDigest, int paramInt1, int paramInt2)
  {
    this.beF = paramDigest;
    this.beu = new GMSSRandom(this.beF);
    this.beG = this.beF.iJ();
    this.w = paramInt1;
    this.height = paramInt2;
    this.avM = ((1 << paramInt1) - 1);
    this.bfB = ((int)Math.ceil((this.beG << 3) / paramInt1));
  }
  
  public byte[][] qL()
  {
    int i = this.beG;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { 5, i });
    arrayOfByte[0] = this.beN;
    arrayOfByte[1] = this.aDx;
    arrayOfByte[2] = this.bfz;
    arrayOfByte[3] = this.bfA;
    arrayOfByte[4] = rc();
    return arrayOfByte;
  }
  
  public int[] qM()
  {
    return new int[] { this.aaN, this.bfC, this.bfD, this.aQu, this.beM, this.beH, this.height, this.w, this.bfG };
  }
  
  public byte[] rc()
  {
    return new byte[] { (byte)(int)(this.bfE & 0xFF), (byte)(int)(this.bfE >> 8 & 0xFF), (byte)(int)(this.bfE >> 16 & 0xFF), (byte)(int)(this.bfE >> 24 & 0xFF), (byte)(int)(this.bfE >> 32 & 0xFF), (byte)(int)(this.bfE >> 40 & 0xFF), (byte)(int)(this.bfE >> 48 & 0xFF), (byte)(int)(this.bfE >> 56 & 0xFF), (byte)(int)(this.bfF & 0xFF), (byte)(int)(this.bfF >> 8 & 0xFF), (byte)(int)(this.bfF >> 16 & 0xFF), (byte)(int)(this.bfF >> 24 & 0xFF), (byte)(int)(this.bfF >> 32 & 0xFF), (byte)(int)(this.bfF >> 40 & 0xFF), (byte)(int)(this.bfF >> 48 & 0xFF), (byte)(int)(this.bfF >> 56 & 0xFF) };
  }
  
  public String toString()
  {
    String str = "" + this.bfF + "  ";
    Object localObject = new int[9];
    int[] arrayOfInt = qM();
    int i = this.beG;
    localObject = (byte[][])Array.newInstance(Byte.TYPE, new int[] { 5, i });
    localObject = qL();
    i = 0;
    while (i < 9)
    {
      str = str + arrayOfInt[i] + " ";
      i += 1;
    }
    i = 0;
    while (i < 5)
    {
      str = str + new String(Hex.ײ(localObject[i])) + " ";
      i += 1;
    }
    return str;
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
  
  public void ᵎ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.bfz = new byte[this.beG];
    this.beF.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
    this.bfz = new byte[this.beF.iJ()];
    this.beF.doFinal(this.bfz, 0);
    paramArrayOfByte2 = new byte[this.beG];
    System.arraycopy(this.bfz, 0, paramArrayOfByte2, 0, this.beG);
    int i = 0;
    int m = 0;
    int j = 0;
    int k = 0;
    int i1 = ĩ((this.bfB << this.w) + 1);
    if (8 % this.w == 0)
    {
      m = 8 / this.w;
      j = 0;
      i = k;
      while (j < this.beG)
      {
        k = 0;
        while (k < m)
        {
          i += (paramArrayOfByte2[j] & this.avM);
          paramArrayOfByte2[j] = ((byte)(paramArrayOfByte2[j] >>> this.w));
          k += 1;
        }
        j += 1;
      }
      this.bfG = ((this.bfB << this.w) - i);
      k = this.bfG;
      j = 0;
      while (j < i1)
      {
        i += (this.avM & k);
        k >>>= this.w;
        j += this.w;
      }
    }
    else
    {
      int n;
      long l;
      if (this.w < 8)
      {
        j = 0;
        n = this.beG / this.w;
        k = 0;
        while (k < n)
        {
          l = 0L;
          m = 0;
          while (m < this.w)
          {
            l ^= (paramArrayOfByte2[j] & 0xFF) << (m << 3);
            j += 1;
            m += 1;
          }
          m = 0;
          while (m < 8)
          {
            i += (int)(this.avM & l);
            l >>>= this.w;
            m += 1;
          }
          k += 1;
        }
        m = this.beG % this.w;
        l = 0L;
        k = 0;
        while (k < m)
        {
          l ^= (paramArrayOfByte2[j] & 0xFF) << (k << 3);
          j += 1;
          k += 1;
        }
        j = 0;
        while (j < m << 3)
        {
          i += (int)(this.avM & l);
          l >>>= this.w;
          j += this.w;
        }
        this.bfG = ((this.bfB << this.w) - i);
        k = this.bfG;
        j = 0;
        while (j < i1)
        {
          i += (this.avM & k);
          k >>>= this.w;
          j += this.w;
        }
      }
      else
      {
        i = j;
        if (this.w < 57)
        {
          j = 0;
          i = m;
          for (;;)
          {
            m = j;
            if (m > (this.beG << 3) - this.w) {
              break;
            }
            n = m + this.w;
            l = 0L;
            k = 0;
            j = m >>> 3;
            while (j < n + 7 >>> 3)
            {
              l ^= (paramArrayOfByte2[j] & 0xFF) << (k << 3);
              k += 1;
              j += 1;
            }
            i = (int)(i + (this.avM & l >>> m % 8));
            j = n;
          }
          n = m >>> 3;
          j = i;
          if (n < this.beG)
          {
            l = 0L;
            k = 0;
            j = n;
            while (j < this.beG)
            {
              l ^= (paramArrayOfByte2[j] & 0xFF) << (k << 3);
              k += 1;
              j += 1;
            }
            j = (int)(i + (this.avM & l >>> m % 8));
          }
          this.bfG = ((this.bfB << this.w) - j);
          m = this.bfG;
          k = 0;
          for (;;)
          {
            i = j;
            if (k >= i1) {
              break;
            }
            j += (this.avM & m);
            m >>>= this.w;
            k += this.w;
          }
        }
      }
    }
    this.beH = (this.bfB + (int)Math.ceil(i1 / this.w));
    this.beM = ((int)Math.ceil((this.beH + i) / (1 << this.height)));
    this.bfA = new byte[this.beH * this.beG];
    this.aaN = 0;
    this.bfC = 0;
    this.bfD = 0;
    this.bfE = 0L;
    this.aQu = 0;
    this.beN = new byte[this.beG];
    this.aDx = new byte[this.beG];
    System.arraycopy(paramArrayOfByte1, 0, this.aDx, 0, this.beG);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSRootSig
 * JD-Core Version:    0.7.0.1
 */