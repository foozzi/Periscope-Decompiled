package org.spongycastle.crypto;

import java.security.SecureRandom;

public class CipherKeyGenerator
{
  public SecureRandom aFa;
  public int aFb;
  
  public byte[] iI()
  {
    byte[] arrayOfByte = new byte[this.aFb];
    this.aFa.nextBytes(arrayOfByte);
    return arrayOfByte;
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aFa = paramKeyGenerationParameters.iN();
    this.aFb = ((paramKeyGenerationParameters.getStrength() + 7) / 8);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.CipherKeyGenerator
 * JD-Core Version:    0.7.0.1
 */