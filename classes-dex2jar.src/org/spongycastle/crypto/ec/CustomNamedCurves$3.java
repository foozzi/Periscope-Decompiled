package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP192R1Curve;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$3
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    byte[] arrayOfByte = Hex.ᵥ("3045AE6FC8422F64ED579528D38120EAE12196D5");
    ECCurve localECCurve = CustomNamedCurves.ˎ(new SecP192R1Curve());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("04188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF101207192B95FFC8DA78631011ED6B24CDD573F977A11E794811")), localECCurve.getOrder(), localECCurve.pm(), arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.3
 * JD-Core Version:    0.7.0.1
 */