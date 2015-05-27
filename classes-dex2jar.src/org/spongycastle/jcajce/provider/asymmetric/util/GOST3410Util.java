package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.jce.interfaces.GOST3410Params;
import org.spongycastle.jce.interfaces.GOST3410PrivateKey;
import org.spongycastle.jce.interfaces.GOST3410PublicKey;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

public class GOST3410Util
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof GOST3410PrivateKey))
    {
      paramPrivateKey = (GOST3410PrivateKey)paramPrivateKey;
      GOST3410PublicKeyParameterSetSpec localGOST3410PublicKeyParameterSetSpec = paramPrivateKey.nH().oO();
      return new GOST3410PrivateKeyParameters(paramPrivateKey.getX(), new GOST3410Parameters(localGOST3410PublicKeyParameterSetSpec.getP(), localGOST3410PublicKeyParameterSetSpec.getQ(), localGOST3410PublicKeyParameterSetSpec.getA()));
    }
    throw new InvalidKeyException("can't identify GOST3410 private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof GOST3410PublicKey))
    {
      paramPublicKey = (GOST3410PublicKey)paramPublicKey;
      GOST3410PublicKeyParameterSetSpec localGOST3410PublicKeyParameterSetSpec = paramPublicKey.nH().oO();
      return new GOST3410PublicKeyParameters(paramPublicKey.getY(), new GOST3410Parameters(localGOST3410PublicKeyParameterSetSpec.getP(), localGOST3410PublicKeyParameterSetSpec.getQ(), localGOST3410PublicKeyParameterSetSpec.getA()));
    }
    throw new InvalidKeyException("can't identify GOST3410 public key: " + paramPublicKey.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.GOST3410Util
 * JD-Core Version:    0.7.0.1
 */