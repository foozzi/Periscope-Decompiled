package org.spongycastle.crypto;

import java.security.SecureRandom;

public class KeyGenerationParameters
{
  private SecureRandom aFa;
  private int aFb;
  
  public KeyGenerationParameters(SecureRandom paramSecureRandom, int paramInt)
  {
    this.aFa = paramSecureRandom;
    this.aFb = paramInt;
  }
  
  public int getStrength()
  {
    return this.aFb;
  }
  
  public SecureRandom iN()
  {
    return this.aFa;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.KeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */