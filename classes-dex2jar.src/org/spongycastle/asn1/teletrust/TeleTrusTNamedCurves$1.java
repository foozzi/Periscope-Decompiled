package org.spongycastle.asn1.teletrust;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class TeleTrusTNamedCurves$1
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("E95E4A5F737059DC60DF5991D45029409E60FC09", 16);
    BigInteger localBigInteger2 = new BigInteger("01", 16);
    ECCurve localECCurve = TeleTrusTNamedCurves.ˎ(new ECCurve.Fp(new BigInteger("E95E4A5F737059DC60DFC7AD95B3D8139515620F", 16), new BigInteger("340E7BE2A280EB74E2BE61BADA745D97E8F7C300", 16), new BigInteger("1E589A8595423412134FAA2DBDEC95C8D8675E58", 16), localBigInteger1, localBigInteger2));
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("04BED5AF16EA3F6A4F62938C4631EB5AF7BDBCDBC31667CB477A1A8EC338F94741669C976316DA6321")), localBigInteger1, localBigInteger2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves.1
 * JD-Core Version:    0.7.0.1
 */