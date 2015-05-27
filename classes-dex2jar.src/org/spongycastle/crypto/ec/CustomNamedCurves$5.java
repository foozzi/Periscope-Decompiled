package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP224R1Curve;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$5
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    byte[] arrayOfByte = Hex.ᵥ("BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5");
    ECCurve localECCurve = CustomNamedCurves.ˎ(new SecP224R1Curve());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34")), localECCurve.getOrder(), localECCurve.pm(), arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.5
 * JD-Core Version:    0.7.0.1
 */