package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.FixedPointCombMultiplier;
import org.spongycastle.math.ec.WNafUtil;

public class ECKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator, ECConstants
{
  SecureRandom aFa;
  ECDomainParameters aMM;
  
  public AsymmetricCipherKeyPair iF()
  {
    BigInteger localBigInteger1 = this.aMM.gy();
    int i = localBigInteger1.bitLength();
    BigInteger localBigInteger2;
    do
    {
      localBigInteger2 = new BigInteger(i, this.aFa);
    } while ((localBigInteger2.compareTo(aKc) < 0) || (localBigInteger2.compareTo(localBigInteger1) >= 0) || (WNafUtil.ᐨ(localBigInteger2) < i >>> 2));
    return new AsymmetricCipherKeyPair(new ECPublicKeyParameters(jS().ˋ(this.aMM.iw(), localBigInteger2), this.aMM), new ECPrivateKeyParameters(localBigInteger2, this.aMM));
  }
  
  protected ECMultiplier jS()
  {
    return new FixedPointCombMultiplier();
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    paramKeyGenerationParameters = (ECKeyGenerationParameters)paramKeyGenerationParameters;
    this.aFa = paramKeyGenerationParameters.iN();
    this.aMM = paramKeyGenerationParameters.kF();
    if (this.aFa == null) {
      this.aFa = new SecureRandom();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.ECKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */