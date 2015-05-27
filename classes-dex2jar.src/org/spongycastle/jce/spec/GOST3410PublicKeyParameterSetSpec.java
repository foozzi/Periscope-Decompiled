package org.spongycastle.jce.spec;

import java.math.BigInteger;

public class GOST3410PublicKeyParameterSetSpec
{
  private BigInteger aFA;
  private BigInteger aFL;
  private BigInteger aFz;
  
  public GOST3410PublicKeyParameterSetSpec(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger2;
    this.aFL = paramBigInteger3;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof GOST3410PublicKeyParameterSetSpec))
    {
      paramObject = (GOST3410PublicKeyParameterSetSpec)paramObject;
      return (this.aFL.equals(paramObject.aFL)) && (this.aFz.equals(paramObject.aFz)) && (this.aFA.equals(paramObject.aFA));
    }
    return false;
  }
  
  public BigInteger getA()
  {
    return this.aFL;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public BigInteger getQ()
  {
    return this.aFA;
  }
  
  public int hashCode()
  {
    return this.aFL.hashCode() ^ this.aFz.hashCode() ^ this.aFA.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec
 * JD-Core Version:    0.7.0.1
 */