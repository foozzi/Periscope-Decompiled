package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ua.DSTU4145NamedCurves;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.DSTU4145KeyPairGenerator;
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
  boolean aJn = false;
  String aWI = "DSTU4145";
  Object aWM = null;
  ECKeyPairGenerator aWN = new DSTU4145KeyPairGenerator();
  ECKeyGenerationParameters aWO;
  
  public KeyPairGeneratorSpi()
  {
    super("DSTU4145");
  }
  
  public KeyPair generateKeyPair()
  {
    if (!this.aJn) {
      throw new IllegalStateException("DSTU Key Pair Generator not initialised");
    }
    Object localObject1 = this.aWN.iF();
    Object localObject2 = (ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject1).iD();
    localObject1 = (ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject1).iE();
    if ((this.aWM instanceof org.spongycastle.jce.spec.ECParameterSpec))
    {
      localObject3 = (org.spongycastle.jce.spec.ECParameterSpec)this.aWM;
      localObject2 = new BCDSTU4145PublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3);
      return new KeyPair((PublicKey)localObject2, new BCDSTU4145PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCDSTU4145PublicKey)localObject2, (org.spongycastle.jce.spec.ECParameterSpec)localObject3));
    }
    if (this.aWM == null) {
      return new KeyPair(new BCDSTU4145PublicKey(this.aWI, (ECPublicKeyParameters)localObject2), new BCDSTU4145PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1));
    }
    Object localObject3 = (java.security.spec.ECParameterSpec)this.aWM;
    localObject2 = new BCDSTU4145PublicKey(this.aWI, (ECPublicKeyParameters)localObject2, (java.security.spec.ECParameterSpec)localObject3);
    return new KeyPair((PublicKey)localObject2, new BCDSTU4145PrivateKey(this.aWI, (ECPrivateKeyParameters)localObject1, (BCDSTU4145PublicKey)localObject2, (java.security.spec.ECParameterSpec)localObject3));
  }
  
  public void initialize(int paramInt, SecureRandom paramSecureRandom)
  {
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
      localObject = DSTU4145NamedCurves.ˋ(new ASN1ObjectIdentifier(paramAlgorithmParameterSpec));
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
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dstu.KeyPairGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */