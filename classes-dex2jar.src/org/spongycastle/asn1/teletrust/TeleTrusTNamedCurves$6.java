package org.spongycastle.asn1.teletrust;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class TeleTrusTNamedCurves$6
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("D7C134AA264366862A18302575D0FB98D116BC4B6DDEBCA3A5A7939F", 16);
    BigInteger localBigInteger2 = new BigInteger("01", 16);
    ECCurve localECCurve = TeleTrusTNamedCurves.ˎ(new ECCurve.Fp(new BigInteger("D7C134AA264366862A18302575D1D787B09F075797DA89F57EC8C0FF", 16), new BigInteger("D7C134AA264366862A18302575D1D787B09F075797DA89F57EC8C0FC", 16), new BigInteger("4B337D934104CD7BEF271BF60CED1ED20DA14C08B3BB64F18A60888D", 16), localBigInteger1, localBigInteger2));
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("046AB1E344CE25FF3896424E7FFE14762ECB49F8928AC0C76029B4D5800374E9F5143E568CD23F3F4D7C0D4B1E41C8CC0D1C6ABD5F1A46DB4C")), localBigInteger1, localBigInteger2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves.6
 * JD-Core Version:    0.7.0.1
 */