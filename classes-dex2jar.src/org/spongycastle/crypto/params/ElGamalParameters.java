package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class ElGamalParameters
  implements CipherParameters
{
  private BigInteger aFB;
  private BigInteger aFz;
  private int avO;
  
  public ElGamalParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this(paramBigInteger1, paramBigInteger2, 0);
  }
  
  public ElGamalParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, int paramInt)
  {
    this.aFB = paramBigInteger2;
    this.aFz = paramBigInteger1;
    this.avO = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ElGamalParameters)) {
      return false;
    }
    paramObject = (ElGamalParameters)paramObject;
    return (paramObject.getP().equals(this.aFz)) && (paramObject.getG().equals(this.aFB)) && (paramObject.getL() == this.avO);
  }
  
  public BigInteger getG()
  {
    return this.aFB;
  }
  
  public int getL()
  {
    return this.avO;
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public int hashCode()
  {
    return (getP().hashCode() ^ getG().hashCode()) + this.avO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ElGamalParameters
 * JD-Core Version:    0.7.0.1
 */