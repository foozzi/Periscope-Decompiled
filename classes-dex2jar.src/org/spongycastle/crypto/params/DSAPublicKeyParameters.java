package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class DSAPublicKeyParameters
  extends DSAKeyParameters
{
  private BigInteger aPZ;
  
  public DSAPublicKeyParameters(BigInteger paramBigInteger, DSAParameters paramDSAParameters)
  {
    super(false, paramDSAParameters);
    this.aPZ = paramBigInteger;
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */