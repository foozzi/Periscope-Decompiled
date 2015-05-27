package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;

public class DHUtil
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof DHPrivateKey))
    {
      paramPrivateKey = (DHPrivateKey)paramPrivateKey;
      return new DHPrivateKeyParameters(paramPrivateKey.getX(), new DHParameters(paramPrivateKey.getParams().getP(), paramPrivateKey.getParams().getG(), null, paramPrivateKey.getParams().getL()));
    }
    throw new InvalidKeyException("can't identify DH private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof DHPublicKey))
    {
      paramPublicKey = (DHPublicKey)paramPublicKey;
      return new DHPublicKeyParameters(paramPublicKey.getY(), new DHParameters(paramPublicKey.getParams().getP(), paramPublicKey.getParams().getG(), null, paramPublicKey.getParams().getL()));
    }
    throw new InvalidKeyException("can't identify DH public key.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.DHUtil
 * JD-Core Version:    0.7.0.1
 */