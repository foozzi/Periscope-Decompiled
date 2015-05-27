package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.RSAKeyGenParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.RSAKeyPairGenerator;
import org.spongycastle.crypto.params.RSAKeyGenerationParameters;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  static final BigInteger aXA = BigInteger.valueOf(65537L);
  RSAKeyGenerationParameters aNm = new RSAKeyGenerationParameters(aXA, new SecureRandom(), 2048, 12);
  RSAKeyPairGenerator aXB = new RSAKeyPairGenerator();
  
  public KeyPairGeneratorSpi()
  {
    super("RSA");
    this.aXB.ˊ(this.aNm);
  }
  
  public KeyPair generateKeyPair()
  {
    Object localObject = this.aXB.iF();
    RSAKeyParameters localRSAKeyParameters = (RSAKeyParameters)((AsymmetricCipherKeyPair)localObject).iD();
    localObject = (RSAPrivateCrtKeyParameters)((AsymmetricCipherKeyPair)localObject).iE();
    return new KeyPair(new BCRSAPublicKey(localRSAKeyParameters), new BCRSAPrivateCrtKey((RSAPrivateCrtKeyParameters)localObject));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aNm = new RSAKeyGenerationParameters(aXA, paramSecureRandom, paramInt, 12);
    this.aXB.ˊ(this.aNm);
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof RSAKeyGenParameterSpec)) {
      throw new InvalidAlgorithmParameterException("parameter object not a RSAKeyGenParameterSpec");
    }
    paramAlgorithmParameterSpec = (RSAKeyGenParameterSpec)paramAlgorithmParameterSpec;
    this.aNm = new RSAKeyGenerationParameters(paramAlgorithmParameterSpec.getPublicExponent(), paramSecureRandom, paramAlgorithmParameterSpec.getKeysize(), 12);
    this.aXB.ˊ(this.aNm);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */