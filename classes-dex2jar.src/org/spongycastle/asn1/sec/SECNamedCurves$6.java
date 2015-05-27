package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$6
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF");
    BigInteger localBigInteger3 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC");
    BigInteger localBigInteger4 = SECNamedCurves.ן("1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45");
    byte[] arrayOfByte = Hex.ᵥ("1053CDE42C14D696E67687561517533BF3F83345");
    BigInteger localBigInteger1 = SECNamedCurves.ן("0100000000000000000001F4C8F927AED3CA752257");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("044A96B5688EF573284664698968C38BB913CBFC8223A628553168947D59DCC912042351377AC5FB32")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.6
 * JD-Core Version:    0.7.0.1
 */