package org.spongycastle.jce.spec;

import java.math.BigInteger;

public class ElGamalPrivateKeySpec
  extends ElGamalKeySpec
{
  private BigInteger aFO;
  
  public BigInteger getX()
  {
    return this.aFO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ElGamalPrivateKeySpec
 * JD-Core Version:    0.7.0.1
 */