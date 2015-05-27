package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.CramerShoupKeyGenerationParameters;
import org.spongycastle.crypto.params.CramerShoupParameters;
import org.spongycastle.crypto.params.CramerShoupPrivateKeyParameters;
import org.spongycastle.crypto.params.CramerShoupPublicKeyParameters;
import org.spongycastle.util.BigIntegers;

public class CramerShoupKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private CramerShoupKeyGenerationParameters aMD;
  
  private BigInteger ˊ(BigInteger paramBigInteger, SecureRandom paramSecureRandom)
  {
    return BigIntegers.ˏ(ONE, paramBigInteger.subtract(ONE), paramSecureRandom);
  }
  
  private CramerShoupPrivateKeyParameters ˊ(SecureRandom paramSecureRandom, CramerShoupParameters paramCramerShoupParameters)
  {
    BigInteger localBigInteger = paramCramerShoupParameters.getP();
    return new CramerShoupPrivateKeyParameters(paramCramerShoupParameters, ˊ(localBigInteger, paramSecureRandom), ˊ(localBigInteger, paramSecureRandom), ˊ(localBigInteger, paramSecureRandom), ˊ(localBigInteger, paramSecureRandom), ˊ(localBigInteger, paramSecureRandom));
  }
  
  private CramerShoupPublicKeyParameters ˊ(CramerShoupParameters paramCramerShoupParameters, CramerShoupPrivateKeyParameters paramCramerShoupPrivateKeyParameters)
  {
    BigInteger localBigInteger1 = paramCramerShoupParameters.kr();
    BigInteger localBigInteger2 = paramCramerShoupParameters.ks();
    BigInteger localBigInteger3 = paramCramerShoupParameters.getP();
    return new CramerShoupPublicKeyParameters(paramCramerShoupParameters, localBigInteger1.modPow(paramCramerShoupPrivateKeyParameters.kt(), localBigInteger3).multiply(localBigInteger2.modPow(paramCramerShoupPrivateKeyParameters.ku(), localBigInteger3)), localBigInteger1.modPow(paramCramerShoupPrivateKeyParameters.kv(), localBigInteger3).multiply(localBigInteger2.modPow(paramCramerShoupPrivateKeyParameters.kw(), localBigInteger3)), localBigInteger1.modPow(paramCramerShoupPrivateKeyParameters.kx(), localBigInteger3));
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    Object localObject = this.aMD.kq();
    CramerShoupPrivateKeyParameters localCramerShoupPrivateKeyParameters = ˊ(this.aMD.iN(), (CramerShoupParameters)localObject);
    localObject = ˊ((CramerShoupParameters)localObject, localCramerShoupPrivateKeyParameters);
    localCramerShoupPrivateKeyParameters.ˊ((CramerShoupPublicKeyParameters)localObject);
    return new AsymmetricCipherKeyPair((AsymmetricKeyParameter)localObject, localCramerShoupPrivateKeyParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.CramerShoupKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */