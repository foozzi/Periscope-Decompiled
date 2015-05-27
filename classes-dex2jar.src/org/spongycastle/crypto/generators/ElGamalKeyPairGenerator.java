package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.ElGamalKeyGenerationParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;

public class ElGamalKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private ElGamalKeyGenerationParameters aMN;
  
  public AsymmetricCipherKeyPair iF()
  {
    DHKeyGeneratorHelper localDHKeyGeneratorHelper = DHKeyGeneratorHelper.aMF;
    ElGamalParameters localElGamalParameters = this.aMN.kI();
    DHParameters localDHParameters = new DHParameters(localElGamalParameters.getP(), localElGamalParameters.getG(), null, localElGamalParameters.getL());
    BigInteger localBigInteger = localDHKeyGeneratorHelper.ˊ(localDHParameters, this.aMN.iN());
    return new AsymmetricCipherKeyPair(new ElGamalPublicKeyParameters(localDHKeyGeneratorHelper.ˊ(localDHParameters, localBigInteger), localElGamalParameters), new ElGamalPrivateKeyParameters(localBigInteger, localElGamalParameters));
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aMN = ((ElGamalKeyGenerationParameters)paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.ElGamalKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */