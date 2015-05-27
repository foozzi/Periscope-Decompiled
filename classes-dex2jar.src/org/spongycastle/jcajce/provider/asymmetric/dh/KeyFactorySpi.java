package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;

public class KeyFactorySpi
  extends BaseKeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof DHPrivateKeySpec)) {
      return new BCDHPrivateKey((DHPrivateKeySpec)paramKeySpec);
    }
    return super.engineGeneratePrivate(paramKeySpec);
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof DHPublicKeySpec)) {
      return new BCDHPublicKey((DHPublicKeySpec)paramKeySpec);
    }
    return super.engineGeneratePublic(paramKeySpec);
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(DHPrivateKeySpec.class)) && ((paramKey instanceof DHPrivateKey)))
    {
      paramKey = (DHPrivateKey)paramKey;
      return new DHPrivateKeySpec(paramKey.getX(), paramKey.getParams().getP(), paramKey.getParams().getG());
    }
    if ((paramClass.isAssignableFrom(DHPublicKeySpec.class)) && ((paramKey instanceof DHPublicKey)))
    {
      paramKey = (DHPublicKey)paramKey;
      return new DHPublicKeySpec(paramKey.getY(), paramKey.getParams().getP(), paramKey.getParams().getG());
    }
    return super.engineGetKeySpec(paramKey, paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    if ((paramKey instanceof DHPublicKey)) {
      return new BCDHPublicKey((DHPublicKey)paramKey);
    }
    if ((paramKey instanceof DHPrivateKey)) {
      return new BCDHPrivateKey((DHPrivateKey)paramKey);
    }
    throw new InvalidKeyException("key type unknown");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramPrivateKeyInfo.fW().fK();
    if (localASN1ObjectIdentifier.equals(PKCSObjectIdentifiers.aqE)) {
      return new BCDHPrivateKey(paramPrivateKeyInfo);
    }
    if (localASN1ObjectIdentifier.equals(X9ObjectIdentifiers.aEI)) {
      return new BCDHPrivateKey(paramPrivateKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramSubjectPublicKeyInfo.hU().fK();
    if (localASN1ObjectIdentifier.equals(PKCSObjectIdentifiers.aqE)) {
      return new BCDHPublicKey(paramSubjectPublicKeyInfo);
    }
    if (localASN1ObjectIdentifier.equals(X9ObjectIdentifiers.aEI)) {
      return new BCDHPublicKey(paramSubjectPublicKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */