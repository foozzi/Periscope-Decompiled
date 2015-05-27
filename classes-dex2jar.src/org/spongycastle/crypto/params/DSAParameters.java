package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class DSAParameters
  implements CipherParameters
{
  private BigInteger aFA;
  private BigInteger aFB;
  private BigInteger aFz;
  private DSAValidationParameters aQc;
  
  public DSAParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this.aFB = paramBigInteger3;
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger2;
  }
  
  public DSAParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, DSAValidationParameters paramDSAValidationParameters)
  {
    this.aFB = paramBigInteger3;
    this.aFz = paramBigInteger1;
    this.aFA = paramBigInteger2;
    this.aQc = paramDSAValidationParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DSAParameters)) {
      return false;
    }
    paramObject = (DSAParameters)paramObject;
    return (paramObject.getP().equals(this.aFz)) && (paramObject.getQ().equals(this.aFA)) && (paramObject.getG().equals(this.aFB));
  }
  
  public BigInteger getG()
  {
    return this.aFB;
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
    return getP().hashCode() ^ getQ().hashCode() ^ getG().hashCode();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAParameters
 * JD-Core Version:    0.7.0.1
 */