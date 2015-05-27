package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$12
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("40000000000000000000000004A20E90C39067C893BBB9A5", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    ECCurve.F2m localF2m = new ECCurve.F2m(191, 9, new BigInteger("2866537B676752636A68F56554E12640276B649EF7526267", 16), new BigInteger("2E45EF571F00786F67B0081B9495A3D95462F5DE0AA185EC", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localF2m, localF2m.ᕁ(Hex.ᵥ("0236B3DAF8A23206F9C4F299D7B21A9C369137F2C84AE1AA0D")), localBigInteger1, localBigInteger2, Hex.ᵥ("4E13CA542744D696E67687561517552F279A8C84"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.12
 * JD-Core Version:    0.7.0.1
 */