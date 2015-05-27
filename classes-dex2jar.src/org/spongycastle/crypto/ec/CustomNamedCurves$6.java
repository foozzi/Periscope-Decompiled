package org.spongycastle.crypto.ec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP256K1Curve;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$6
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = new BigInteger("7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee", 16);
    BigInteger localBigInteger1 = new BigInteger("5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72", 16);
    BigInteger localBigInteger2 = new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16);
    BigInteger localBigInteger3 = new BigInteger("-e4437ed6010e88286f547fa90abfe4c3", 16);
    BigInteger localBigInteger4 = new BigInteger("114ca50f7a8e2f3f657c1108d9d44cfd8", 16);
    BigInteger localBigInteger5 = new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16);
    BigInteger localBigInteger6 = new BigInteger("3086d221a7d46bcde86c90e49284eb153dab", 16);
    BigInteger localBigInteger7 = new BigInteger("e4437ed6010e88286f547fa90abfe4c42212", 16);
    localObject = new GLVTypeBParameters((BigInteger)localObject, localBigInteger1, new BigInteger[] { localBigInteger2, localBigInteger3 }, new BigInteger[] { localBigInteger4, localBigInteger5 }, localBigInteger6, localBigInteger7, 272);
    localObject = CustomNamedCurves.ˎ(new SecP256K1Curve(), (GLVTypeBParameters)localObject);
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8")), ((ECCurve)localObject).getOrder(), ((ECCurve)localObject).pm(), null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.6
 * JD-Core Version:    0.7.0.1
 */