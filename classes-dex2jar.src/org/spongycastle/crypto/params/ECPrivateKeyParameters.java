package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class ECPrivateKeyParameters
  extends ECKeyParameters
{
  BigInteger aPU;
  
  public ECPrivateKeyParameters(BigInteger paramBigInteger, ECDomainParameters paramECDomainParameters)
  {
    super(true, paramECDomainParameters);
    this.aPU = paramBigInteger;
  }
  
  public BigInteger kz()
  {
    return this.aPU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ECPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */