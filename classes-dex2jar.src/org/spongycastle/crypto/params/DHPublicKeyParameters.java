package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class DHPublicKeyParameters
  extends DHKeyParameters
{
  private BigInteger aPZ;
  
  public DHPublicKeyParameters(BigInteger paramBigInteger, DHParameters paramDHParameters)
  {
    super(false, paramDHParameters);
    this.aPZ = paramBigInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DHPublicKeyParameters)) {
      return false;
    }
    return (((DHPublicKeyParameters)paramObject).getY().equals(this.aPZ)) && (super.equals(paramObject));
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public int hashCode()
  {
    return this.aPZ.hashCode() ^ super.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */