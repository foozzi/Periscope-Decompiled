package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.math.ec.WNafUtil;

public class GOST3410KeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private GOST3410KeyGenerationParameters aMQ;
  
  public AsymmetricCipherKeyPair iF()
  {
    GOST3410Parameters localGOST3410Parameters = this.aMQ.kJ();
    SecureRandom localSecureRandom = this.aMQ.iN();
    BigInteger localBigInteger1 = localGOST3410Parameters.getQ();
    BigInteger localBigInteger2 = localGOST3410Parameters.getP();
    BigInteger localBigInteger3 = localGOST3410Parameters.getA();
    BigInteger localBigInteger4;
    do
    {
      localBigInteger4 = new BigInteger(256, localSecureRandom);
    } while ((localBigInteger4.signum() < 1) || (localBigInteger4.compareTo(localBigInteger1) >= 0) || (WNafUtil.ᐨ(localBigInteger4) < 64));
    return new AsymmetricCipherKeyPair(new GOST3410PublicKeyParameters(localBigInteger3.modPow(localBigInteger4, localBigInteger2), localGOST3410Parameters), new GOST3410PrivateKeyParameters(localBigInteger4, localGOST3410Parameters));
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.aMQ = ((GOST3410KeyGenerationParameters)paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.GOST3410KeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */