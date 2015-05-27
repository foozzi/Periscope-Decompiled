package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;

public class McElieceKeysToParams
{
  public static AsymmetricKeyParameter ˊ(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof BCMcEliecePrivateKey))
    {
      paramPrivateKey = (BCMcEliecePrivateKey)paramPrivateKey;
      return new McEliecePrivateKeyParameters(paramPrivateKey.rp(), paramPrivateKey.kC(), paramPrivateKey.ri(), paramPrivateKey.rk(), paramPrivateKey.rl(), paramPrivateKey.rt(), paramPrivateKey.ru(), paramPrivateKey.rv(), paramPrivateKey.rn(), paramPrivateKey.ro(), paramPrivateKey.rZ());
    }
    throw new InvalidKeyException("can't identify McEliece private key.");
  }
  
  public static AsymmetricKeyParameter ˊ(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof BCMcEliecePublicKey))
    {
      paramPublicKey = (BCMcEliecePublicKey)paramPublicKey;
      return new McEliecePublicKeyParameters(paramPublicKey.rp(), paramPublicKey.kC(), paramPublicKey.rj(), paramPublicKey.rw(), paramPublicKey.rZ());
    }
    throw new InvalidKeyException("can't identify McEliece public key: " + paramPublicKey.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.McElieceKeysToParams
 * JD-Core Version:    0.7.0.1
 */