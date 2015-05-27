package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class DSAKeyGenerationParameters
  extends KeyGenerationParameters
{
  private DSAParameters aQa;
  
  public DSAKeyGenerationParameters(SecureRandom paramSecureRandom, DSAParameters paramDSAParameters)
  {
    super(paramSecureRandom, paramDSAParameters.getP().bitLength() - 1);
    this.aQa = paramDSAParameters;
  }
  
  public DSAParameters kB()
  {
    return this.aQa;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DSAKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */