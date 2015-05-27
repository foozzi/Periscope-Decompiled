package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.GOST3410KeyPairGenerator;
import org.spongycastle.crypto.params.GOST3410KeyGenerationParameters;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.jce.spec.GOST3410ParameterSpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  SecureRandom aFa = null;
  int aFb = 1024;
  boolean aJn = false;
  GOST3410KeyGenerationParameters aMQ;
  GOST3410KeyPairGenerator aXj = new GOST3410KeyPairGenerator();
  GOST3410ParameterSpec aXk;
  
  public KeyPairGeneratorSpi()
  {
    super("GOST3410");
  }
  
  private void ˊ(GOST3410ParameterSpec paramGOST3410ParameterSpec, SecureRandom paramSecureRandom)
  {
    GOST3410PublicKeyParameterSetSpec localGOST3410PublicKeyParameterSetSpec = paramGOST3410ParameterSpec.oO();
    this.aMQ = new GOST3410KeyGenerationParameters(paramSecureRandom, new GOST3410Parameters(localGOST3410PublicKeyParameterSetSpec.getP(), localGOST3410PublicKeyParameterSetSpec.getQ(), localGOST3410PublicKeyParameterSetSpec.getA()));
    this.aXj.ˊ(this.aMQ);
    this.aJn = true;
    this.aXk = paramGOST3410ParameterSpec;
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn) {
      ˊ(new GOST3410ParameterSpec(CryptoProObjectIdentifiers.ahh.getId()), new SecureRandom());
    }
    Object localObject = this.aXj.iF();
    GOST3410PublicKeyParameters localGOST3410PublicKeyParameters = (GOST3410PublicKeyParameters)((AsymmetricCipherKeyPair)localObject).iD();
    localObject = (GOST3410PrivateKeyParameters)((AsymmetricCipherKeyPair)localObject).iE();
    return new KeyPair(new BCGOST3410PublicKey(localGOST3410PublicKeyParameters, this.aXk), new BCGOST3410PrivateKey((GOST3410PrivateKeyParameters)localObject, this.aXk));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof GOST3410ParameterSpec)) {
      throw new InvalidAlgorithmParameterException("parameter object not a GOST3410ParameterSpec");
    }
    ˊ((GOST3410ParameterSpec)paramAlgorithmParameterSpec, paramSecureRandom);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */