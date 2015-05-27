package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class CramerShoupParameters
  implements CipherParameters
{
  private BigInteger aFz;
  private BigInteger aPL;
  private BigInteger aPM;
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof DSAParameters)) {
      return false;
    }
    paramObject = (CramerShoupParameters)paramObject;
    return (paramObject.getP().equals(this.aFz)) && (paramObject.kr().equals(this.aPL)) && (paramObject.ks().equals(this.aPM));
  }
  
  public BigInteger getP()
  {
    return this.aFz;
  }
  
  public int hashCode()
  {
    return getP().hashCode() ^ kr().hashCode() ^ ks().hashCode();
  }
  
  public BigInteger kr()
  {
    return this.aPL;
  }
  
  public BigInteger ks()
  {
    return this.aPM;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.CramerShoupParameters
 * JD-Core Version:    0.7.0.1
 */