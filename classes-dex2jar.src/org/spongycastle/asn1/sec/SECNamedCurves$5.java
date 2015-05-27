package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$5
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73");
    BigInteger localBigInteger3 = ECConstants.ZERO;
    BigInteger localBigInteger4 = BigInteger.valueOf(7L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("0100000000000000000001B8FA16DFAB9ACA16B6B3");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    Object localObject2 = new BigInteger("9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a", 16);
    BigInteger localBigInteger5 = new BigInteger("c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4", 16);
    BigInteger localBigInteger6 = new BigInteger("9162fbe73984472a0a9e", 16);
    BigInteger localBigInteger7 = new BigInteger("-96341f1138933bc2f505", 16);
    BigInteger localBigInteger8 = new BigInteger("127971af8721782ecffa3", 16);
    BigInteger localBigInteger9 = new BigInteger("9162fbe73984472a0a9e", 16);
    BigInteger localBigInteger10 = new BigInteger("9162fbe73984472a0a9d0590", 16);
    BigInteger localBigInteger11 = new BigInteger("96341f1138933bc2f503fd44", 16);
    localObject2 = new GLVTypeBParameters((BigInteger)localObject2, localBigInteger5, new BigInteger[] { localBigInteger6, localBigInteger7 }, new BigInteger[] { localBigInteger8, localBigInteger9 }, localBigInteger10, localBigInteger11, 176);
    localObject1 = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject1, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2), (GLVTypeBParameters)localObject2);
    return new X9ECParameters((ECCurve)localObject1, ((ECCurve)localObject1).ᕁ(Hex.ᵥ("043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.5
 * JD-Core Version:    0.7.0.1
 */