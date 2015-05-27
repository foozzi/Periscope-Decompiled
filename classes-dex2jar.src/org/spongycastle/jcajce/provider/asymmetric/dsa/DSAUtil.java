package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.interfaces.DSAPublicKey;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;

public class DSAUtil
{
  public static final ASN1ObjectIdentifier[] aWG = { X9ObjectIdentifiers.aEB, OIWObjectIdentifiers.apN };
  
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof DSAPrivateKey))
    {
      paramPrivateKey = (DSAPrivateKey)paramPrivateKey;
      return new DSAPrivateKeyParameters(paramPrivateKey.getX(), new DSAParameters(paramPrivateKey.getParams().getP(), paramPrivateKey.getParams().getQ(), paramPrivateKey.getParams().getG()));
    }
    throw new InvalidKeyException("can't identify DSA private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof DSAPublicKey))
    {
      paramPublicKey = (DSAPublicKey)paramPublicKey;
      return new DSAPublicKeyParameters(paramPublicKey.getY(), new DSAParameters(paramPublicKey.getParams().getP(), paramPublicKey.getParams().getQ(), paramPublicKey.getParams().getG()));
    }
    throw new InvalidKeyException("can't identify DSA public key: " + paramPublicKey.getClass().getName());
  }
  
  public static boolean ι(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    int i = 0;
    while (i != aWG.length)
    {
      if (paramASN1ObjectIdentifier.equals(aWG[i])) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.DSAUtil
 * JD-Core Version:    0.7.0.1
 */