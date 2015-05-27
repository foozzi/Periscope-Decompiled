package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;

public class McElieceCCA2KeysToParams
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof BCMcElieceCCA2PrivateKey))
    {
      paramPrivateKey = (BCMcElieceCCA2PrivateKey)paramPrivateKey;
      return new McElieceCCA2PrivateKeyParameters(paramPrivateKey.rp(), paramPrivateKey.kC(), paramPrivateKey.ri(), paramPrivateKey.rk(), paramPrivateKey.rl(), paramPrivateKey.rm(), paramPrivateKey.rn(), paramPrivateKey.ro(), paramPrivateKey.rY());
    }
    throw new InvalidKeyException("can't identify McElieceCCA2 private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof BCMcElieceCCA2PublicKey))
    {
      paramPublicKey = (BCMcElieceCCA2PublicKey)paramPublicKey;
      return new McElieceCCA2PublicKeyParameters(paramPublicKey.rp(), paramPublicKey.kC(), paramPublicKey.rj(), paramPublicKey.rw(), paramPublicKey.rY());
    }
    throw new InvalidKeyException("can't identify McElieceCCA2 public key: " + paramPublicKey.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McElieceCCA2KeysToParams
 * JD-Core Version:    0.7.0.1
 */