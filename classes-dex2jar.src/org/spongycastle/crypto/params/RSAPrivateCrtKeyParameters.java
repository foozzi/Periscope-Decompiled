package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class RSAPrivateCrtKeyParameters
  extends RSAKeyParameters
{
  private BigInteger aFA;
  private BigInteger aFz;
  private BigInteger aJC;
  private BigInteger aQG;
  private BigInteger aQH;
  private BigInteger aQI;
  
  public RSAPrivateCrtKeyParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, BigInteger paramBigInteger5, BigInteger paramBigInteger6, BigInteger paramBigInteger7, BigInteger paramBigInteger8)
  {
    super(true, paramBigInteger1, paramBigInteger3);
    this.aJC = paramBigInteger2;
    this.aFz = paramBigInteger4;
    this.aFA = paramBigInteger5;
    this.aQG = paramBigInteger6;
    this.aQH = paramBigInteger7;
    this.aQI = paramBigInteger8;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.aJC;
  }
  
  public BigInteger getQ()
  {
    return this.aFA;
  }
  
  public BigInteger ll()
  {
    return this.aQG;
  }
  
  public BigInteger lm()
  {
    return this.aQH;
  }
  
  public BigInteger ln()
  {
    return this.aQI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters
 * JD-Core Version:    0.7.0.1
 */