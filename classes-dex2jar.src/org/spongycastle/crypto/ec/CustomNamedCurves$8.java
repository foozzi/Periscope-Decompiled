package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP384R1Curve;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$8
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    byte[] arrayOfByte = Hex.ᵥ("A335926AA319A27A1D00896A6773A4827ACDAC73");
    ECCurve localECCurve = CustomNamedCurves.ˎ(new SecP384R1Curve());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("04AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB73617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F")), localECCurve.getOrder(), localECCurve.pm(), arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.8
 * JD-Core Version:    0.7.0.1
 */