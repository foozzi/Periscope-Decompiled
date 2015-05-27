package org.spongycastle.jce.spec;

import java.math.BigInteger;

public class ECPrivateKeySpec
  extends ECKeySpec
{
  private BigInteger aPU;
  
  public ECPrivateKeySpec(BigInteger paramBigInteger, ECParameterSpec paramECParameterSpec)
  {
    super(paramECParameterSpec);
    this.aPU = paramBigInteger;
  }
  
  public BigInteger kz()
  {
    return this.aPU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECPrivateKeySpec
 * JD-Core Version:    0.7.0.1
 */