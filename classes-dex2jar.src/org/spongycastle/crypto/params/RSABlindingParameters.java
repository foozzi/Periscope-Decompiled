package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;

public class RSABlindingParameters
  implements CipherParameters
{
  private BigInteger aLm;
  private RSAKeyParameters aQF;
  
  public RSAKeyParameters lj()
  {
    return this.aQF;
  }
  
  public BigInteger lk()
  {
    return this.aLm;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.RSABlindingParameters
 * JD-Core Version:    0.7.0.1
 */