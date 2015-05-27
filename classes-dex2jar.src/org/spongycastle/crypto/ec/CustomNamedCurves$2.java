package org.spongycastle.crypto.ec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP192K1Curve;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$2
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = new BigInteger("bb85691939b869c1d087f601554b96b80cb4f55b35f433c2", 16);
    BigInteger localBigInteger1 = new BigInteger("3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1", 16);
    BigInteger localBigInteger2 = new BigInteger("71169be7330b3038edb025f1", 16);
    BigInteger localBigInteger3 = new BigInteger("-b3fb3400dec5c4adceb8655c", 16);
    BigInteger localBigInteger4 = new BigInteger("12511cfe811d0f4e6bc688b4d", 16);
    BigInteger localBigInteger5 = new BigInteger("71169be7330b3038edb025f1", 16);
    BigInteger localBigInteger6 = new BigInteger("71169be7330b3038edb025f1d0f9", 16);
    BigInteger localBigInteger7 = new BigInteger("b3fb3400dec5c4adceb8655d4c94", 16);
    localObject = new GLVTypeBParameters((BigInteger)localObject, localBigInteger1, new BigInteger[] { localBigInteger2, localBigInteger3 }, new BigInteger[] { localBigInteger4, localBigInteger5 }, localBigInteger6, localBigInteger7, 208);
    localObject = CustomNamedCurves.ˎ(new SecP192K1Curve(), (GLVTypeBParameters)localObject);
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D")), ((ECCurve)localObject).getOrder(), ((ECCurve)localObject).pm(), null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.2
 * JD-Core Version:    0.7.0.1
 */