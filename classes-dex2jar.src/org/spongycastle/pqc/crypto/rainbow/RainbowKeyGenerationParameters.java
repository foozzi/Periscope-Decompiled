package org.spongycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class RainbowKeyGenerationParameters
  extends KeyGenerationParameters
{
  private RainbowParameters bhR;
  
  public RainbowKeyGenerationParameters(SecureRandom paramSecureRandom, RainbowParameters paramRainbowParameters)
  {
    super(paramSecureRandom, paramRainbowParameters.qC()[(paramRainbowParameters.qC().length - 1)] - paramRainbowParameters.qC()[0]);
    this.bhR = paramRainbowParameters;
  }
  
  public RainbowParameters rP()
  {
    return this.bhR;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */