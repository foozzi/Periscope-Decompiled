package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyFactorySpi;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.asn1.RainbowPublicKey;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;
import org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec;

public class RainbowKeyFactorySpi
  extends KeyFactorySpi
  implements AsymmetricKeyInfoConverter
{
  public PrivateKey engineGeneratePrivate(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof RainbowPrivateKeySpec)) {
      return new BCRainbowPrivateKey((RainbowPrivateKeySpec)paramKeySpec);
    }
    if ((paramKeySpec instanceof PKCS8EncodedKeySpec))
    {
      paramKeySpec = ((PKCS8EncodedKeySpec)paramKeySpec).getEncoded();
      try
      {
        paramKeySpec = ˊ(PrivateKeyInfo.ﹷ(ASN1Primitive.ՙ(paramKeySpec)));
        return paramKeySpec;
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException(paramKeySpec.toString());
      }
    }
    throw new InvalidKeySpecException("Unsupported key specification: " + paramKeySpec.getClass() + ".");
  }
  
  public PublicKey engineGeneratePublic(KeySpec paramKeySpec)
  {
    if ((paramKeySpec instanceof RainbowPublicKeySpec)) {
      return new BCRainbowPublicKey((RainbowPublicKeySpec)paramKeySpec);
    }
    if ((paramKeySpec instanceof X509EncodedKeySpec))
    {
      paramKeySpec = ((X509EncodedKeySpec)paramKeySpec).getEncoded();
      try
      {
        paramKeySpec = ˋ(SubjectPublicKeyInfo.ן(paramKeySpec));
        return paramKeySpec;
      }
      catch (Exception paramKeySpec)
      {
        throw new InvalidKeySpecException(paramKeySpec.toString());
      }
    }
    throw new InvalidKeySpecException("Unknown key specification: " + paramKeySpec + ".");
  }
  
  public final KeySpec engineGetKeySpec(Key paramKey, Class paramClass)
  {
    if ((paramKey instanceof BCRainbowPrivateKey))
    {
      if (PKCS8EncodedKeySpec.class.isAssignableFrom(paramClass)) {
        return new PKCS8EncodedKeySpec(paramKey.getEncoded());
      }
      if (RainbowPrivateKeySpec.class.isAssignableFrom(paramClass))
      {
        paramKey = (BCRainbowPrivateKey)paramKey;
        return new RainbowPrivateKeySpec(paramKey.qx(), paramKey.qy(), paramKey.qA(), paramKey.qz(), paramKey.qC(), paramKey.qB());
      }
    }
    else if ((paramKey instanceof BCRainbowPublicKey))
    {
      if (X509EncodedKeySpec.class.isAssignableFrom(paramClass)) {
        return new X509EncodedKeySpec(paramKey.getEncoded());
      }
      if (RainbowPublicKeySpec.class.isAssignableFrom(paramClass))
      {
        paramKey = (BCRainbowPublicKey)paramKey;
        return new RainbowPublicKeySpec(paramKey.qD(), paramKey.qE(), paramKey.qF(), paramKey.qG());
      }
    }
    else
    {
      throw new InvalidKeySpecException("Unsupported key type: " + paramKey.getClass() + ".");
    }
    throw new InvalidKeySpecException("Unknown key specification: " + paramClass + ".");
  }
  
  public final Key engineTranslateKey(Key paramKey)
  {
    if (((paramKey instanceof BCRainbowPrivateKey)) || ((paramKey instanceof BCRainbowPublicKey))) {
      return paramKey;
    }
    throw new InvalidKeyException("Unsupported key type");
  }
  
  public PrivateKey ˊ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    paramPrivateKeyInfo = RainbowPrivateKey.Ȉ(paramPrivateKeyInfo.fY());
    return new BCRainbowPrivateKey(paramPrivateKeyInfo.qx(), paramPrivateKeyInfo.qy(), paramPrivateKeyInfo.qA(), paramPrivateKeyInfo.qz(), paramPrivateKeyInfo.qC(), paramPrivateKeyInfo.qB());
  }
  
  public PublicKey ˋ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    paramSubjectPublicKeyInfo = RainbowPublicKey.ȋ(paramSubjectPublicKeyInfo.hV());
    return new BCRainbowPublicKey(paramSubjectPublicKeyInfo.qD(), paramSubjectPublicKeyInfo.qE(), paramSubjectPublicKeyInfo.qF(), paramSubjectPublicKeyInfo.qG());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi
 * JD-Core Version:    0.7.0.1
 */