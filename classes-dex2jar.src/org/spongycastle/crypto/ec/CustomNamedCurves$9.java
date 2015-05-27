package org.spongycastle.crypto.ec;

import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP521R1Curve;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$9
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    byte[] arrayOfByte = Hex.ᵥ("D09E8800291CB85396CC6717393284AAA0DA64BA");
    ECCurve localECCurve = CustomNamedCurves.ˎ(new SecP521R1Curve());
    return new X9ECParameters(localECCurve, localECCurve.ᕁ(Hex.ᵥ("0400C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650")), localECCurve.getOrder(), localECCurve.pm(), arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.9
 * JD-Core Version:    0.7.0.1
 */