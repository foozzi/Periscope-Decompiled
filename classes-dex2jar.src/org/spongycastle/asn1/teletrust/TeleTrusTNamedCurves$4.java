package org.spongycastle.asn1.teletrust;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class TeleTrusTNamedCurves$4
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("C302F41D932A36CDA7A3462F9E9E916B5BE8F1029AC4ACC1", 16);
    BigInteger localBigInteger2 = new BigInteger("01", 16);
    ECCurve localECCurve = TeleTrusTNamedCurves.ˎ(new ECCurve.Fp(new BigInteger("C302F41D932A36CDA7A3463093D18DB78FCE476DE1A86297", 16), new BigInteger("C302F41D932A36CDA7A3463093D18DB78FCE476DE1A86294", 16), new BigInteger("13D56FFAEC78681E68F9DEB43B35BEC2FB68542E27897B79", 16), localBigInteger1, localBigInteger2));
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("043AE9E58C82F63C30282E1FE7BBF43FA72C446AF6F4618129097E2C5667C2223A902AB5CA449D0084B7E5B3DE7CCC01C9")), localBigInteger1, localBigInteger2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves.4
 * JD-Core Version:    0.7.0.1
 */