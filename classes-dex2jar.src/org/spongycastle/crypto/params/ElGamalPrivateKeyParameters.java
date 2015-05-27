package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class ElGamalPrivateKeyParameters
  extends ElGamalKeyParameters
{
  private BigInteger aFO;
  
  public ElGamalPrivateKeyParameters(BigInteger paramBigInteger, ElGamalParameters paramElGamalParameters)
  {
    super(true, paramElGamalParameters);
    this.aFO = paramBigInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ElGamalPrivateKeyParameters)) {
      return false;
    }
    if (!((ElGamalPrivateKeyParameters)paramObject).getX().equals(this.aFO)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public int hashCode()
  {
    return getX().hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ElGamalPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */