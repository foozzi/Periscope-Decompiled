package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class DSAPrivateKeyParameters
  extends DSAKeyParameters
{
  private BigInteger aFO;
  
  public DSAPrivateKeyParameters(BigInteger paramBigInteger, DSAParameters paramDSAParameters)
  {
    super(true, paramDSAParameters);
    this.aFO = paramBigInteger;
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */