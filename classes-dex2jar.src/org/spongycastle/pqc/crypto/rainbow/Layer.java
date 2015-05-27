package org.spongycastle.pqc.crypto.rainbow;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import org.spongycastle.pqc.crypto.rainbow.util.GF2Field;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.util.Arrays;

public class Layer
{
  private int bhK;
  private int bhL;
  private int bhM;
  private short[][][] bhN;
  private short[][][] bhO;
  private short[][] bhP;
  private short[] bhQ;
  
  public Layer(byte paramByte1, byte paramByte2, short[][][] paramArrayOfShort1, short[][][] paramArrayOfShort2, short[][] paramArrayOfShort, short[] paramArrayOfShort3)
  {
    this.bhK = (paramByte1 & 0xFF);
    this.bhL = (paramByte2 & 0xFF);
    this.bhM = (this.bhL - this.bhK);
    this.bhN = paramArrayOfShort1;
    this.bhO = paramArrayOfShort2;
    this.bhP = paramArrayOfShort;
    this.bhQ = paramArrayOfShort3;
  }
  
  public Layer(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    this.bhK = paramInt1;
    this.bhL = paramInt2;
    this.bhM = (paramInt2 - paramInt1);
    paramInt1 = this.bhM;
    paramInt2 = this.bhM;
    int i = this.bhK;
    this.bhN = ((short[][][])Array.newInstance(Short.TYPE, new int[] { paramInt1, paramInt2, i }));
    paramInt1 = this.bhM;
    paramInt2 = this.bhK;
    i = this.bhK;
    this.bhO = ((short[][][])Array.newInstance(Short.TYPE, new int[] { paramInt1, paramInt2, i }));
    paramInt1 = this.bhM;
    paramInt2 = this.bhL;
    this.bhP = ((short[][])Array.newInstance(Short.TYPE, new int[] { paramInt1, paramInt2 }));
    this.bhQ = new short[this.bhM];
    int j = this.bhM;
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      paramInt2 = 0;
      while (paramInt2 < this.bhM)
      {
        i = 0;
        while (i < this.bhK)
        {
          this.bhN[paramInt1][paramInt2][i] = ((short)(paramSecureRandom.nextInt() & 0xFF));
          i += 1;
        }
        paramInt2 += 1;
      }
      paramInt1 += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      paramInt2 = 0;
      while (paramInt2 < this.bhK)
      {
        i = 0;
        while (i < this.bhK)
        {
          this.bhO[paramInt1][paramInt2][i] = ((short)(paramSecureRandom.nextInt() & 0xFF));
          i += 1;
        }
        paramInt2 += 1;
      }
      paramInt1 += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      paramInt2 = 0;
      while (paramInt2 < this.bhL)
      {
        this.bhP[paramInt1][paramInt2] = ((short)(paramSecureRandom.nextInt() & 0xFF));
        paramInt2 += 1;
      }
      paramInt1 += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      this.bhQ[paramInt1] = ((short)(paramSecureRandom.nextInt() & 0xFF));
      paramInt1 += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof Layer))) {
      return false;
    }
    paramObject = (Layer)paramObject;
    return (this.bhK == paramObject.rI()) && (this.bhL == paramObject.rJ()) && (this.bhM == paramObject.rK()) && (RainbowUtil.ˊ(this.bhN, paramObject.rL())) && (RainbowUtil.ˊ(this.bhO, paramObject.rM())) && (RainbowUtil.ˋ(this.bhP, paramObject.rN())) && (RainbowUtil.equals(this.bhQ, paramObject.rO()));
  }
  
  public int hashCode()
  {
    return (((((this.bhK * 37 + this.bhL) * 37 + this.bhM) * 37 + Arrays.ˎ(this.bhN)) * 37 + Arrays.ˎ(this.bhO)) * 37 + Arrays.ˎ(this.bhP)) * 37 + Arrays.hashCode(this.bhQ);
  }
  
  public int rI()
  {
    return this.bhK;
  }
  
  public int rJ()
  {
    return this.bhL;
  }
  
  public int rK()
  {
    return this.bhM;
  }
  
  public short[][][] rL()
  {
    return this.bhN;
  }
  
  public short[][][] rM()
  {
    return this.bhO;
  }
  
  public short[][] rN()
  {
    return this.bhP;
  }
  
  public short[] rO()
  {
    return this.bhQ;
  }
  
  public short[][] ˋ(short[] paramArrayOfShort)
  {
    int i = this.bhM;
    int j = this.bhM;
    short[][] arrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j + 1 });
    short[] arrayOfShort1 = new short[this.bhM];
    i = 0;
    int k;
    short s;
    while (i < this.bhM)
    {
      j = 0;
      while (j < this.bhK)
      {
        k = 0;
        while (k < this.bhK)
        {
          s = GF2Field.ˏ(GF2Field.ˏ(this.bhO[i][j][k], paramArrayOfShort[j]), paramArrayOfShort[k]);
          arrayOfShort1[i] = GF2Field.ˎ(arrayOfShort1[i], s);
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < this.bhM)
    {
      j = 0;
      while (j < this.bhM)
      {
        k = 0;
        while (k < this.bhK)
        {
          s = GF2Field.ˏ(this.bhN[i][j][k], paramArrayOfShort[k]);
          arrayOfShort[i][j] = GF2Field.ˎ(arrayOfShort[i][j], s);
          k += 1;
        }
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < this.bhM)
    {
      j = 0;
      while (j < this.bhK)
      {
        s = GF2Field.ˏ(this.bhP[i][j], paramArrayOfShort[j]);
        arrayOfShort1[i] = GF2Field.ˎ(arrayOfShort1[i], s);
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < this.bhM)
    {
      j = this.bhK;
      while (j < this.bhL)
      {
        arrayOfShort[i][(j - this.bhK)] = GF2Field.ˎ(this.bhP[i][j], arrayOfShort[i][(j - this.bhK)]);
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < this.bhM)
    {
      arrayOfShort1[i] = GF2Field.ˎ(arrayOfShort1[i], this.bhQ[i]);
      i += 1;
    }
    i = 0;
    while (i < this.bhM)
    {
      arrayOfShort[i][this.bhM] = arrayOfShort1[i];
      i += 1;
    }
    return arrayOfShort;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.Layer
 * JD-Core Version:    0.7.0.1
 */