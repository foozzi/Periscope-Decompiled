package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class ElGamalPublicKeyParameters
  extends ElGamalKeyParameters
{
  private BigInteger aPZ;
  
  public ElGamalPublicKeyParameters(BigInteger paramBigInteger, ElGamalParameters paramElGamalParameters)
  {
    super(false, paramElGamalParameters);
    this.aPZ = paramBigInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ElGamalPublicKeyParameters)) {
      return false;
    }
    return (((ElGamalPublicKeyParameters)paramObject).getY().equals(this.aPZ)) && (super.equals(paramObject));
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
 * Qualified Name:     org.spongycastle.crypto.params.ElGamalPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */