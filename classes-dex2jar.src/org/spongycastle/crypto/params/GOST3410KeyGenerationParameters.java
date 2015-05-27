package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class GOST3410KeyGenerationParameters
  extends KeyGenerationParameters
{
  private GOST3410Parameters aQh;
  
  public GOST3410KeyGenerationParameters(SecureRandom paramSecureRandom, GOST3410Parameters paramGOST3410Parameters)
  {
    super(paramSecureRandom, paramGOST3410Parameters.getP().bitLength() - 1);
    this.aQh = paramGOST3410Parameters;
  }
  
  public GOST3410Parameters kJ()
  {
    return this.aQh;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.GOST3410KeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */