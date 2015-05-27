package org.spongycastle.jcajce.provider.symmetric.util;

import java.lang.reflect.Constructor;
import java.security.InvalidKeyException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactorySpi;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

public class BaseSecretKeyFactory
  extends SecretKeyFactorySpi
  implements PBE
{
  public String aZp;
  public ASN1ObjectIdentifier aZw;
  
  public BaseSecretKeyFactory(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.aZp = paramString;
    this.aZw = paramASN1ObjectIdentifier;
  }
  
  public SecretKey engineGenerateSecret(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof SecretKeySpec)) {
      return (SecretKey)paramKeySpec;
    }
    throw new InvalidKeySpecException("Invalid KeySpec");
  }
  
  public KeySpec engineGetKeySpec(SecretKey paramSecretKey, Class paramClass)
  {
    if (paramClass == null) {
      throw new InvalidKeySpecException("keySpec parameter is null");
    }
    if (paramSecretKey == null) {
      throw new InvalidKeySpecException("key parameter is null");
    }
    if (SecretKeySpec.class.isAssignableFrom(paramClass)) {
      return new SecretKeySpec(paramSecretKey.getEncoded(), this.aZp);
    }
    try
    {
      paramSecretKey = (KeySpec)paramClass.getConstructor(new Class[] { [B.class }).newInstance(new Object[] { paramSecretKey.getEncoded() });
      return paramSecretKey;
    }
    catch (Exception paramSecretKey)
    {
      throw new InvalidKeySpecException(paramSecretKey.toString());
    }
  }
  
  protected SecretKey engineTranslateKey(SecretKey paramSecretKey)
  {
    if (paramSecretKey == null) {
      throw new InvalidKeyException("key parameter is null");
    }
    if (!paramSecretKey.getAlgorithm().equalsIgnoreCase(this.aZp)) {
      throw new InvalidKeyException("Key not of type " + this.aZp + ".");
    }
    return new SecretKeySpec(paramSecretKey.getEncoded(), this.aZp);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory
 * JD-Core Version:    0.7.0.1
 */