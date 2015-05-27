package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi;
import org.spongycastle.jcajce.provider.asymmetric.util.ExtendedInvalidKeySpecException;

public class KeyFactorySpi
  extends BaseKeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof PKCS8EncodedKeySpec)) {
      try
      {
        PrivateKey localPrivateKey = ˊ(PrivateKeyInfo.ﹷ(((PKCS8EncodedKeySpec)paramKeySpec).getEncoded()));
        return localPrivateKey;
      }
      catch (Exception localException)
      {
        try
        {
          paramKeySpec = new BCRSAPrivateCrtKey(org.spongycastle.asn1.pkcs.RSAPrivateKey.ﺑ(((PKCS8EncodedKeySpec)paramKeySpec).getEncoded()));
          return paramKeySpec;
        }
        catch (Exception paramKeySpec)
        {
          throw new ExtendedInvalidKeySpecException("unable to process key spec: " + localException.toString(), localException);
        }
      }
    }
    if ((paramKeySpec instanceof RSAPrivateCrtKeySpec)) {
      return new BCRSAPrivateCrtKey((RSAPrivateCrtKeySpec)paramKeySpec);
    }
    if ((paramKeySpec instanceof RSAPrivateKeySpec)) {
      return new BCRSAPrivateKey((RSAPrivateKeySpec)paramKeySpec);
    }
    throw new InvalidKeySpecException("Unknown KeySpec type: " + paramKeySpec.getClass().getName());
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof RSAPublicKeySpec)) {
      return new BCRSAPublicKey((RSAPublicKeySpec)paramKeySpec);
    }
    return super.engineGeneratePublic(paramKeySpec);
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(RSAPublicKeySpec.class)) && ((paramKey instanceof RSAPublicKey)))
    {
      paramKey = (RSAPublicKey)paramKey;
      return new RSAPublicKeySpec(paramKey.getModulus(), paramKey.getPublicExponent());
    }
    if ((paramClass.isAssignableFrom(RSAPrivateKeySpec.class)) && ((paramKey instanceof java.security.interfaces.RSAPrivateKey)))
    {
      paramKey = (java.security.interfaces.RSAPrivateKey)paramKey;
      return new RSAPrivateKeySpec(paramKey.getModulus(), paramKey.getPrivateExponent());
    }
    if ((paramClass.isAssignableFrom(RSAPrivateCrtKeySpec.class)) && ((paramKey instanceof RSAPrivateCrtKey)))
    {
      paramKey = (RSAPrivateCrtKey)paramKey;
      return new RSAPrivateCrtKeySpec(paramKey.getModulus(), paramKey.getPublicExponent(), paramKey.getPrivateExponent(), paramKey.getPrimeP(), paramKey.getPrimeQ(), paramKey.getPrimeExponentP(), paramKey.getPrimeExponentQ(), paramKey.getCrtCoefficient());
    }
    return super.engineGetKeySpec(paramKey, paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    if ((paramKey instanceof RSAPublicKey)) {
      return new BCRSAPublicKey((RSAPublicKey)paramKey);
    }
    if ((paramKey instanceof RSAPrivateCrtKey)) {
      return new BCRSAPrivateCrtKey((RSAPrivateCrtKey)paramKey);
    }
    if ((paramKey instanceof java.security.interfaces.RSAPrivateKey)) {
      return new BCRSAPrivateKey((java.security.interfaces.RSAPrivateKey)paramKey);
    }
    throw new InvalidKeyException("key type unknown");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    Object localObject = paramPrivateKeyInfo.fW().fK();
    if (RSAUtil.ʾ((ASN1ObjectIdentifier)localObject))
    {
      localObject = org.spongycastle.asn1.pkcs.RSAPrivateKey.ﺑ(paramPrivateKeyInfo.fY());
      if (((org.spongycastle.asn1.pkcs.RSAPrivateKey)localObject).gi().intValue() == 0) {
        return new BCRSAPrivateKey((org.spongycastle.asn1.pkcs.RSAPrivateKey)localObject);
      }
      return new BCRSAPrivateCrtKey(paramPrivateKeyInfo);
    }
    throw new IOException("algorithm identifier " + localObject + " in key not recognised");
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    ASN1ObjectIdentifier localASN1ObjectIdentifier = paramSubjectPublicKeyInfo.hU().fK();
    if (RSAUtil.ʾ(localASN1ObjectIdentifier)) {
      return new BCRSAPublicKey(paramSubjectPublicKeyInfo);
    }
    throw new IOException("algorithm identifier " + localASN1ObjectIdentifier + " in key not recognised");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */