package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$8
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("0400000000000000000001E60FC8821CC74DAEAFC1", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    ECCurve.F2m localF2m = new ECCurve.F2m(163, 1, 2, 8, new BigInteger("072546B5435234A422E0789675F432C89435DE5242", 16), new BigInteger("00C9517D06D5240D3CFF38C74B20B6CD4D6F9DD4D9", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localF2m, localF2m.ᕁ(Hex.ᵥ("0307AF69989546103D79329FCC3D74880F33BBE803CB")), localBigInteger1, localBigInteger2, Hex.ᵥ("D2C0FB15760860DEF1EEF4D696E6768756151754"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.8
 * JD-Core Version:    0.7.0.1
 */