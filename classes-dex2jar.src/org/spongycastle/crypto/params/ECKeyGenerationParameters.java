package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class ECKeyGenerationParameters
  extends KeyGenerationParameters
{
  private ECDomainParameters aQe;
  
  public ECKeyGenerationParameters(ECDomainParameters paramECDomainParameters, SecureRandom paramSecureRandom)
  {
    super(paramSecureRandom, paramECDomainParameters.gy().bitLength());
    this.aQe = paramECDomainParameters;
  }
  
  public ECDomainParameters kF()
  {
    return this.aQe;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ECKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */