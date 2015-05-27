package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

public class ElGamalParameterSpec
  implements AlgorithmParameterSpec
{
  private BigInteger aFB;
  private BigInteger aFz;
  
  public ElGamalParameterSpec(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this.aFz = paramBigInteger1;
    this.aFB = paramBigInteger2;
  }
  
  public BigInteger getG()
  {
    return this.aFB;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ElGamalParameterSpec
 * JD-Core Version:    0.7.0.1
 */