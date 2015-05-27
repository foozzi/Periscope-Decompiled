package org.spongycastle.jcajce.provider.asymmetric.ec;

import org.spongycastle.crypto.KeyEncoder;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECPoint;

class IESCipher$1
  implements KeyEncoder
{
  IESCipher$1(IESCipher paramIESCipher) {}
  
  public byte[] ˊ(AsymmetricKeyParameter paramAsymmetricKeyParameter)
  {
    return ((ECPublicKeyParameters)paramAsymmetricKeyParameter).kH().getEncoded();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher.1
 * JD-Core Version:    0.7.0.1
 */