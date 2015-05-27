package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.math.BigInteger;
import org.spongycastle.crypto.KeyEncoder;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHKeyParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.util.BigIntegers;

class IESCipher$1
  implements KeyEncoder
{
  IESCipher$1(IESCipher paramIESCipher) {}
  
  public byte[] ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    byte[] arrayOfByte = new byte[(((DHKeyParameters)paramAsymmetricKeyParameter).kA().getP().bitLength() + 7) / 8];
    paramAsymmetricKeyParameter = BigIntegers.ᵎ(((DHPublicKeyParameters)paramAsymmetricKeyParameter).getY());
    if (paramAsymmetricKeyParameter.length > arrayOfByte.length) {
      throw new IllegalArgumentException("Senders's public key longer than expected.");
    }
    System.arraycopy(paramAsymmetricKeyParameter, 0, arrayOfByte, arrayOfByte.length - paramAsymmetricKeyParameter.length, paramAsymmetricKeyParameter.length);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher.1
 * JD-Core Version:    0.7.0.1
 */