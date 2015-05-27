package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$25
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = ECConstants.ZERO;
    BigInteger localBigInteger3 = BigInteger.valueOf(1L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("8000000000000000000000000000069D5BB915BCD46EFB1AD5F173ABDF");
    BigInteger localBigInteger2 = BigInteger.valueOf(4L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(233, 74, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04017232BA853A7E731AF129F22FF4149563A419C26BF50A4C9D6EEFAD612601DB537DECE819B7F70F555A67C427A8CD9BF18AEB9B56E0C11056FAE6A3")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.25
 * JD-Core Version:    0.7.0.1
 */