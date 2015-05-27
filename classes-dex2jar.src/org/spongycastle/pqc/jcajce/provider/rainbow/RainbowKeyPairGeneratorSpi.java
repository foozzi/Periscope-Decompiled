package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.pqc.crypto.rainbow.RainbowKeyGenerationParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowKeyPairGenerator;
import org.spongycastle.pqc.crypto.rainbow.RainbowParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;
import org.spongycastle.pqc.jcajce.spec.RainbowParameterSpec;

public class RainbowKeyPairGeneratorSpi
  extends KeyPairGenerator
{
  SecureRandom aFa = new SecureRandom();
  int aFb = 1024;
  boolean aJn = false;
  RainbowKeyGenerationParameters biF;
  RainbowKeyPairGenerator biG = new RainbowKeyPairGenerator();
  
  public RainbowKeyPairGeneratorSpi()
  {
    super("Rainbow");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn)
    {
      this.biF = new RainbowKeyGenerationParameters(this.aFa, new RainbowParameters(new RainbowParameterSpec().qC()));
      this.biG.ˊ(this.biF);
      this.aJn = true;
    }
    Object localObject = this.biG.iF();
    RainbowPublicKeyParameters localRainbowPublicKeyParameters = (RainbowPublicKeyParameters)((AsymmetricCipherKeyPair)localObject).iD();
    localObject = (RainbowPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject).iE();
    return new KeyPair(new BCRainbowPublicKey(localRainbowPublicKeyParameters), new BCRainbowPrivateKey((RainbowPrivateKeyParameters)localObject));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof RainbowParameterSpec)) {
      throw new InvalidAlgorithmParameterException("parameter object not a RainbowParameterSpec");
    }
    this.biF = new RainbowKeyGenerationParameters(paramSecureRandom, new RainbowParameters(((RainbowParameterSpec)paramAlgorithmParameterSpec).qC()));
    this.biG.ˊ(this.biF);
    this.aJn = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */