package org.spongycastle.jce.spec;

import java.math.BigInteger;

public class ElGamalPublicKeySpec
  extends ElGamalKeySpec
{
  private BigInteger aPZ;
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ElGamalPublicKeySpec
 * JD-Core Version:    0.7.0.1
 */