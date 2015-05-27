package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class PolynomialGF2mSmallM
{
  private GF2mField bfX;
  private int biU;
  private int[] bjr;
  
  public PolynomialGF2mSmallM(GF2mField paramGF2mField, int paramInt)
  {
    this.bfX = paramGF2mField;
    this.biU = paramInt;
    this.bjr = new int[paramInt + 1];
    this.bjr[paramInt] = 1;
  }
  
  public PolynomialGF2mSmallM(GF2mField paramGF2mField, int paramInt, char paramChar, SecureRandom paramSecureRandom)
  {
    this.bfX = paramGF2mField;
    switch (paramChar)
    {
    default: 
      break;
    case 'I': 
      this.bjr = ᐝ(paramInt, paramSecureRandom);
      break;
    }
    throw new IllegalArgumentException(" Error: type " + paramChar + " is not defined for GF2smallmPolynomial");
    sG();
  }
  
  public PolynomialGF2mSmallM(GF2mField paramGF2mField, int[] paramArrayOfInt)
  {
    this.bfX = paramGF2mField;
    this.bjr = ᵔ(paramArrayOfInt);
    sG();
  }
  
  public PolynomialGF2mSmallM(GF2mVector paramGF2mVector)
  {
    this(paramGF2mVector.rk(), paramGF2mVector.ss());
  }
  
  public PolynomialGF2mSmallM(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    this.bfX = paramPolynomialGF2mSmallM.bfX;
    this.biU = paramPolynomialGF2mSmallM.biU;
    this.bjr = IntUtils.י(paramPolynomialGF2mSmallM.bjr);
  }
  
  private void sG()
  {
    for (this.biU = (this.bjr.length - 1); (this.biU >= 0) && (this.bjr[this.biU] == 0); this.biU -= 1) {}
  }
  
  private static boolean ʹ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int j = ᵎ(paramArrayOfInt1);
    if (j != ᵎ(paramArrayOfInt2)) {
      return false;
    }
    int i = 0;
    while (i <= j)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private int[] ʽ(int[] paramArrayOfInt, int paramInt)
  {
    int i = ᵎ(paramArrayOfInt);
    if ((i == -1) || (paramInt == 0)) {
      return new int[1];
    }
    if (paramInt == 1) {
      return IntUtils.י(paramArrayOfInt);
    }
    int[] arrayOfInt = new int[i + 1];
    while (i >= 0)
    {
      arrayOfInt[i] = this.bfX.ᕽ(paramArrayOfInt[i], paramInt);
      i -= 1;
    }
    return arrayOfInt;
  }
  
  private int[] ˌ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    return ﾞ(ﹳ(paramArrayOfInt1, paramArrayOfInt2), paramArrayOfInt3);
  }
  
  private int[] ˍ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt2 = ᵔ(paramArrayOfInt3);
    int[] arrayOfInt1 = ﾞ(paramArrayOfInt2, paramArrayOfInt3);
    paramArrayOfInt2 = new int[1];
    int[] tmp19_18 = paramArrayOfInt2;
    tmp19_18[0] = 0;
    tmp19_18;
    Object localObject;
    for (paramArrayOfInt1 = ﾞ(paramArrayOfInt1, paramArrayOfInt3); ᵎ(arrayOfInt1) != -1; paramArrayOfInt1 = ᵔ((int[])localObject))
    {
      localObject = ᐧ(arrayOfInt2, arrayOfInt1);
      arrayOfInt2 = ᵔ(arrayOfInt1);
      arrayOfInt1 = ᵔ(localObject[1]);
      localObject = ـ(paramArrayOfInt2, ˌ(localObject[0], paramArrayOfInt1, paramArrayOfInt3));
      paramArrayOfInt2 = ᵔ(paramArrayOfInt1);
    }
    int i = ٴ(arrayOfInt2);
    return ʽ(paramArrayOfInt2, this.bfX.ܕ(i));
  }
  
  private static int[] ͺ(int[] paramArrayOfInt, int paramInt)
  {
    int i = ᵎ(paramArrayOfInt);
    if (i == -1) {
      return new int[1];
    }
    int[] arrayOfInt = new int[i + paramInt + 1];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, paramInt, i + 1);
    return arrayOfInt;
  }
  
  private int[] ـ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt;
    if (paramArrayOfInt1.length < paramArrayOfInt2.length)
    {
      arrayOfInt = new int[paramArrayOfInt2.length];
      System.arraycopy(paramArrayOfInt2, 0, arrayOfInt, 0, paramArrayOfInt2.length);
      paramArrayOfInt2 = arrayOfInt;
    }
    else
    {
      arrayOfInt = new int[paramArrayOfInt1.length];
      System.arraycopy(paramArrayOfInt1, 0, arrayOfInt, 0, paramArrayOfInt1.length);
      paramArrayOfInt1 = paramArrayOfInt2;
      paramArrayOfInt2 = arrayOfInt;
    }
    int i = paramArrayOfInt1.length - 1;
    while (i >= 0)
    {
      paramArrayOfInt2[i] = this.bfX.ᕑ(paramArrayOfInt2[i], paramArrayOfInt1[i]);
      i -= 1;
    }
    return paramArrayOfInt2;
  }
  
  private static int ٴ(int[] paramArrayOfInt)
  {
    int i = ᵎ(paramArrayOfInt);
    if (i == -1) {
      return 0;
    }
    return paramArrayOfInt[i];
  }
  
  private int[] ᐝ(int paramInt, SecureRandom paramSecureRandom)
  {
    int[] arrayOfInt = new int[paramInt + 1];
    arrayOfInt[paramInt] = 1;
    arrayOfInt[0] = this.bfX.ˋ(paramSecureRandom);
    int i = 1;
    while (i < paramInt)
    {
      arrayOfInt[i] = this.bfX.ˊ(paramSecureRandom);
      i += 1;
    }
    while (!ᴵ(arrayOfInt))
    {
      i = RandUtils.ˎ(paramSecureRandom, paramInt);
      if (i == 0) {
        arrayOfInt[0] = this.bfX.ˋ(paramSecureRandom);
      } else {
        arrayOfInt[i] = this.bfX.ˊ(paramSecureRandom);
      }
    }
    return arrayOfInt;
  }
  
  private int[][] ᐧ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = ᵎ(paramArrayOfInt2);
    int j = ᵎ(paramArrayOfInt1);
    if (i == -1) {
      throw new ArithmeticException("Division by zero.");
    }
    int[][] arrayOfInt = new int[2][];
    arrayOfInt[0] = new int[1];
    arrayOfInt[1] = new int[j + 1];
    j = ٴ(paramArrayOfInt2);
    j = this.bfX.ܕ(j);
    arrayOfInt[0][0] = 0;
    System.arraycopy(paramArrayOfInt1, 0, arrayOfInt[1], 0, arrayOfInt[1].length);
    while (i <= ᵎ(arrayOfInt[1]))
    {
      paramArrayOfInt1 = new int[1];
      paramArrayOfInt1[0] = this.bfX.ᕽ(ٴ(arrayOfInt[1]), j);
      int[] arrayOfInt1 = ʽ(paramArrayOfInt2, paramArrayOfInt1[0]);
      int k = ᵎ(arrayOfInt[1]) - i;
      arrayOfInt1 = ͺ(arrayOfInt1, k);
      arrayOfInt[0] = ـ(ͺ(paramArrayOfInt1, k), arrayOfInt[0]);
      arrayOfInt[1] = ـ(arrayOfInt1, arrayOfInt[1]);
    }
    return arrayOfInt;
  }
  
  private int[] ᐨ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int[] arrayOfInt1 = paramArrayOfInt1;
    int[] arrayOfInt2 = paramArrayOfInt2;
    paramArrayOfInt2 = arrayOfInt1;
    paramArrayOfInt1 = arrayOfInt2;
    if (ᵎ(arrayOfInt1) == -1) {
      return arrayOfInt2;
    }
    while (ᵎ(paramArrayOfInt1) != -1)
    {
      arrayOfInt1 = ﾞ(paramArrayOfInt2, paramArrayOfInt1);
      paramArrayOfInt2 = new int[paramArrayOfInt1.length];
      System.arraycopy(paramArrayOfInt1, 0, paramArrayOfInt2, 0, paramArrayOfInt2.length);
      paramArrayOfInt1 = new int[arrayOfInt1.length];
      System.arraycopy(arrayOfInt1, 0, paramArrayOfInt1, 0, paramArrayOfInt1.length);
    }
    return ʽ(paramArrayOfInt2, this.bfX.ܕ(ٴ(paramArrayOfInt2)));
  }
  
  private boolean ᴵ(int[] paramArrayOfInt)
  {
    if (paramArrayOfInt[0] == 0) {
      return false;
    }
    int k = ᵎ(paramArrayOfInt);
    int[] arrayOfInt = new int[2];
    int[] tmp21_19 = arrayOfInt;
    tmp21_19[0] = 0;
    int[] tmp25_21 = tmp21_19;
    tmp25_21[1] = 1;
    tmp25_21;
    int m = this.bfX.qs();
    int i = 0;
    while (i < k >> 1)
    {
      int j = m - 1;
      while (j >= 0)
      {
        arrayOfInt = ˌ(arrayOfInt, arrayOfInt, paramArrayOfInt);
        j -= 1;
      }
      arrayOfInt = ᵔ(arrayOfInt);
      if (ᵎ(ᐨ(ـ(arrayOfInt, new int[] { 0, 1 }), paramArrayOfInt)) != 0) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static int ᵎ(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length - 1;
    while ((i >= 0) && (paramArrayOfInt[i] == 0)) {
      i -= 1;
    }
    return i;
  }
  
  private static int[] ᵔ(int[] paramArrayOfInt)
  {
    int i = ᵎ(paramArrayOfInt);
    if (i == -1) {
      return new int[1];
    }
    if (paramArrayOfInt.length == i + 1) {
      return IntUtils.י(paramArrayOfInt);
    }
    int[] arrayOfInt = new int[i + 1];
    System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i + 1);
    return arrayOfInt;
  }
  
  private int[] ﹳ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    if (ᵎ(paramArrayOfInt1) < ᵎ(paramArrayOfInt2))
    {
      arrayOfInt1 = paramArrayOfInt2;
      paramArrayOfInt2 = paramArrayOfInt1;
    }
    else
    {
      arrayOfInt1 = paramArrayOfInt1;
    }
    paramArrayOfInt1 = ᵔ(arrayOfInt1);
    int[] arrayOfInt2 = ᵔ(paramArrayOfInt2);
    if (arrayOfInt2.length == 1) {
      return ʽ(paramArrayOfInt1, arrayOfInt2[0]);
    }
    int i = paramArrayOfInt1.length;
    int j = arrayOfInt2.length;
    paramArrayOfInt2 = new int[i + j - 1];
    if (j != i)
    {
      paramArrayOfInt2 = new int[j];
      arrayOfInt1 = new int[i - j];
      System.arraycopy(paramArrayOfInt1, 0, paramArrayOfInt2, 0, paramArrayOfInt2.length);
      System.arraycopy(paramArrayOfInt1, j, arrayOfInt1, 0, arrayOfInt1.length);
      return ـ(ﹳ(paramArrayOfInt2, arrayOfInt2), ͺ(ﹳ(arrayOfInt1, arrayOfInt2), j));
    }
    j = i + 1 >>> 1;
    i -= j;
    int[] arrayOfInt3 = new int[j];
    int[] arrayOfInt4 = new int[j];
    paramArrayOfInt2 = new int[i];
    int[] arrayOfInt1 = new int[i];
    System.arraycopy(paramArrayOfInt1, 0, arrayOfInt3, 0, arrayOfInt3.length);
    System.arraycopy(paramArrayOfInt1, j, paramArrayOfInt2, 0, paramArrayOfInt2.length);
    System.arraycopy(arrayOfInt2, 0, arrayOfInt4, 0, arrayOfInt4.length);
    System.arraycopy(arrayOfInt2, j, arrayOfInt1, 0, arrayOfInt1.length);
    paramArrayOfInt1 = ـ(arrayOfInt3, paramArrayOfInt2);
    arrayOfInt2 = ـ(arrayOfInt4, arrayOfInt1);
    arrayOfInt3 = ﹳ(arrayOfInt3, arrayOfInt4);
    paramArrayOfInt1 = ﹳ(paramArrayOfInt1, arrayOfInt2);
    paramArrayOfInt2 = ﹳ(paramArrayOfInt2, arrayOfInt1);
    return ـ(ͺ(ـ(ـ(ـ(paramArrayOfInt1, arrayOfInt3), paramArrayOfInt2), ͺ(paramArrayOfInt2, j)), j), arrayOfInt3);
  }
  
  private int[] ﾞ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = ᵎ(paramArrayOfInt2);
    if (i == -1) {
      throw new ArithmeticException("Division by zero");
    }
    int[] arrayOfInt = new int[paramArrayOfInt1.length];
    int j = ٴ(paramArrayOfInt2);
    j = this.bfX.ܕ(j);
    System.arraycopy(paramArrayOfInt1, 0, arrayOfInt, 0, arrayOfInt.length);
    int k;
    for (paramArrayOfInt1 = arrayOfInt; i <= ᵎ(paramArrayOfInt1); paramArrayOfInt1 = ـ(ʽ(ͺ(paramArrayOfInt2, ᵎ(paramArrayOfInt1) - i), k), paramArrayOfInt1)) {
      k = this.bfX.ᕽ(ٴ(paramArrayOfInt1), j);
    }
    return paramArrayOfInt1;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof PolynomialGF2mSmallM))) {
      return false;
    }
    paramObject = (PolynomialGF2mSmallM)paramObject;
    return (this.bfX.equals(paramObject.bfX)) && (this.biU == paramObject.biU) && (ʹ(this.bjr, paramObject.bjr));
  }
  
  public byte[] getEncoded()
  {
    int j = 8;
    int i = 1;
    while (this.bfX.qs() > j)
    {
      i += 1;
      j += 8;
    }
    byte[] arrayOfByte = new byte[this.bjr.length * i];
    i = 0;
    int k = 0;
    while (k < this.bjr.length)
    {
      int m = 0;
      while (m < j)
      {
        int n = i + 1;
        arrayOfByte[i] = ((byte)(this.bjr[k] >>> m));
        m += 8;
        i = n;
      }
      k += 1;
    }
    return arrayOfByte;
  }
  
  public int hashCode()
  {
    int j = this.bfX.hashCode();
    int i = 0;
    while (i < this.bjr.length)
    {
      j = j * 31 + this.bjr[i];
      i += 1;
    }
    return j;
  }
  
  public int qs()
  {
    int i = this.bjr.length - 1;
    if (this.bjr[i] == 0) {
      return -1;
    }
    return i;
  }
  
  public int sF()
  {
    if (this.biU == -1) {
      return 0;
    }
    return this.bjr[this.biU];
  }
  
  public String toString()
  {
    String str = " Polynomial over " + this.bfX.toString() + ": \n";
    int i = 0;
    while (i < this.bjr.length)
    {
      str = str + this.bfX.แ(this.bjr[i]) + "Y^" + i + "+";
      i += 1;
    }
    return str + ";";
  }
  
  public PolynomialGF2mSmallM[] ʻ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    int i = paramPolynomialGF2mSmallM.biU;
    Object localObject4 = ᵔ(paramPolynomialGF2mSmallM.bjr);
    Object localObject2 = ﾞ(this.bjr, paramPolynomialGF2mSmallM.bjr);
    Object localObject3 = new int[1];
    Object tmp35_33 = localObject3;
    tmp35_33[0] = 0;
    tmp35_33;
    Object localObject1 = new int[1];
    Object tmp45_44 = localObject1;
    tmp45_44[0] = 1;
    tmp45_44;
    while (ᵎ((int[])localObject2) > i >> 1)
    {
      localObject4 = ᐧ((int[])localObject4, (int[])localObject2);
      Object localObject5 = localObject4[1];
      int[] arrayOfInt = ـ((int[])localObject3, ˌ(localObject4[0], (int[])localObject1, paramPolynomialGF2mSmallM.bjr));
      localObject4 = localObject2;
      localObject2 = localObject5;
      localObject3 = localObject1;
      localObject1 = arrayOfInt;
    }
    return new PolynomialGF2mSmallM[] { new PolynomialGF2mSmallM(this.bfX, (int[])localObject2), new PolynomialGF2mSmallM(this.bfX, (int[])localObject1) };
  }
  
  public PolynomialGF2mSmallM ˊ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    paramPolynomialGF2mSmallM = ـ(this.bjr, paramPolynomialGF2mSmallM.bjr);
    return new PolynomialGF2mSmallM(this.bfX, paramPolynomialGF2mSmallM);
  }
  
  public PolynomialGF2mSmallM ˊ(PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM)
  {
    int k = paramArrayOfPolynomialGF2mSmallM.length;
    int[] arrayOfInt = new int[k];
    int i = 0;
    while (i < k)
    {
      int j = 0;
      while (j < k)
      {
        if ((i < paramArrayOfPolynomialGF2mSmallM[j].bjr.length) && (j < this.bjr.length))
        {
          int m = this.bfX.ᕽ(paramArrayOfPolynomialGF2mSmallM[j].bjr[i], this.bjr[j]);
          arrayOfInt[i] = this.bfX.ᕑ(arrayOfInt[i], m);
        }
        j += 1;
      }
      i += 1;
    }
    i = 0;
    while (i < k)
    {
      arrayOfInt[i] = this.bfX.ণ(arrayOfInt[i]);
      i += 1;
    }
    return new PolynomialGF2mSmallM(this.bfX, arrayOfInt);
  }
  
  public void ˋ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    this.bjr = ـ(this.bjr, paramPolynomialGF2mSmallM.bjr);
    sG();
  }
  
  public PolynomialGF2mSmallM ˎ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    paramPolynomialGF2mSmallM = ﹳ(this.bjr, paramPolynomialGF2mSmallM.bjr);
    return new PolynomialGF2mSmallM(this.bfX, paramPolynomialGF2mSmallM);
  }
  
  public PolynomialGF2mSmallM ˏ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    paramPolynomialGF2mSmallM = ﾞ(this.bjr, paramPolynomialGF2mSmallM.bjr);
    return new PolynomialGF2mSmallM(this.bfX, paramPolynomialGF2mSmallM);
  }
  
  public int Ꮣ(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > this.biU)) {
      return 0;
    }
    return this.bjr[paramInt];
  }
  
  public PolynomialGF2mSmallM ᐝ(PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    int[] arrayOfInt = this.bjr;
    paramPolynomialGF2mSmallM = paramPolynomialGF2mSmallM.bjr;
    paramPolynomialGF2mSmallM = ˍ(new int[] { 1 }, arrayOfInt, paramPolynomialGF2mSmallM);
    return new PolynomialGF2mSmallM(this.bfX, paramPolynomialGF2mSmallM);
  }
  
  public int ᒦ(int paramInt)
  {
    int j = this.bjr[this.biU];
    int i = this.biU - 1;
    while (i >= 0)
    {
      j = this.bfX.ᕽ(j, paramInt) ^ this.bjr[i];
      i -= 1;
    }
    return j;
  }
  
  public PolynomialGF2mSmallM ᒨ(int paramInt)
  {
    int[] arrayOfInt = new int[paramInt + 1];
    arrayOfInt[paramInt] = 1;
    arrayOfInt = ـ(this.bjr, arrayOfInt);
    return new PolynomialGF2mSmallM(this.bfX, arrayOfInt);
  }
  
  public PolynomialGF2mSmallM ᒫ(int paramInt)
  {
    if (!this.bfX.จ(paramInt)) {
      throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }
    int[] arrayOfInt = ʽ(this.bjr, paramInt);
    return new PolynomialGF2mSmallM(this.bfX, arrayOfInt);
  }
  
  public void ᖟ(int paramInt)
  {
    if (!this.bfX.จ(paramInt)) {
      throw new ArithmeticException("Not an element of the finite field this polynomial is defined over.");
    }
    this.bjr = ʽ(this.bjr, paramInt);
    sG();
  }
  
  public PolynomialGF2mSmallM ᘇ(int paramInt)
  {
    int[] arrayOfInt = ͺ(this.bjr, paramInt);
    return new PolynomialGF2mSmallM(this.bfX, arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM
 * JD-Core Version:    0.7.0.1
 */