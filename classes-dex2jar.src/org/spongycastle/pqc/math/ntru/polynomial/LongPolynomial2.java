package org.spongycastle.pqc.math.ntru.polynomial;

import org.spongycastle.util.Arrays;

public class LongPolynomial2
{
  private long[] bjL;
  private int bjM;
  
  private LongPolynomial2(int paramInt)
  {
    this.bjL = new long[paramInt];
  }
  
  public LongPolynomial2(IntegerPolynomial paramIntegerPolynomial)
  {
    this.bjM = paramIntegerPolynomial.bjG.length;
    this.bjL = new long[(this.bjM + 1) / 2];
    int j = 0;
    int i = 0;
    while (i < this.bjM)
    {
      int[] arrayOfInt = paramIntegerPolynomial.bjG;
      int m = i + 1;
      int k = arrayOfInt[i];
      while (k < 0) {
        k += 2048;
      }
      long l;
      if (m < this.bjM)
      {
        arrayOfInt = paramIntegerPolynomial.bjG;
        i = m + 1;
        l = arrayOfInt[m];
      }
      else
      {
        l = 0L;
        i = m;
      }
      while (l < 0L) {
        l += 2048L;
      }
      this.bjL[j] = (k + (l << 24));
      j += 1;
    }
  }
  
  private LongPolynomial2(long[] paramArrayOfLong)
  {
    this.bjL = paramArrayOfLong;
  }
  
  private LongPolynomial2 ˋ(LongPolynomial2 paramLongPolynomial2)
  {
    Object localObject1 = this.bjL;
    Object localObject2 = paramLongPolynomial2.bjL;
    int k = paramLongPolynomial2.bjL.length;
    if (k <= 32)
    {
      int m = k * 2;
      paramLongPolynomial2 = new LongPolynomial2(new long[m]);
      i = 0;
      while (i < m)
      {
        j = Math.max(0, i - k + 1);
        while (j <= Math.min(i, k - 1))
        {
          long l = localObject1[(i - j)] * localObject2[j];
          paramLongPolynomial2.bjL[i] = (paramLongPolynomial2.bjL[i] + (l & (0x7FF & l) + 34342961152L) & 0xFF0007FF);
          paramLongPolynomial2.bjL[(i + 1)] = (paramLongPolynomial2.bjL[(i + 1)] + (l >>> 48 & 0x7FF) & 0xFF0007FF);
          j += 1;
        }
        i += 1;
      }
      return paramLongPolynomial2;
    }
    int j = k / 2;
    paramLongPolynomial2 = new LongPolynomial2(Arrays.copyOf((long[])localObject1, j));
    localObject1 = new LongPolynomial2(Arrays.copyOfRange((long[])localObject1, j, k));
    LongPolynomial2 localLongPolynomial22 = new LongPolynomial2(Arrays.copyOf((long[])localObject2, j));
    LongPolynomial2 localLongPolynomial23 = new LongPolynomial2(Arrays.copyOfRange((long[])localObject2, j, k));
    localObject2 = (LongPolynomial2)paramLongPolynomial2.clone();
    ((LongPolynomial2)localObject2).ˎ((LongPolynomial2)localObject1);
    LongPolynomial2 localLongPolynomial21 = (LongPolynomial2)localLongPolynomial22.clone();
    localLongPolynomial21.ˎ(localLongPolynomial23);
    paramLongPolynomial2 = paramLongPolynomial2.ˋ(localLongPolynomial22);
    localObject1 = ((LongPolynomial2)localObject1).ˋ(localLongPolynomial23);
    localObject2 = ((LongPolynomial2)localObject2).ˋ(localLongPolynomial21);
    ((LongPolynomial2)localObject2).ˏ(paramLongPolynomial2);
    ((LongPolynomial2)localObject2).ˏ((LongPolynomial2)localObject1);
    localLongPolynomial21 = new LongPolynomial2(k * 2);
    int i = 0;
    while (i < paramLongPolynomial2.bjL.length)
    {
      paramLongPolynomial2.bjL[i] &= 0xFF0007FF;
      i += 1;
    }
    i = 0;
    while (i < ((LongPolynomial2)localObject2).bjL.length)
    {
      localLongPolynomial21.bjL[(j + i)] = (localLongPolynomial21.bjL[(j + i)] + localObject2.bjL[i] & 0xFF0007FF);
      i += 1;
    }
    i = 0;
    while (i < ((LongPolynomial2)localObject1).bjL.length)
    {
      localLongPolynomial21.bjL[(j * 2 + i)] = (localLongPolynomial21.bjL[(j * 2 + i)] + localObject1.bjL[i] & 0xFF0007FF);
      i += 1;
    }
    return localLongPolynomial21;
  }
  
  private void ˎ(LongPolynomial2 paramLongPolynomial2)
  {
    if (paramLongPolynomial2.bjL.length > this.bjL.length) {
      this.bjL = Arrays.copyOf(this.bjL, paramLongPolynomial2.bjL.length);
    }
    int i = 0;
    while (i < paramLongPolynomial2.bjL.length)
    {
      this.bjL[i] = (this.bjL[i] + paramLongPolynomial2.bjL[i] & 0xFF0007FF);
      i += 1;
    }
  }
  
  private void ˏ(LongPolynomial2 paramLongPolynomial2)
  {
    if (paramLongPolynomial2.bjL.length > this.bjL.length) {
      this.bjL = Arrays.copyOf(this.bjL, paramLongPolynomial2.bjL.length);
    }
    int i = 0;
    while (i < paramLongPolynomial2.bjL.length)
    {
      this.bjL[i] = (this.bjL[i] + 140737496743936L - paramLongPolynomial2.bjL[i] & 0xFF0007FF);
      i += 1;
    }
  }
  
  public Object clone()
  {
    LongPolynomial2 localLongPolynomial2 = new LongPolynomial2((long[])this.bjL.clone());
    localLongPolynomial2.bjM = this.bjM;
    return localLongPolynomial2;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof LongPolynomial2)) {
      return Arrays.ˏ(this.bjL, ((LongPolynomial2)paramObject).bjL);
    }
    return false;
  }
  
  public IntegerPolynomial ta()
  {
    int[] arrayOfInt = new int[this.bjM];
    int i = 0;
    int j = 0;
    while (j < this.bjL.length)
    {
      int k = i + 1;
      arrayOfInt[i] = ((int)(this.bjL[j] & 0x7FF));
      i = k;
      if (k < this.bjM)
      {
        i = k + 1;
        arrayOfInt[k] = ((int)(this.bjL[j] >> 24 & 0x7FF));
      }
      j += 1;
    }
    return new IntegerPolynomial(arrayOfInt);
  }
  
  public LongPolynomial2 ˊ(LongPolynomial2 paramLongPolynomial2)
  {
    int i = this.bjL.length;
    if ((paramLongPolynomial2.bjL.length != i) || (this.bjM != paramLongPolynomial2.bjM)) {
      throw new IllegalArgumentException("Number of coefficients must be the same");
    }
    paramLongPolynomial2 = ˋ(paramLongPolynomial2);
    if (paramLongPolynomial2.bjL.length > i)
    {
      int j;
      if (this.bjM % 2 == 0)
      {
        j = i;
        while (j < paramLongPolynomial2.bjL.length)
        {
          paramLongPolynomial2.bjL[(j - i)] = (paramLongPolynomial2.bjL[(j - i)] + paramLongPolynomial2.bjL[j] & 0xFF0007FF);
          j += 1;
        }
        paramLongPolynomial2.bjL = Arrays.copyOf(paramLongPolynomial2.bjL, i);
      }
      else
      {
        j = i;
        while (j < paramLongPolynomial2.bjL.length)
        {
          paramLongPolynomial2.bjL[(j - i)] += (paramLongPolynomial2.bjL[(j - 1)] >> 24);
          paramLongPolynomial2.bjL[(j - i)] += ((paramLongPolynomial2.bjL[j] & 0x7FF) << 24);
          arrayOfLong = paramLongPolynomial2.bjL;
          int k = j - i;
          arrayOfLong[k] &= 0xFF0007FF;
          j += 1;
        }
        paramLongPolynomial2.bjL = Arrays.copyOf(paramLongPolynomial2.bjL, i);
        long[] arrayOfLong = paramLongPolynomial2.bjL;
        i = paramLongPolynomial2.bjL.length - 1;
        arrayOfLong[i] &= 0x7FF;
      }
    }
    paramLongPolynomial2 = new LongPolynomial2(paramLongPolynomial2.bjL);
    paramLongPolynomial2.bjM = this.bjM;
    return paramLongPolynomial2;
  }
  
  public void ˊ(LongPolynomial2 paramLongPolynomial2, int paramInt)
  {
    long l1 = paramInt;
    long l2 = paramInt;
    paramInt = 0;
    while (paramInt < paramLongPolynomial2.bjL.length)
    {
      this.bjL[paramInt] = (this.bjL[paramInt] + 140737496743936L - paramLongPolynomial2.bjL[paramInt] & (l1 << 24) + l2);
      paramInt += 1;
    }
  }
  
  public void לּ(int paramInt)
  {
    long l1 = paramInt;
    long l2 = paramInt;
    paramInt = 0;
    while (paramInt < this.bjL.length)
    {
      this.bjL[paramInt] = (this.bjL[paramInt] << 1 & (l1 << 24) + l2);
      paramInt += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.ntru.polynomial.LongPolynomial2
 * JD-Core Version:    0.7.0.1
 */