package org.spongycastle.pqc.crypto.gmss;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class GMSSKeyGenerationParameters
  extends KeyGenerationParameters
{
  private GMSSParameters bet;
  
  public GMSSKeyGenerationParameters(SecureRandom paramSecureRandom, GMSSParameters paramGMSSParameters)
  {
    super(paramSecureRandom, 1);
    this.bet = paramGMSSParameters;
  }
  
  public GMSSParameters qI()
  {
    return this.bet;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */