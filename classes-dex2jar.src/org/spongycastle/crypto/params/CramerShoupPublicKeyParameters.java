package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class CramerShoupPublicKeyParameters
  extends CramerShoupKeyParameters
{
  private BigInteger aDC;
  private BigInteger aPT;
  private BigInteger aPU;
  
  public CramerShoupPublicKeyParameters(CramerShoupParameters paramCramerShoupParameters, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    super(false, paramCramerShoupParameters);
    this.aPT = paramBigInteger1;
    this.aPU = paramBigInteger2;
    this.aDC = paramBigInteger3;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof CramerShoupPublicKeyParameters)) {
      return false;
    }
    CramerShoupPublicKeyParameters localCramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters)paramObject;
    return (localCramerShoupPublicKeyParameters.ky().equals(this.aPT)) && (localCramerShoupPublicKeyParameters.kz().equals(this.aPU)) && (localCramerShoupPublicKeyParameters.ix().equals(this.aDC)) && (super.equals(paramObject));
  }
  
  public int hashCode()
  {
    return this.aPT.hashCode() ^ this.aPU.hashCode() ^ this.aDC.hashCode() ^ super.hashCode();
  }
  
  public BigInteger ix()
  {
    return this.aDC;
  }
  
  public BigInteger ky()
  {
    return this.aPT;
  }
  
  public BigInteger kz()
  {
    return this.aPU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.CramerShoupPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */