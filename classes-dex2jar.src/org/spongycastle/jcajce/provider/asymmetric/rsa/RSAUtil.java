package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;

public class RSAUtil
{
  public static final ASN1ObjectIdentifier[] aXK = { PKCSObjectIdentifiers.aqq, X509ObjectIdentifiers.aCf, PKCSObjectIdentifiers.aqv, PKCSObjectIdentifiers.aqy };
  
  public static boolean ʾ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    int i = 0;
    while (i != aXK.length)
    {
      if (paramASN1ObjectIdentifier.equals(aXK[i])) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  static RSAKeyParameters ˊ(RSAPrivateKey paramRSAPrivateKey)
  {
    if ((paramRSAPrivateKey instanceof RSAPrivateCrtKey))
    {
      paramRSAPrivateKey = (RSAPrivateCrtKey)paramRSAPrivateKey;
      return new RSAPrivateCrtKeyParameters(paramRSAPrivateKey.getModulus(), paramRSAPrivateKey.getPublicExponent(), paramRSAPrivateKey.getPrivateExponent(), paramRSAPrivateKey.getPrimeP(), paramRSAPrivateKey.getPrimeQ(), paramRSAPrivateKey.getPrimeExponentP(), paramRSAPrivateKey.getPrimeExponentQ(), paramRSAPrivateKey.getCrtCoefficient());
    }
    return new RSAKeyParameters(true, paramRSAPrivateKey.getModulus(), paramRSAPrivateKey.getPrivateExponent());
  }
  
  static RSAKeyParameters ˊ(RSAPublicKey paramRSAPublicKey)
  {
    return new RSAKeyParameters(false, paramRSAPublicKey.getModulus(), paramRSAPublicKey.getPublicExponent());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.RSAUtil
 * JD-Core Version:    0.7.0.1
 */