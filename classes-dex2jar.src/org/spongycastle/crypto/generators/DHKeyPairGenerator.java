package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.DHKeyGenerationParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;

public class DHKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private DHKeyGenerationParameters aME;
  
  public AsymmetricCipherKeyPair iF()
  {
    DHKeyGeneratorHelper localDHKeyGeneratorHelper = DHKeyGeneratorHelper.aMF;
    DHParameters localDHParameters = this.aME.kA();
    BigInteger localBigInteger = localDHKeyGeneratorHelper.ˊ(localDHParameters, this.aME.iN());
    return new AsymmetricCipherKeyPair(new DHPublicKeyParameters(localDHKeyGeneratorHelper.ˊ(localDHParameters, localBigInteger), localDHParameters), new DHPrivateKeyParameters(localBigInteger, localDHParameters));
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aME = ((DHKeyGenerationParameters)paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DHKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */