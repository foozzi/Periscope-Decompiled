package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$8
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37");
    BigInteger localBigInteger3 = ECConstants.ZERO;
    BigInteger localBigInteger4 = BigInteger.valueOf(3L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    Object localObject2 = new BigInteger("bb85691939b869c1d087f601554b96b80cb4f55b35f433c2", 16);
    BigInteger localBigInteger5 = new BigInteger("3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1", 16);
    BigInteger localBigInteger6 = new BigInteger("71169be7330b3038edb025f1", 16);
    BigInteger localBigInteger7 = new BigInteger("-b3fb3400dec5c4adceb8655c", 16);
    BigInteger localBigInteger8 = new BigInteger("12511cfe811d0f4e6bc688b4d", 16);
    BigInteger localBigInteger9 = new BigInteger("71169be7330b3038edb025f1", 16);
    BigInteger localBigInteger10 = new BigInteger("71169be7330b3038edb025f1d0f9", 16);
    BigInteger localBigInteger11 = new BigInteger("b3fb3400dec5c4adceb8655d4c94", 16);
    localObject2 = new GLVTypeBParameters((BigInteger)localObject2, localBigInteger5, new BigInteger[] { localBigInteger6, localBigInteger7 }, new BigInteger[] { localBigInteger8, localBigInteger9 }, localBigInteger10, localBigInteger11, 208);
    localObject1 = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject1, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2), (GLVTypeBParameters)localObject2);
    return new X9ECParameters((ECCurve)localObject1, ((ECCurve)localObject1).ᕁ(Hex.ᵥ("04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.8
 * JD-Core Version:    0.7.0.1
 */