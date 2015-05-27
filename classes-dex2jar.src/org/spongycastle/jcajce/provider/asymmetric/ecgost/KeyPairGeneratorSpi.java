package org.spongycastle.jcajce.provider.asymmetric.ecgost;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveGenParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;

public class KeyPairGeneratorSpi
  extends KeyPairGenerator
{
  SecureRandom aFa = null;
  int aFb = 239;
  boolean aJn = false;
  String aWI = "ECGOST3410";
  Object aWM = null;
  ECKeyPairGenerator aWN = new ECKeyPairGenerator();
  ECKeyGenerationParameters aWO;
  
  public KeyPairGeneratorSpi()
  {
    super("ECGOST3410");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn) {
      throw new IllegalStateException("EC Key Pair Generator not initialised");
    }
    Object localObject1 = this.aWN.iF();
    Object localObject2 = (ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject1).iD();
    localObject1 = (ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject1).iE();
    if ((this.aWM instanceof org.spongycastle.jce.spec.ECParameterSpec))
    {
      localObject3 = (org.spongycastle.jce.spec.ECParameterSpec)this.aWM;
      localObject2 = new BCECGOST3410PublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3);
      return new KeyPair((PublicKey)localObject2, new BCECGOST3410PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCECGOST3410PublicKey)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3));
    }
    if (this.aWM == null) {
      return new KeyPair(new BCECGOST3410PublicKey(this.aWI, (ECPublicKeyParameters)localObject2), new BCECGOST3410PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1));
    }
    Object localObject3 = (java.security.spec.ECParameterSpec)this.aWM;
    localObject2 = new BCECGOST3410PublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (java.security.spec.ECParameterSpec)localObject3);
    return new KeyPair((PublicKey)localObject2, new BCECGOST3410PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCECGOST3410PublicKey)localObject2, (java.security.spec.ECParameterSpec)localObject3));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
    if (this.aWM != null) {
      try
      {
        initialize((ECGenParameterSpec)this.aWM, paramSecureRandom);
        return;
      }
      catch (InvalidAlgorithmParameterException paramSecureRandom)
      {
        throw new InvalidParameterException("key size not configurable.");
      }
    }
    throw new InvalidParameterException("unknown key size.");
  }
  
  public void initialize(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    Object localObject;
    if ((paramAlgorithmParameterSpec instanceof org.spongycastle.jce.spec.ECParameterSpec))
    {
      localObject = (org.spongycastle.jce.spec.ECParameterSpec)paramAlgorithmParameterSpec;
      this.aWM = paramAlgorithmParameterSpec;
      this.aWO = new ECKeyGenerationParameters(new ECDomainParameters(((org.spongycastle.jce.spec.ECParameterSpec)localObject).iv(), ((org.spongycastle.jce.spec.ECParameterSpec)localObject).iw(), ((org.spongycastle.jce.spec.ECParameterSpec)localObject).gy()), paramSecureRandom);
      this.aWN.ˊ(this.aWO);
      this.aJn = true;
      return;
    }
    if ((paramAlgorithmParameterSpec instanceof java.security.spec.ECParameterSpec))
    {
      localObject = (java.security.spec.ECParameterSpec)paramAlgorithmParameterSpec;
      this.aWM = paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = EC5Util.ˊ(((java.security.spec.ECParameterSpec)localObject).getCurve());
      this.aWO = new ECKeyGenerationParameters(new ECDomainParameters(paramAlgorithmParameterSpec, EC5Util.ˊ(paramAlgorithmParameterSpec, ((java.security.spec.ECParameterSpec)localObject).getGenerator(), false), ((java.security.spec.ECParameterSpec)localObject).getOrder(), BigInteger.valueOf(((java.security.spec.ECParameterSpec)localObject).getCofactor())), paramSecureRandom);
      this.aWN.ˊ(this.aWO);
      this.aJn = true;
      return;
    }
    if (((paramAlgorithmParameterSpec instanceof ECGenParameterSpec)) || ((paramAlgorithmParameterSpec instanceof ECNamedCurveGenParameterSpec)))
    {
      if ((paramAlgorithmParameterSpec instanceof ECGenParameterSpec)) {
        paramAlgorithmParameterSpec = ((ECGenParameterSpec)paramAlgorithmParameterSpec).getName();
      } else {
        paramAlgorithmParameterSpec = ((ECNamedCurveGenParameterSpec)paramAlgorithmParameterSpec).getName();
      }
      localObject = ECGOST3410NamedCurves.ʶ(paramAlgorithmParameterSpec);
      if (localObject == null) {
        throw new InvalidAlgorithmParameterException("unknown curve name: " + paramAlgorithmParameterSpec);
      }
      this.aWM = new ECNamedCurveSpec(paramAlgorithmParameterSpec, ((ECDomainParameters)localObject).iv(), ((ECDomainParameters)localObject).iw(), ((ECDomainParameters)localObject).gy(), ((ECDomainParameters)localObject).ix(), ((ECDomainParameters)localObject).getSeed());
      paramAlgorithmParameterSpec = (java.security.spec.ECParameterSpec)this.aWM;
      localObject = EC5Util.ˊ(paramAlgorithmParameterSpec.getCurve());
      this.aWO = new ECKeyGenerationParameters(new ECDomainParameters((ECCurve)localObject, EC5Util.ˊ((ECCurve)localObject, paramAlgorithmParameterSpec.getGenerator(), false), paramAlgorithmParameterSpec.getOrder(), BigInteger.valueOf(paramAlgorithmParameterSpec.getCofactor())), paramSecureRandom);
      this.aWN.ˊ(this.aWO);
      this.aJn = true;
      return;
    }
    if ((paramAlgorithmParameterSpec == null) && (BouncyCastleProvider.baC.nN() != null))
    {
      localObject = BouncyCastleProvider.baC.nN();
      this.aWM = paramAlgorithmParameterSpec;
      this.aWO = new ECKeyGenerationParameters(new ECDomainParameters(((org.spongycastle.jce.spec.ECParameterSpec)localObject).iv(), ((org.spongycastle.jce.spec.ECParameterSpec)localObject).iw(), ((org.spongycastle.jce.spec.ECParameterSpec)localObject).gy()), paramSecureRandom);
      this.aWN.ˊ(this.aWO);
      this.aJn = true;
      return;
    }
    if ((paramAlgorithmParameterSpec == null) && (BouncyCastleProvider.baC.nN() == null)) {
      throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
    }
    throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + paramAlgorithmParameterSpec.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ecgost.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */