package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.security.spec.KeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;

public class KeyFactorySpi
  extends BaseKeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof DSAPrivateKeySpec)) {
      return new BCDSAPrivateKey((DSAPrivateKeySpec)paramKeySpec);
    }
    return super.engineGeneratePrivate(paramKeySpec);
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof DSAPublicKeySpec)) {
      return new BCDSAPublicKey((DSAPublicKeySpec)paramKeySpec);
    }
    return super.engineGeneratePublic(paramKeySpec);
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(DSAPublicKeySpec.class)) && ((paramKey instanceof DSAPublicKey)))
    {
      paramKey = (DSAPublicKey)paramKey;
      return new DSAPublicKeySpec(paramKey.getY(), paramKey.getParams().getP(), paramKey.getParams().getQ(), paramKey.getParams().getG());
    }
    if ((paramClass.isAssignableFrom(DSAPrivateKeySpec.class)) && ((paramKey instanceof DSAPrivateKey)))
    {
      paramKey = (DSAPrivateKey)paramKey;
      return new DSAPrivateKeySpec(paramKey.getX(), paramKey.getParams().getP(), paramKey.getParams().getQ(), paramKey.getParams().getG());
    }
    return super.engineGetKeySpec(paramKey, paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    if ((paramKey instanceof DSAPublicKey)) {
      return new BCDSAPublicKey((DSAPublicKey)paramKey);
    }
    if ((paramKey instanceof DSAPrivateKey)) {
      return new BCDSAPrivateKey((DSAPrivateKey)paramKey);
    }
    throw new InvalidKeyException("key type unknown");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramPrivateKeyInfo.fW().fK();
    if (DSAUtil.ι(localASN1ObjectIdentifier)) {
      return new BCDSAPrivateKey(paramPrivateKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramSubjectPublicKeyInfo.hU().fK();
    if (DSAUtil.ι(localASN1ObjectIdentifier)) {
      return new BCDSAPublicKey(paramSubjectPublicKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */