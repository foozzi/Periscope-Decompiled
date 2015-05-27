package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;

public class RainbowKeysToParams
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof BCRainbowPrivateKey))
    {
      paramPrivateKey = (BCRainbowPrivateKey)paramPrivateKey;
      return new RainbowPrivateKeyParameters(paramPrivateKey.qx(), paramPrivateKey.qy(), paramPrivateKey.qA(), paramPrivateKey.qz(), paramPrivateKey.qC(), paramPrivateKey.qB());
    }
    throw new InvalidKeyException("can't identify Rainbow private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof BCRainbowPublicKey))
    {
      paramPublicKey = (BCRainbowPublicKey)paramPublicKey;
      return new RainbowPublicKeyParameters(paramPublicKey.qD(), paramPublicKey.qE(), paramPublicKey.qF(), paramPublicKey.qG());
    }
    throw new InvalidKeyException("can't identify Rainbow public key: " + paramPublicKey.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeysToParams
 * JD-Core Version:    0.7.0.1
 */