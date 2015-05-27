package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.djb.Curve25519;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$1
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    ECCurve localECCurve = CustomNamedCurves.ˎ(new Curve25519());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("042AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD245A20AE19A1B8A086B4E01EDD2C7748D14C923D4D7E6D7C61B229E9C5A27ECED3D9")), localECCurve.getOrder(), localECCurve.pm(), null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.1
 * JD-Core Version:    0.7.0.1
 */