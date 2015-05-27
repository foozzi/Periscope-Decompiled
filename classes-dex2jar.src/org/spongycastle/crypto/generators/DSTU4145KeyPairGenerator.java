package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECPoint;

public class DSTU4145KeyPairGenerator
  extends ECKeyPairGenerator
{
  public AsymmetricCipherKeyPair iF()
  {
    Object localObject = super.iF();
    ECPublicKeyParameters localECPublicKeyParameters = (ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject).iD();
    localObject = (ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject).iE();
    return new AsymmetricCipherKeyPair(new ECPublicKeyParameters(localECPublicKeyParameters.kH().pT(), localECPublicKeyParameters.kG()), (AsymmetricKeyParameter)localObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DSTU4145KeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */