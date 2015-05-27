package org.spongycastle.crypto.generators;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.DESParameters;

public class DESKeyGenerator
  extends CipherKeyGenerator
{
  public byte[] iI()
  {
    byte[] arrayOfByte = new byte[8];
    do
    {
      this.aFa.nextBytes(arrayOfByte);
      DESParameters.ı(arrayOfByte);
    } while (DESParameters.ⁱ(arrayOfByte, 0));
    return arrayOfByte;
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    super.ˊ(paramKeyGenerationParameters);
    if ((this.aFb == 0) || (this.aFb == 7))
    {
      this.aFb = 8;
      return;
    }
    if (this.aFb != 8) {
      throw new IllegalArgumentException("DES key must be 64 bits long.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DESKeyGenerator
 * JD-Core Version:    0.7.0.1
 */