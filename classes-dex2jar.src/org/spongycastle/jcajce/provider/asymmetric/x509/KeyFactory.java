package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public class KeyFactory
  extends KeyFactorySpi
{
  protected PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof PKCS8EncodedKeySpec)) {
      try
      {
        paramKeySpec = PrivateKeyInfo.ﹷ(((PKCS8EncodedKeySpec)paramKeySpec).getEncoded());
        PrivateKey localPrivateKey = BouncyCastleProvider.ˏ(paramKeySpec);
        if (localPrivateKey != null) {
          return localPrivateKey;
        }
        throw new InvalidKeySpecException("no factory found for OID: " + paramKeySpec.fW().fK());
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException(paramKeySpec.toString());
      }
    }
    throw new InvalidKeySpecException("Unknown KeySpec type: " + paramKeySpec.getClass().getName());
  }
  
  protected PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof X509EncodedKeySpec)) {
      try
      {
        paramKeySpec = SubjectPublicKeyInfo.ן(((X509EncodedKeySpec)paramKeySpec).getEncoded());
        PublicKey localPublicKey = BouncyCastleProvider.ʼ(paramKeySpec);
        if (localPublicKey != null) {
          return localPublicKey;
        }
        throw new InvalidKeySpecException("no factory found for OID: " + paramKeySpec.hU().fK());
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException(paramKeySpec.toString());
      }
    }
    throw new InvalidKeySpecException("Unknown KeySpec type: " + paramKeySpec.getClass().getName());
  }
  
  protected KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(PKCS8EncodedKeySpec.class)) && (paramKey.getFormat().equals("PKCS#8"))) {
      return new PKCS8EncodedKeySpec(paramKey.getEncoded());
    }
    if ((paramClass.isAssignableFrom(X509EncodedKeySpec.class)) && (paramKey.getFormat().equals("X.509"))) {
      return new X509EncodedKeySpec(paramKey.getEncoded());
    }
    throw new InvalidKeySpecException("not implemented yet " + paramKey + " " + paramClass);
  }
  
  protected Key engineTranslateKey(Key paramKey)
  {
    throw new InvalidKeyException("not implemented yet " + paramKey);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.KeyFactory
 * JD-Core Version:    0.7.0.1
 */