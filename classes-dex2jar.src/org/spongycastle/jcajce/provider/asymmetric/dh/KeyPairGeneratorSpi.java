package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.spongycastle.crypto.generators.DHParametersGenerator;
import org.spongycastle.crypto.params.DHKeyGenerationParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.util.Integers;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  private static Hashtable NW = new Hashtable();
  private static Object lock = new Object();
  SecureRandom aFa = new SecureRandom();
  int aFb = 1024;
  boolean aJn = false;
  DHKeyGenerationParameters aME;
  int aMG = 20;
  DHBasicKeyPairGenerator aWB = new DHBasicKeyPairGenerator();
  
  public KeyPairGeneratorSpi()
  {
    super("DH");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn)
    {
      Integer localInteger = Integers.valueOf(this.aFb);
      if (NW.containsKey(localInteger))
      {
        this.aME = ((DHKeyGenerationParameters)NW.get(localInteger));
      }
      else
      {
        ??? = BouncyCastleProvider.baC.ךּ(this.aFb);
        if (??? != null) {
          this.aME = new DHKeyGenerationParameters(this.aFa, new DHParameters(((DHParameterSpec)???).getP(), ((DHParameterSpec)???).getG(), null, ((DHParameterSpec)???).getL()));
        } else {
          synchronized (lock)
          {
            if (NW.containsKey(localInteger))
            {
              this.aME = ((DHKeyGenerationParameters)NW.get(localInteger));
            }
            else
            {
              DHParametersGenerator localDHParametersGenerator = new DHParametersGenerator();
              localDHParametersGenerator.ˊ(this.aFb, this.aMG, this.aFa);
              this.aME = new DHKeyGenerationParameters(this.aFa, localDHParametersGenerator.jO());
              NW.put(localInteger, this.aME);
            }
          }
        }
      }
      this.aWB.ˊ(this.aME);
      this.aJn = true;
    }
    ??? = this.aWB.iF();
    DHPublicKeyParameters localDHPublicKeyParameters = (DHPublicKeyParameters)((AsymmetricCipherKeyPair)???).iD();
    ??? = (DHPrivateKeyParameters)((AsymmetricCipherKeyPair)???).iE();
    return new KeyPair(new BCDHPublicKey(localDHPublicKeyParameters), new BCDHPrivateKey((DHPrivateKeyParameters)???));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof DHParameterSpec)) {
      throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec");
    }
    paramAlgorithmParameterSpec = (DHParameterSpec)paramAlgorithmParameterSpec;
    this.aME = new DHKeyGenerationParameters(paramSecureRandom, new DHParameters(paramAlgorithmParameterSpec.getP(), paramAlgorithmParameterSpec.getG(), null, paramAlgorithmParameterSpec.getL()));
    this.aWB.ˊ(this.aME);
    this.aJn = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */