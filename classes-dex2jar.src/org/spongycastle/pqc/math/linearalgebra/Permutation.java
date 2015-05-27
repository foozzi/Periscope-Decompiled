package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class Permutation
{
  private int[] bjq;
  
  public Permutation(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("invalid length");
    }
    this.bjq = new int[paramInt];
    paramInt -= 1;
    while (paramInt >= 0)
    {
      this.bjq[paramInt] = paramInt;
      paramInt -= 1;
    }
  }
  
  public Permutation(int paramInt, SecureRandom paramSecureRandom)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("invalid length");
    }
    this.bjq = new int[paramInt];
    int[] arrayOfInt = new int[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfInt[i] = i;
      i += 1;
    }
    int j = paramInt;
    i = 0;
    while (i < paramInt)
    {
      int k = RandUtils.ˎ(paramSecureRandom, j);
      j -= 1;
      this.bjq[i] = arrayOfInt[k];
      arrayOfInt[k] = arrayOfInt[j];
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Permutation)) {
      return false;
    }
    paramObject = (Permutation)paramObject;
    return IntUtils.equals(this.bjq, paramObject.bjq);
  }
  
  public byte[] getEncoded()
  {
    int j = this.bjq.length;
    int k = IntegerFunctions.Ꭻ(j - 1);
    byte[] arrayOfByte = new byte[j * k + 4];
    LittleEndianConversions.ι(j, arrayOfByte, 0);
    int i = 0;
    while (i < j)
    {
      LittleEndianConversions.ᐝ(this.bjq[i], arrayOfByte, i * k + 4, k);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public int hashCode()
  {
    return this.bjq.hashCode();
  }
  
  public int[] sD()
  {
    return IntUtils.י(this.bjq);
  }
  
  public Permutation sE()
  {
    Permutation localPermutation = new Permutation(this.bjq.length);
    int i = this.bjq.length - 1;
    while (i >= 0)
    {
      localPermutation.bjq[this.bjq[i]] = i;
      i -= 1;
    }
    return localPermutation;
  }
  
  public String toString()
  {
    String str = "[" + this.bjq[0];
    int i = 1;
    while (i < this.bjq.length)
    {
      str = str + ", " + this.bjq[i];
      i += 1;
    }
    return str + "]";
  }
  
  public Permutation ˎ(Permutation paramPermutation)
  {
    if (paramPermutation.bjq.length != this.bjq.length) {
      throw new IllegalArgumentException("length mismatch");
    }
    Permutation localPermutation = new Permutation(this.bjq.length);
    int i = this.bjq.length - 1;
    while (i >= 0)
    {
      localPermutation.bjq[i] = this.bjq[paramPermutation.bjq[i]];
      i -= 1;
    }
    return localPermutation;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.Permutation
 * JD-Core Version:    0.7.0.1
 */