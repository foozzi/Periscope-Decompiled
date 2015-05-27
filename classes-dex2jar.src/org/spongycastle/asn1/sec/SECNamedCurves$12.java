package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$12
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F");
    BigInteger localBigInteger3 = ECConstants.ZERO;
    BigInteger localBigInteger4 = BigInteger.valueOf(7L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    Object localObject2 = new BigInteger("7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee", 16);
    BigInteger localBigInteger5 = new BigInteger("5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72", 16);
    BigInteger localBigInteger6 = new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16);
    BigInteger localBigInteger7 = new BigInteger("-e4437ed6010e88286f547fa90abfe4c3", 16);
    BigInteger localBigInteger8 = new BigInteger("114ca50f7a8e2f3f657c1108d9d44cfd8", 16);
    BigInteger localBigInteger9 = new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16);
    BigInteger localBigInteger10 = new BigInteger("3086d221a7d46bcde86c90e49284eb153dab", 16);
    BigInteger localBigInteger11 = new BigInteger("e4437ed6010e88286f547fa90abfe4c42212", 16);
    localObject2 = new GLVTypeBParameters((BigInteger)localObject2, localBigInteger5, new BigInteger[] { localBigInteger6, localBigInteger7 }, new BigInteger[] { localBigInteger8, localBigInteger9 }, localBigInteger10, localBigInteger11, 272);
    localObject1 = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject1, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2), (GLVTypeBParameters)localObject2);
    return new X9ECParameters((ECCurve)localObject1, ((ECCurve)localObject1).ᕁ(Hex.ᵥ("0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.12
 * JD-Core Version:    0.7.0.1
 */