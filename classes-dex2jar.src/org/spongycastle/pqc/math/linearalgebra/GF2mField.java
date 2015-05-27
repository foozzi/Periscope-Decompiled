package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class GF2mField
{
  private int biU = 0;
  private int biV;
  
  public GF2mField(int paramInt1, int paramInt2)
  {
    if (paramInt1 != PolynomialRingGF2.ᙇ(paramInt2)) {
      throw new IllegalArgumentException(" Error: the degree is not correct");
    }
    if (!PolynomialRingGF2.ᴧ(paramInt2)) {
      throw new IllegalArgumentException(" Error: given polynomial is reducible");
    }
    this.biU = paramInt1;
    this.biV = paramInt2;
  }
  
  private static String ๆ(int paramInt)
  {
    Object localObject1 = "";
    if (paramInt == 0) {
      return "0";
    }
    if ((byte)(paramInt & 0x1) == 1) {
      localObject1 = "1";
    }
    int i = paramInt >>> 1;
    paramInt = 1;
    while (i != 0)
    {
      Object localObject2 = localObject1;
      if ((byte)(i & 0x1) == 1) {
        localObject2 = (String)localObject1 + "+x^" + paramInt;
      }
      i >>>= 1;
      paramInt += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2mField))) {
      return false;
    }
    paramObject = (GF2mField)paramObject;
    return (this.biU == paramObject.biU) && (this.biV == paramObject.biV);
  }
  
  public byte[] getEncoded()
  {
    return LittleEndianConversions.Ꮁ(this.biV);
  }
  
  public int hashCode()
  {
    return this.biV;
  }
  
  public int qs()
  {
    return this.biU;
  }
  
  public String toString()
  {
    return "Finite Field GF(2^" + this.biU + ") = " + "GF(2)[X]/<" + ๆ(this.biV) + "> ";
  }
  
  public int ˊ(SecureRandom paramSecureRandom)
  {
    return RandUtils.ˎ(paramSecureRandom, 1 << this.biU);
  }
  
  public int ˋ(SecureRandom paramSecureRandom)
  {
    int j = 0;
    int i = RandUtils.ˎ(paramSecureRandom, 1 << this.biU);
    while ((i == 0) && (j < 1048576))
    {
      i = RandUtils.ˎ(paramSecureRandom, 1 << this.biU);
      j += 1;
    }
    if (j == 1048576) {
      i = 1;
    }
    return i;
  }
  
  public int ܕ(int paramInt)
  {
    return ᘁ(paramInt, (1 << this.biU) - 2);
  }
  
  public int ণ(int paramInt)
  {
    int j = 1;
    int i = paramInt;
    paramInt = j;
    while (paramInt < this.biU)
    {
      i = ᕽ(i, i);
      paramInt += 1;
    }
    return i;
  }
  
  public boolean จ(int paramInt)
  {
    if (this.biU == 31) {
      return paramInt >= 0;
    }
    return (paramInt >= 0) && (paramInt < 1 << this.biU);
  }
  
  public String แ(int paramInt)
  {
    String str = "";
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (paramInt < this.biU)
    {
      if (((byte)i & 0x1) == 0) {
        str = "0" + str;
      } else {
        str = "1" + str;
      }
      i >>>= 1;
      paramInt += 1;
    }
    return str;
  }
  
  public int ᕑ(int paramInt1, int paramInt2)
  {
    return paramInt1 ^ paramInt2;
  }
  
  public int ᕽ(int paramInt1, int paramInt2)
  {
    return PolynomialRingGF2.ˇ(paramInt1, paramInt2, this.biV);
  }
  
  public int ᘁ(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    if (paramInt1 == 1) {
      return 1;
    }
    int m = 1;
    int k = m;
    int j = paramInt1;
    int i = paramInt2;
    if (paramInt2 < 0)
    {
      j = ܕ(paramInt1);
      i = -paramInt2;
    }
    for (k = m; i != 0; k = paramInt1)
    {
      paramInt1 = k;
      if ((i & 0x1) == 1) {
        paramInt1 = ᕽ(k, j);
      }
      j = ᕽ(j, j);
      i >>>= 1;
    }
    return k;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2mField
 * JD-Core Version:    0.7.0.1
 */