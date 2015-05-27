package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP256R1Curve;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$7
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    byte[] arrayOfByte = Hex.ᵥ("C49D360886E704936A6678E1139D26B7819F7E90");
    ECCurve localECCurve = CustomNamedCurves.ˎ(new SecP256R1Curve());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5")), localECCurve.getOrder(), localECCurve.pm(), arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.7
 * JD-Core Version:    0.7.0.1
 */