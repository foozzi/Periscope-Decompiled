package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$16
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("003088250CA6E7C7FE649CE85820F7");
    BigInteger localBigInteger3 = SECNamedCurves.ן("00E8BEE4D3E2260744188BE0E9C723");
    byte[] arrayOfByte = Hex.ᵥ("10E723AB14D696E6768756151756FEBF8FCB49A9");
    BigInteger localBigInteger1 = SECNamedCurves.ן("0100000000000000D9CCEC8A39E56F");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(113, 9, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04009D73616F35F4AB1407D73562C10F00A52830277958EE84D1315ED31886")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.16
 * JD-Core Version:    0.7.0.1
 */