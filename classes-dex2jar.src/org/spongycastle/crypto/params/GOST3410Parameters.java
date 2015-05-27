package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class GOST3410Parameters
  implements CipherParameters
{
  private BigInteger aFA;
  private BigInteger aFL;
  private BigInteger aFz;
  
  public GOST3410Parameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger2;
    this.aFL = paramBigInteger3;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GOST3410Parameters)) {
      return false;
    }
    paramObject = (GOST3410Parameters)paramObject;
    return (paramObject.getP().equals(this.aFz)) && (paramObject.getQ().equals(this.aFA)) && (paramObject.getA().equals(this.aFL));
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
    return this.aFz.hashCode() ^ this.aFA.hashCode() ^ this.aFL.hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410Parameters
 * JD-Core Version:    0.7.0.1
 */