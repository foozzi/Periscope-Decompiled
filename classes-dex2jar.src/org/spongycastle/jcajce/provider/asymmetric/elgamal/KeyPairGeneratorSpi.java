package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.ElGamalKeyPairGenerator;
import org.spongycastle.crypto.generators.ElGamalParametersGenerator;
import org.spongycastle.crypto.params.ElGamalKeyGenerationParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  SecureRandom aFa = new SecureRandom();
  int aFb = 1024;
  boolean aJn = false;
  int aMG = 20;
  ElGamalKeyGenerationParameters aMN;
  ElGamalKeyPairGenerator aXf = new ElGamalKeyPairGenerator();
  
  public KeyPairGeneratorSpi()
  {
    super("ElGamal");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn)
    {
      localObject1 = BouncyCastleProvider.baC.ךּ(this.aFb);
      if (localObject1 != null)
      {
        this.aMN = new ElGamalKeyGenerationParameters(this.aFa, new ElGamalParameters(((DHParameterSpec)localObject1).getP(), ((DHParameterSpec)localObject1).getG(), ((DHParameterSpec)localObject1).getL()));
      }
      else
      {
        localObject1 = new ElGamalParametersGenerator();
        ((ElGamalParametersGenerator)localObject1).ˊ(this.aFb, this.aMG, this.aFa);
        this.aMN = new ElGamalKeyGenerationParameters(this.aFa, ((ElGamalParametersGenerator)localObject1).jT());
      }
      this.aXf.ˊ(this.aMN);
      this.aJn = true;
    }
    Object localObject2 = this.aXf.iF();
    Object localObject1 = (ElGamalPublicKeyParameters)((AsymmetricCipherKeyPair)localObject2).iD();
    localObject2 = (ElGamalPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject2).iE();
    return new KeyPair(new BCElGamalPublicKey((ElGamalPublicKeyParameters)localObject1), new BCElGamalPrivateKey((ElGamalPrivateKeyParameters)localObject2));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if ((!(paramAlgorithmParameterSpec instanceof ElGamalParameterSpec)) && (!(paramAlgorithmParameterSpec instanceof DHParameterSpec))) {
      throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec or an ElGamalParameterSpec");
    }
    if ((paramAlgorithmParameterSpec instanceof ElGamalParameterSpec))
    {
      paramAlgorithmParameterSpec = (ElGamalParameterSpec)paramAlgorithmParameterSpec;
      this.aMN = new ElGamalKeyGenerationParameters(paramSecureRandom, new ElGamalParameters(paramAlgorithmParameterSpec.getP(), paramAlgorithmParameterSpec.getG()));
    }
    else
    {
      paramAlgorithmParameterSpec = (DHParameterSpec)paramAlgorithmParameterSpec;
      this.aMN = new ElGamalKeyGenerationParameters(paramSecureRandom, new ElGamalParameters(paramAlgorithmParameterSpec.getP(), paramAlgorithmParameterSpec.getG(), paramAlgorithmParameterSpec.getL()));
    }
    this.aXf.ˊ(this.aMN);
    this.aJn = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */