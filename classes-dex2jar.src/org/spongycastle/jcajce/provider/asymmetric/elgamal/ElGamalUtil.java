package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.jce.interfaces.ElGamalPrivateKey;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

public class ElGamalUtil
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof ElGamalPrivateKey))
    {
      paramPrivateKey = (ElGamalPrivateKey)paramPrivateKey;
      return new ElGamalPrivateKeyParameters(paramPrivateKey.getX(), new ElGamalParameters(paramPrivateKey.nG().getP(), paramPrivateKey.nG().getG()));
    }
    if ((paramPrivateKey instanceof DHPrivateKey))
    {
      paramPrivateKey = (DHPrivateKey)paramPrivateKey;
      return new ElGamalPrivateKeyParameters(paramPrivateKey.getX(), new ElGamalParameters(paramPrivateKey.getParams().getP(), paramPrivateKey.getParams().getG()));
    }
    throw new InvalidKeyException("can't identify private key for El Gamal.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof ElGamalPublicKey))
    {
      paramPublicKey = (ElGamalPublicKey)paramPublicKey;
      return new ElGamalPublicKeyParameters(paramPublicKey.getY(), new ElGamalParameters(paramPublicKey.nG().getP(), paramPublicKey.nG().getG()));
    }
    if ((paramPublicKey instanceof DHPublicKey))
    {
      paramPublicKey = (DHPublicKey)paramPublicKey;
      return new ElGamalPublicKeyParameters(paramPublicKey.getY(), new ElGamalParameters(paramPublicKey.getParams().getP(), paramPublicKey.getParams().getG()));
    }
    throw new InvalidKeyException("can't identify public key for El Gamal.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.ElGamalUtil
 * JD-Core Version:    0.7.0.1
 */