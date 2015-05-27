package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class GF2Vector
  extends Vector
{
  private int[] biT;
  
  public GF2Vector(int paramInt)
  {
    if (paramInt < 0) {
      throw new ArithmeticException("Negative length.");
    }
    this.length = paramInt;
    this.biT = new int[paramInt + 31 >> 5];
  }
  
  public GF2Vector(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    if (paramInt2 > paramInt1) {
      throw new ArithmeticException("The hamming weight is greater than the length of vector.");
    }
    this.length = paramInt1;
    this.biT = new int[paramInt1 + 31 >> 5];
    int[] arrayOfInt = new int[paramInt1];
    int i = 0;
    while (i < paramInt1)
    {
      arrayOfInt[i] = i;
      i += 1;
    }
    i = paramInt1;
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      int j = RandUtils.ˎ(paramSecureRandom, i);
      ه(arrayOfInt[j]);
      i -= 1;
      arrayOfInt[j] = arrayOfInt[i];
      paramInt1 += 1;
    }
  }
  
  public GF2Vector(int paramInt, SecureRandom paramSecureRandom)
  {
    this.length = paramInt;
    int j = paramInt + 31 >> 5;
    this.biT = new int[j];
    int i = j - 1;
    while (i >= 0)
    {
      this.biT[i] = paramSecureRandom.nextInt();
      i -= 1;
    }
    paramInt &= 0x1F;
    if (paramInt != 0)
    {
      paramSecureRandom = this.biT;
      i = j - 1;
      paramSecureRandom[i] &= (1 << paramInt) - 1;
    }
  }
  
  public GF2Vector(int paramInt, int[] paramArrayOfInt)
  {
    if (paramInt < 0) {
      throw new ArithmeticException("negative length");
    }
    this.length = paramInt;
    int i = paramInt + 31 >> 5;
    if (paramArrayOfInt.length != i) {
      throw new ArithmeticException("length mismatch");
    }
    this.biT = IntUtils.י(paramArrayOfInt);
    paramInt &= 0x1F;
    if (paramInt != 0)
    {
      paramArrayOfInt = this.biT;
      i -= 1;
      paramArrayOfInt[i] &= (1 << paramInt) - 1;
    }
  }
  
  public GF2Vector(GF2Vector paramGF2Vector)
  {
    this.length = paramGF2Vector.length;
    this.biT = IntUtils.י(paramGF2Vector.biT);
  }
  
  protected GF2Vector(int[] paramArrayOfInt, int paramInt)
  {
    this.biT = paramArrayOfInt;
    this.length = paramInt;
  }
  
  public static GF2Vector ʼ(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramInt < 0) {
      throw new ArithmeticException("negative length");
    }
    if (paramArrayOfByte.length > paramInt + 7 >> 3) {
      throw new ArithmeticException("length mismatch");
    }
    return new GF2Vector(paramInt, LittleEndianConversions.Ι(paramArrayOfByte));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GF2Vector)) {
      return false;
    }
    paramObject = (GF2Vector)paramObject;
    return (this.length == paramObject.length) && (IntUtils.equals(this.biT, paramObject.biT));
  }
  
  public byte[] getEncoded()
  {
    int i = this.length;
    return LittleEndianConversions.ʼ(this.biT, i + 7 >> 3);
  }
  
  public int hashCode()
  {
    return this.length * 31 + this.biT.hashCode();
  }
  
  public boolean isZero()
  {
    int i = this.biT.length - 1;
    while (i >= 0)
    {
      if (this.biT[i] != 0) {
        return false;
      }
      i -= 1;
    }
    return true;
  }
  
  public int[] sq()
  {
    return this.biT;
  }
  
  public int sr()
  {
    int k = 0;
    int i = 0;
    while (i < this.biT.length)
    {
      int m = this.biT[i];
      int j = 0;
      while (j < 32)
      {
        int n = k;
        if ((m & 0x1) != 0) {
          n = k + 1;
        }
        m >>>= 1;
        j += 1;
        k = n;
      }
      i += 1;
    }
    return k;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < this.length)
    {
      if ((i != 0) && ((i & 0x1F) == 0)) {
        localStringBuffer.append(' ');
      }
      if ((this.biT[(i >> 5)] & 1 << (i & 0x1F)) == 0) {
        localStringBuffer.append('0');
      } else {
        localStringBuffer.append('1');
      }
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public GF2mVector ˊ(GF2mField paramGF2mField)
  {
    int i = paramGF2mField.qs();
    if (this.length % i != 0) {
      throw new ArithmeticException("conversion is impossible");
    }
    i = this.length / i;
    int[] arrayOfInt = new int[i];
    int j = 0;
    i -= 1;
    while (i >= 0)
    {
      int k = paramGF2mField.qs() - 1;
      while (k >= 0)
      {
        if ((this.biT[(j >>> 5)] >>> (j & 0x1F) & 0x1) == 1) {
          arrayOfInt[i] ^= 1 << k;
        }
        j += 1;
        k -= 1;
      }
      i -= 1;
    }
    return new GF2mVector(paramGF2mField, arrayOfInt);
  }
  
  public Vector ˋ(Permutation paramPermutation)
  {
    paramPermutation = paramPermutation.sD();
    if (this.length != paramPermutation.length) {
      throw new ArithmeticException("length mismatch");
    }
    GF2Vector localGF2Vector = new GF2Vector(this.length);
    int i = 0;
    while (i < paramPermutation.length)
    {
      if ((this.biT[(paramPermutation[i] >> 5)] & 1 << (paramPermutation[i] & 0x1F)) != 0)
      {
        int[] arrayOfInt = localGF2Vector.biT;
        int j = i >> 5;
        arrayOfInt[j] |= 1 << (i & 0x1F);
      }
      i += 1;
    }
    return localGF2Vector;
  }
  
  public Vector ˏ(Vector paramVector)
  {
    if (!(paramVector instanceof GF2Vector)) {
      throw new ArithmeticException("vector is not defined over GF(2)");
    }
    GF2Vector localGF2Vector = (GF2Vector)paramVector;
    if (this.length != localGF2Vector.length) {
      throw new ArithmeticException("length mismatch");
    }
    paramVector = IntUtils.י(((GF2Vector)paramVector).biT);
    int i = paramVector.length - 1;
    while (i >= 0)
    {
      paramVector[i] ^= this.biT[i];
      i -= 1;
    }
    return new GF2Vector(this.length, paramVector);
  }
  
  public void ه(int paramInt)
  {
    if (paramInt >= this.length) {
      throw new IndexOutOfBoundsException();
    }
    int[] arrayOfInt = this.biT;
    int i = paramInt >> 5;
    arrayOfInt[i] |= 1 << (paramInt & 0x1F);
  }
  
  public GF2Vector ە(int paramInt)
  {
    if (paramInt > this.length) {
      throw new ArithmeticException("invalid length");
    }
    if (paramInt == this.length) {
      return new GF2Vector(this);
    }
    GF2Vector localGF2Vector = new GF2Vector(paramInt);
    int i = this.length - paramInt >> 5;
    int k = this.length - paramInt & 0x1F;
    int m = paramInt + 31 >> 5;
    paramInt = i;
    if (k != 0)
    {
      i = 0;
      while (i < m - 1)
      {
        arrayOfInt1 = localGF2Vector.biT;
        arrayOfInt2 = this.biT;
        int j = paramInt + 1;
        arrayOfInt1[i] = (arrayOfInt2[paramInt] >>> k | this.biT[j] << 32 - k);
        i += 1;
        paramInt = j;
      }
      int[] arrayOfInt1 = localGF2Vector.biT;
      int[] arrayOfInt2 = this.biT;
      i = paramInt + 1;
      arrayOfInt1[(m - 1)] = (arrayOfInt2[paramInt] >>> k);
      if (i < this.biT.length)
      {
        arrayOfInt1 = localGF2Vector.biT;
        paramInt = m - 1;
        arrayOfInt1[paramInt] |= this.biT[i] << 32 - k;
        return localGF2Vector;
      }
    }
    else
    {
      System.arraycopy(this.biT, i, localGF2Vector.biT, 0, m);
    }
    return localGF2Vector;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2Vector
 * JD-Core Version:    0.7.0.1
 */