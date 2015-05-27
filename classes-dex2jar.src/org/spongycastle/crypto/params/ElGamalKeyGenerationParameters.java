package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class ElGamalKeyGenerationParameters
  extends KeyGenerationParameters
{
  private ElGamalParameters aQg;
  
  public ElGamalKeyGenerationParameters(SecureRandom paramSecureRandom, ElGamalParameters paramElGamalParameters)
  {
    super(paramSecureRandom, ˊ(paramElGamalParameters));
    this.aQg = paramElGamalParameters;
  }
  
  static int ˊ(ElGamalParameters paramElGamalParameters)
  {
    if (paramElGamalParameters.getL() != 0) {
      return paramElGamalParameters.getL();
    }
    return paramElGamalParameters.getP().bitLength();
  }
  
  public ElGamalParameters kI()
  {
    return this.aQg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ElGamalKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */