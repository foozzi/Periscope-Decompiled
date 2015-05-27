package org.spongycastle.crypto.generators;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.DESedeParameters;

public class DESedeKeyGenerator
  extends DESKeyGenerator
{
  public byte[] iI()
  {
    byte[] arrayOfByte = new byte[this.aFb];
    do
    {
      this.aFa.nextBytes(arrayOfByte);
      DESedeParameters.ı(arrayOfByte);
    } while (DESedeParameters.ᵢ(arrayOfByte, 0, arrayOfByte.length));
    return arrayOfByte;
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aFa = paramKeyGenerationParameters.iN();
    this.aFb = ((paramKeyGenerationParameters.getStrength() + 7) / 8);
    if ((this.aFb == 0) || (this.aFb == 21))
    {
      this.aFb = 24;
      return;
    }
    if (this.aFb == 14)
    {
      this.aFb = 16;
      return;
    }
    if ((this.aFb != 24) && (this.aFb != 16)) {
      throw new IllegalArgumentException("DESede key must be 192 or 128 bits long.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DESedeKeyGenerator
 * JD-Core Version:    0.7.0.1
 */