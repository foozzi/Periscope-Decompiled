package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

public abstract class BaseKeyFactorySpi
  extends KeyFactorySpi
  implements AsymmetricKeyInfoConverter
{
  public PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof PKCS8EncodedKeySpec)) {
      try
      {
        paramKeySpec = ˊ(PrivateKeyInfo.ﹷ(((PKCS8EncodedKeySpec)paramKeySpec).getEncoded()));
        return paramKeySpec;
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException("encoded key spec not recognised");
      }
    }
    throw new InvalidKeySpecException("key spec not recognised");
  }
  
  public PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof X509EncodedKeySpec)) {
      try
      {
        paramKeySpec = ˋ(SubjectPublicKeyInfo.ן(((X509EncodedKeySpec)paramKeySpec).getEncoded()));
        return paramKeySpec;
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException("encoded key spec not recognised");
      }
    }
    throw new InvalidKeySpecException("key spec not recognised");
  }
  
  public KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramClass.isAssignableFrom(PKCS8EncodedKeySpec.class)) && (paramKey.getFormat().equals("PKCS#8"))) {
      return new PKCS8EncodedKeySpec(paramKey.getEncoded());
    }
    if ((paramClass.isAssignableFrom(X509EncodedKeySpec.class)) && (paramKey.getFormat().equals("X.509"))) {
      return new X509EncodedKeySpec(paramKey.getEncoded());
    }
    throw new InvalidKeySpecException("not implemented yet " + paramKey + " " + paramClass);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.BaseKeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */