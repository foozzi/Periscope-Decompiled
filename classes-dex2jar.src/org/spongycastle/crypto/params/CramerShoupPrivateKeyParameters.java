package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class CramerShoupPrivateKeyParameters
  extends CramerShoupKeyParameters
{
  private BigInteger aPN;
  private BigInteger aPO;
  private BigInteger aPP;
  private BigInteger aPQ;
  private BigInteger aPR;
  private CramerShoupPublicKeyParameters aPS;
  
  public CramerShoupPrivateKeyParameters(CramerShoupParameters paramCramerShoupParameters, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, BigInteger paramBigInteger5)
  {
    super(true, paramCramerShoupParameters);
    this.aPN = paramBigInteger1;
    this.aPO = paramBigInteger2;
    this.aPP = paramBigInteger3;
    this.aPQ = paramBigInteger4;
    this.aPR = paramBigInteger5;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof CramerShoupPrivateKeyParameters)) {
      return false;
    }
    CramerShoupPrivateKeyParameters localCramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters)paramObject;
    return (localCramerShoupPrivateKeyParameters.kt().equals(this.aPN)) && (localCramerShoupPrivateKeyParameters.ku().equals(this.aPO)) && (localCramerShoupPrivateKeyParameters.kv().equals(this.aPP)) && (localCramerShoupPrivateKeyParameters.kw().equals(this.aPQ)) && (localCramerShoupPrivateKeyParameters.kx().equals(this.aPR)) && (super.equals(paramObject));
  }
  
  public int hashCode()
  {
    return this.aPN.hashCode() ^ this.aPO.hashCode() ^ this.aPP.hashCode() ^ this.aPQ.hashCode() ^ this.aPR.hashCode() ^ super.hashCode();
  }
  
  public BigInteger kt()
  {
    return this.aPN;
  }
  
  public BigInteger ku()
  {
    return this.aPO;
  }
  
  public BigInteger kv()
  {
    return this.aPP;
  }
  
  public BigInteger kw()
  {
    return this.aPQ;
  }
  
  public BigInteger kx()
  {
    return this.aPR;
  }
  
  public void ˊ(CramerShoupPublicKeyParameters paramCramerShoupPublicKeyParameters)
  {
    this.aPS = paramCramerShoupPublicKeyParameters;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.CramerShoupPrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */