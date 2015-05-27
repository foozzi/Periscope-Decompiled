package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.DSAKeyPairGenerator;
import org.spongycastle.crypto.generators.DSAParametersGenerator;
import org.spongycastle.crypto.params.DSAKeyGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  SecureRandom aFa = new SecureRandom();
  int aFb = 1024;
  boolean aJn = false;
  int aMG = 20;
  DSAKeyGenerationParameters aMH;
  DSAKeyPairGenerator aWH = new DSAKeyPairGenerator();
  
  public KeyPairGeneratorSpi()
  {
    super("DSA");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn)
    {
      localObject1 = new DSAParametersGenerator();
      ((DSAParametersGenerator)localObject1).ˊ(this.aFb, this.aMG, this.aFa);
      this.aMH = new DSAKeyGenerationParameters(this.aFa, ((DSAParametersGenerator)localObject1).jP());
      this.aWH.ˊ(this.aMH);
      this.aJn = true;
    }
    Object localObject2 = this.aWH.iF();
    Object localObject1 = (DSAPublicKeyParameters)((AsymmetricCipherKeyPair)localObject2).iD();
    localObject2 = (DSAPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject2).iE();
    return new KeyPair(new BCDSAPublicKey((DSAPublicKeyParameters)localObject1), new BCDSAPrivateKey((DSAPrivateKeyParameters)localObject2));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    if ((paramInt < 512) || (paramInt > 4096) || ((paramInt < 1024) && (paramInt % 64 != 0)) || ((paramInt >= 1024) && (paramInt % 1024 != 0))) {
      throw new InvalidParameterException("strength must be from 512 - 4096 and a multiple of 1024 above 1024");
    }
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof DSAParameterSpec)) {
      throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
    }
    paramAlgorithmParameterSpec = (DSAParameterSpec)paramAlgorithmParameterSpec;
    this.aMH = new DSAKeyGenerationParameters(paramSecureRandom, new DSAParameters(paramAlgorithmParameterSpec.getP(), paramAlgorithmParameterSpec.getQ(), paramAlgorithmParameterSpec.getG()));
    this.aWH.ˊ(this.aMH);
    this.aJn = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */