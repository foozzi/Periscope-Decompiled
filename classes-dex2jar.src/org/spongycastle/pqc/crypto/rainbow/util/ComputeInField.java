package org.spongycastle.pqc.crypto.rainbow.util;

import java.lang.reflect.Array;

public class ComputeInField
{
  short[] bij;
  private short[][] bim;
  
  private void rW()
  {
    int i = this.bim.length - 1;
    while (i > 0)
    {
      int j = i - 1;
      while (j >= 0)
      {
        short s1 = this.bim[j][i];
        short s2 = GF2Field.ˈ(this.bim[i][i]);
        if (s2 == 0) {
          throw new RuntimeException("The matrix is not invertible");
        }
        int k = i;
        while (k < this.bim.length * 2)
        {
          short s3 = GF2Field.ˏ(s1, GF2Field.ˏ(this.bim[i][k], s2));
          this.bim[j][k] = GF2Field.ˎ(this.bim[j][k], s3);
          k += 1;
        }
        j -= 1;
      }
      i -= 1;
    }
  }
  
  private void rX()
  {
    short s1 = GF2Field.ˈ(this.bim[(this.bim.length - 1)][(this.bim.length - 1)]);
    if (s1 == 0) {
      throw new RuntimeException("The equation system is not solvable");
    }
    this.bij[(this.bim.length - 1)] = GF2Field.ˏ(this.bim[(this.bim.length - 1)][this.bim.length], s1);
    int i = this.bim.length - 2;
    while (i >= 0)
    {
      s1 = this.bim[i][this.bim.length];
      int j = this.bim.length - 1;
      while (j > i)
      {
        s1 = GF2Field.ˎ(s1, GF2Field.ˏ(this.bim[i][j], this.bij[j]));
        j -= 1;
      }
      short s2 = GF2Field.ˈ(this.bim[i][i]);
      if (s2 == 0) {
        throw new RuntimeException("Not solvable equation system");
      }
      this.bij[i] = GF2Field.ˏ(s1, s2);
      i -= 1;
    }
  }
  
  private void ї(boolean paramBoolean)
  {
    int j;
    if (paramBoolean) {
      j = this.bim.length * 2;
    } else {
      j = this.bim.length + 1;
    }
    int i = 0;
    while (i < this.bim.length - 1)
    {
      int k = i + 1;
      while (k < this.bim.length)
      {
        short s1 = this.bim[k][i];
        short s2 = GF2Field.ˈ(this.bim[i][i]);
        if (s2 == 0) {
          throw new RuntimeException("Matrix not invertible! We have to choose another one!");
        }
        int m = i;
        while (m < j)
        {
          short s3 = GF2Field.ˏ(s1, GF2Field.ˏ(this.bim[i][m], s2));
          this.bim[k][m] = GF2Field.ˎ(this.bim[k][m], s3);
          m += 1;
        }
        k += 1;
      }
      i += 1;
    }
  }
  
  public short[] ˊ(short paramShort, short[] paramArrayOfShort)
  {
    short[] arrayOfShort = new short[paramArrayOfShort.length];
    int i = 0;
    while (i < arrayOfShort.length)
    {
      arrayOfShort[i] = GF2Field.ˏ(paramShort, paramArrayOfShort[i]);
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[] ˊ(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    if (paramArrayOfShort1.length != paramArrayOfShort2.length) {
      throw new RuntimeException("Multiplication is not possible!");
    }
    short[] arrayOfShort = new short[paramArrayOfShort1.length];
    int i = 0;
    while (i < arrayOfShort.length)
    {
      arrayOfShort[i] = GF2Field.ˎ(paramArrayOfShort1[i], paramArrayOfShort2[i]);
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[] ˊ(short[][] paramArrayOfShort, short[] paramArrayOfShort1)
  {
    for (;;)
    {
      try
      {
        if (paramArrayOfShort.length != paramArrayOfShort1.length) {
          throw new RuntimeException("The equation system is not solvable");
        }
        i = paramArrayOfShort.length;
        int j = paramArrayOfShort.length;
        this.bim = ((short[][])Array.newInstance(Short.TYPE, new int[] { i, j + 1 }));
        this.bij = new short[paramArrayOfShort.length];
        i = 0;
        if (i >= paramArrayOfShort.length) {
          break label166;
        }
        j = 0;
        if (j < paramArrayOfShort[0].length)
        {
          this.bim[i][j] = paramArrayOfShort[i][j];
          j += 1;
          continue;
          if (i < paramArrayOfShort1.length)
          {
            this.bim[i][paramArrayOfShort1.length] = GF2Field.ˎ(paramArrayOfShort1[i], this.bim[i][paramArrayOfShort1.length]);
            i += 1;
            continue;
          }
          ї(false);
          rX();
          paramArrayOfShort = this.bij;
          return paramArrayOfShort;
        }
      }
      catch (RuntimeException paramArrayOfShort)
      {
        return null;
      }
      i += 1;
      continue;
      label166:
      int i = 0;
    }
  }
  
  public short[][] ˊ(short paramShort, short[][] paramArrayOfShort)
  {
    int i = paramArrayOfShort.length;
    int j = paramArrayOfShort[0].length;
    short[][] arrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfShort.length)
    {
      j = 0;
      while (j < paramArrayOfShort[0].length)
      {
        arrayOfShort[i][j] = GF2Field.ˏ(paramShort, paramArrayOfShort[i][j]);
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[][] ˊ(short[][] paramArrayOfShort)
  {
    int i;
    for (;;)
    {
      try
      {
        i = paramArrayOfShort.length;
        j = paramArrayOfShort.length;
        this.bim = ((short[][])Array.newInstance(Short.TYPE, new int[] { i, j * 2 }));
        if (paramArrayOfShort.length == paramArrayOfShort[0].length) {
          break;
        }
        throw new RuntimeException("The matrix is not invertible. Please choose another one!");
      }
      catch (RuntimeException paramArrayOfShort)
      {
        int j;
        return null;
      }
      if (i < paramArrayOfShort.length)
      {
        j = 0;
        if (j < paramArrayOfShort.length)
        {
          this.bim[i][j] = paramArrayOfShort[i][j];
          j += 1;
        }
        else
        {
          j = paramArrayOfShort.length;
          if (j < paramArrayOfShort.length * 2)
          {
            this.bim[i][j] = 0;
            j += 1;
          }
          else
          {
            this.bim[i][(this.bim.length + i)] = 1;
            i += 1;
          }
        }
      }
      else
      {
        ї(true);
        i = 0;
      }
    }
    for (;;)
    {
      if (i < this.bim.length)
      {
        short s = GF2Field.ˈ(this.bim[i][i]);
        j = i;
        while (j < this.bim.length * 2)
        {
          this.bim[i][j] = GF2Field.ˏ(this.bim[i][j], s);
          j += 1;
        }
      }
      rW();
      i = this.bim.length;
      j = this.bim.length;
      paramArrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j });
      i = 0;
      while (i < this.bim.length)
      {
        j = this.bim.length;
        while (j < this.bim.length * 2)
        {
          paramArrayOfShort[i][(j - this.bim.length)] = this.bim[i][j];
          j += 1;
        }
        i += 1;
      }
      return paramArrayOfShort;
      i = 0;
      break;
      i += 1;
    }
  }
  
  public short[][] ˊ(short[][] paramArrayOfShort1, short[][] paramArrayOfShort2)
  {
    if ((paramArrayOfShort1.length != paramArrayOfShort2.length) || (paramArrayOfShort1[0].length != paramArrayOfShort2[0].length)) {
      throw new RuntimeException("Addition is not possible!");
    }
    int i = paramArrayOfShort1.length;
    int j = paramArrayOfShort1.length;
    short[][] arrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfShort1.length)
    {
      j = 0;
      while (j < paramArrayOfShort2.length)
      {
        arrayOfShort[i][j] = GF2Field.ˎ(paramArrayOfShort1[i][j], paramArrayOfShort2[i][j]);
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[] ˋ(short[][] paramArrayOfShort, short[] paramArrayOfShort1)
  {
    if (paramArrayOfShort[0].length != paramArrayOfShort1.length) {
      throw new RuntimeException("Multiplication is not possible!");
    }
    short[] arrayOfShort = new short[paramArrayOfShort.length];
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      int j = 0;
      while (j < paramArrayOfShort1.length)
      {
        short s = GF2Field.ˏ(paramArrayOfShort[i][j], paramArrayOfShort1[j]);
        arrayOfShort[i] = GF2Field.ˎ(arrayOfShort[i], s);
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[][] ˋ(short[] paramArrayOfShort1, short[] paramArrayOfShort2)
  {
    if (paramArrayOfShort1.length != paramArrayOfShort2.length) {
      throw new RuntimeException("Multiplication is not possible!");
    }
    int i = paramArrayOfShort1.length;
    int j = paramArrayOfShort2.length;
    short[][] arrayOfShort = (short[][])Array.newInstance(Short.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfShort1.length)
    {
      j = 0;
      while (j < paramArrayOfShort2.length)
      {
        arrayOfShort[i][j] = GF2Field.ˏ(paramArrayOfShort1[i], paramArrayOfShort2[j]);
        j += 1;
      }
      i += 1;
    }
    return arrayOfShort;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.util.ComputeInField
 * JD-Core Version:    0.7.0.1
 */