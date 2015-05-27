package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;
import org.spongycastle.jce.interfaces.GOST3410Params;
import org.spongycastle.jce.interfaces.GOST3410PrivateKey;
import org.spongycastle.jce.interfaces.GOST3410PublicKey;
import org.spongycastle.jce.spec.GOST3410PrivateKeySpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;
import org.spongycastle.jce.spec.GOST3410PublicKeySpec;

public class KeyFactorySpi
  extends BaseKeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof GOST3410PrivateKeySpec)) {
      return new BCGOST3410PrivateKey((GOST3410PrivateKeySpec)paramKeySpec);
    }
    return super.engineGeneratePrivate(paramKeySpec);
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof GOST3410PublicKeySpec)) {
      return new BCGOST3410PublicKey((GOST3410PublicKeySpec)paramKeySpec);
    }
    return super.engineGeneratePublic(paramKeySpec);
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(GOST3410PublicKeySpec.class)) && ((paramKey instanceof GOST3410PublicKey)))
    {
      paramKey = (GOST3410PublicKey)paramKey;
      paramClass = paramKey.nH().oO();
      return new GOST3410PublicKeySpec(paramKey.getY(), paramClass.getP(), paramClass.getQ(), paramClass.getA());
    }
    if ((paramClass.isAssignableFrom(GOST3410PrivateKeySpec.class)) && ((paramKey instanceof GOST3410PrivateKey)))
    {
      paramKey = (GOST3410PrivateKey)paramKey;
      paramClass = paramKey.nH().oO();
      return new GOST3410PrivateKeySpec(paramKey.getX(), paramClass.getP(), paramClass.getQ(), paramClass.getA());
    }
    return super.engineGetKeySpec(paramKey, paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    if ((paramKey instanceof GOST3410PublicKey)) {
      return new BCGOST3410PublicKey((GOST3410PublicKey)paramKey);
    }
    if ((paramKey instanceof GOST3410PrivateKey)) {
      return new BCGOST3410PrivateKey((GOST3410PrivateKey)paramKey);
    }
    throw new InvalidKeyException("key type unknown");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramPrivateKeyInfo.fW().fK();
    if (localASN1ObjectIdentifier.equals(CryptoProObjectIdentifiers.ahc)) {
      return new BCGOST3410PrivateKey(paramPrivateKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramSubjectPublicKeyInfo.hU().fK();
    if (localASN1ObjectIdentifier.equals(CryptoProObjectIdentifiers.ahc)) {
      return new BCGOST3410PublicKey(paramSubjectPublicKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.KeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */