package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class DHKeyGenerationParameters
  extends KeyGenerationParameters
{
  private DHParameters aPW;
  
  public DHKeyGenerationParameters(SecureRandom paramSecureRandom, DHParameters paramDHParameters)
  {
    super(paramSecureRandom, ˊ(paramDHParameters));
    this.aPW = paramDHParameters;
  }
  
  static int ˊ(DHParameters paramDHParameters)
  {
    if (paramDHParameters.getL() != 0) {
      return paramDHParameters.getL();
    }
    return paramDHParameters.getP().bitLength();
  }
  
  public DHParameters kA()
  {
    return this.aPW;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DHKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */