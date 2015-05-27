package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

public class GOST3410PrivateKeySpec
  implements KeySpec
{
  private BigInteger aFA;
  private BigInteger aFL;
  private BigInteger aFO;
  private BigInteger aFz;
  
  public GOST3410PrivateKeySpec(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4)
  {
    this.aFO = paramBigInteger1;
    this.aFz = paramBigInteger2;
    this.aFA = paramBigInteger3;
    this.aFL = paramBigInteger4;
  }
  
  public BigInteger getA()
  {
    return this.aFL;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public BigInteger getQ()
  {
    return this.aFA;
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.GOST3410PrivateKeySpec
 * JD-Core Version:    0.7.0.1
 */