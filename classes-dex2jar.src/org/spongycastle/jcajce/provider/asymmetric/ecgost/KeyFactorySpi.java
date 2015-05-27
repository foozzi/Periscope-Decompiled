package org.spongycastle.jcajce.provider.asymmetric.ecgost;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECParameterSpec;

public class KeyFactorySpi
  extends BaseKeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof org.spongycastle.jce.spec.ECPrivateKeySpec)) {
      return new BCECGOST3410PrivateKey((org.spongycastle.jce.spec.ECPrivateKeySpec)paramKeySpec);
    }
    if ((paramKeySpec instanceof java.security.spec.ECPrivateKeySpec)) {
      return new BCECGOST3410PrivateKey((java.security.spec.ECPrivateKeySpec)paramKeySpec);
    }
    return super.engineGeneratePrivate(paramKeySpec);
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof org.spongycastle.jce.spec.ECPublicKeySpec)) {
      return new BCECGOST3410PublicKey((org.spongycastle.jce.spec.ECPublicKeySpec)paramKeySpec);
    }
    if ((paramKeySpec instanceof java.security.spec.ECPublicKeySpec)) {
      return new BCECGOST3410PublicKey((java.security.spec.ECPublicKeySpec)paramKeySpec);
    }
    return super.engineGeneratePublic(paramKeySpec);
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(java.security.spec.ECPublicKeySpec.class)) && ((paramKey instanceof ECPublicKey)))
    {
      paramKey = (ECPublicKey)paramKey;
      if (paramKey.getParams() != null) {
        return new java.security.spec.ECPublicKeySpec(paramKey.getW(), paramKey.getParams());
      }
      paramClass = BouncyCastleProvider.baC.nN();
      return new java.security.spec.ECPublicKeySpec(paramKey.getW(), EC5Util.ˊ(EC5Util.ˎ(paramClass.iv(), paramClass.getSeed()), paramClass));
    }
    if ((paramClass.isAssignableFrom(java.security.spec.ECPrivateKeySpec.class)) && ((paramKey instanceof ECPrivateKey)))
    {
      paramKey = (ECPrivateKey)paramKey;
      if (paramKey.getParams() != null) {
        return new java.security.spec.ECPrivateKeySpec(paramKey.getS(), paramKey.getParams());
      }
      paramClass = BouncyCastleProvider.baC.nN();
      return new java.security.spec.ECPrivateKeySpec(paramKey.getS(), EC5Util.ˊ(EC5Util.ˎ(paramClass.iv(), paramClass.getSeed()), paramClass));
    }
    if ((paramClass.isAssignableFrom(org.spongycastle.jce.spec.ECPublicKeySpec.class)) && ((paramKey instanceof ECPublicKey)))
    {
      paramKey = (ECPublicKey)paramKey;
      if (paramKey.getParams() != null) {
        return new org.spongycastle.jce.spec.ECPublicKeySpec(EC5Util.ˊ(paramKey.getParams(), paramKey.getW(), false), EC5Util.ˊ(paramKey.getParams(), false));
      }
      paramClass = BouncyCastleProvider.baC.nN();
      return new org.spongycastle.jce.spec.ECPublicKeySpec(EC5Util.ˊ(paramKey.getParams(), paramKey.getW(), false), paramClass);
    }
    if ((paramClass.isAssignableFrom(org.spongycastle.jce.spec.ECPrivateKeySpec.class)) && ((paramKey instanceof ECPrivateKey)))
    {
      paramKey = (ECPrivateKey)paramKey;
      if (paramKey.getParams() != null) {
        return new org.spongycastle.jce.spec.ECPrivateKeySpec(paramKey.getS(), EC5Util.ˊ(paramKey.getParams(), false));
      }
      paramClass = BouncyCastleProvider.baC.nN();
      return new org.spongycastle.jce.spec.ECPrivateKeySpec(paramKey.getS(), paramClass);
    }
    return super.engineGetKeySpec(paramKey, paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    throw new InvalidKeyException("key type unknown");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramPrivateKeyInfo.fW().fK();
    if (localASN1ObjectIdentifier.equals(CryptoProObjectIdentifiers.ahd)) {
      return new BCECGOST3410PrivateKey(paramPrivateKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramSubjectPublicKeyInfo.hU().fK();
    if (localASN1ObjectIdentifier.equals(CryptoProObjectIdentifiers.ahd)) {
      return new BCECGOST3410PublicKey(paramSubjectPublicKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */