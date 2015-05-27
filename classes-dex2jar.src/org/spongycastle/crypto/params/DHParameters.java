package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class DHParameters
  implements CipherParameters
{
  private BigInteger aFA;
  private BigInteger aFB;
  private BigInteger aFz;
  private BigInteger aPX;
  private DHValidationParameters aPY;
  private int avL;
  private int avO;
  
  public DHParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this(paramBigInteger1, paramBigInteger2, null, 0);
  }
  
  public DHParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this(paramBigInteger1, paramBigInteger2, paramBigInteger3, 0);
  }
  
  public DHParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, int paramInt)
  {
    this(paramBigInteger1, paramBigInteger2, paramBigInteger3, ΐ(paramInt), paramInt, null, null);
  }
  
  public DHParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, int paramInt1, int paramInt2, BigInteger paramBigInteger4, DHValidationParameters paramDHValidationParameters)
  {
    if (paramInt2 != 0)
    {
      if (BigInteger.valueOf(paramInt2 - 1 ^ 0x2).compareTo(paramBigInteger1) == 1) {
        throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
      }
      if (paramInt2 < paramInt1) {
        throw new IllegalArgumentException("when l value specified, it may not be less than m value");
      }
    }
    this.aFB = paramBigInteger2;
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger3;
    this.avL = paramInt1;
    this.avO = paramInt2;
    this.aPX = paramBigInteger4;
    this.aPY = paramDHValidationParameters;
  }
  
  public DHParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, DHValidationParameters paramDHValidationParameters)
  {
    this(paramBigInteger1, paramBigInteger2, paramBigInteger3, 160, 0, paramBigInteger4, paramDHValidationParameters);
  }
  
  private static int ΐ(int paramInt)
  {
    if (paramInt == 0) {
      return 160;
    }
    if (paramInt < 160) {
      return paramInt;
    }
    return 160;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHParameters)) {
      return false;
    }
    paramObject = (DHParameters)paramObject;
    if (getQ() != null)
    {
      if (!getQ().equals(paramObject.getQ())) {
        return false;
      }
    }
    else if (paramObject.getQ() != null) {
      return false;
    }
    return (paramObject.getP().equals(this.aFz)) && (paramObject.getG().equals(this.aFB));
  }
  
  public BigInteger getG()
  {
    return this.aFB;
  }
  
  public int getL()
  {
    return this.avO;
  }
  
  public int getM()
  {
    return this.avL;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public BigInteger getQ()
  {
    return this.aFA;
  }
  
  public int hashCode()
  {
    int j = getP().hashCode();
    int k = getG().hashCode();
    int i;
    if (getQ() != null) {
      i = getQ().hashCode();
    } else {
      i = 0;
    }
    return j ^ k ^ i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHParameters
 * JD-Core Version:    0.7.0.1
 */