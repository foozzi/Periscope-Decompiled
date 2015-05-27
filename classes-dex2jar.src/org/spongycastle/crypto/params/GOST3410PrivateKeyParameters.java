package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class GOST3410PrivateKeyParameters
  extends GOST3410KeyParameters
{
  private BigInteger aFO;
  
  public GOST3410PrivateKeyParameters(BigInteger paramBigInteger, GOST3410Parameters paramGOST3410Parameters)
  {
    super(true, paramGOST3410Parameters);
    this.aFO = paramBigInteger;
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410PrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */