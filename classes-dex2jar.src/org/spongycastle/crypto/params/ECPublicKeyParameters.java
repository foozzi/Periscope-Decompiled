package org.spongycastle.crypto.params;

import org.spongycastle.math.ec.ECPoint;

public class ECPublicKeyParameters
  extends ECKeyParameters
{
  ECPoint aQf;
  
  public ECPublicKeyParameters(ECPoint paramECPoint, ECDomainParameters paramECDomainParameters)
  {
    super(false, paramECDomainParameters);
    this.aQf = paramECPoint.pQ();
  }
  
  public ECPoint kH()
  {
    return this.aQf;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ECPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */