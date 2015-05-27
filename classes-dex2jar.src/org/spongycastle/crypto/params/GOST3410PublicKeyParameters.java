package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class GOST3410PublicKeyParameters
  extends GOST3410KeyParameters
{
  private BigInteger aPZ;
  
  public GOST3410PublicKeyParameters(BigInteger paramBigInteger, GOST3410Parameters paramGOST3410Parameters)
  {
    super(false, paramGOST3410Parameters);
    this.aPZ = paramBigInteger;
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410PublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */