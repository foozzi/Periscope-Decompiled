package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$4
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF");
    BigInteger localBigInteger3 = SECNamedCurves.ן("D6031998D1B3BBFEBF59CC9BBFF9AEE1");
    BigInteger localBigInteger4 = SECNamedCurves.ן("5EEEFCA380D02919DC2C6558BB6D8A5D");
    byte[] arrayOfByte = Hex.ᵥ("004D696E67687561517512D8F03431FCE63B88F4");
    BigInteger localBigInteger1 = SECNamedCurves.ן("3FFFFFFF7FFFFFFFBE0024720613B5A3");
    BigInteger localBigInteger2 = BigInteger.valueOf(4L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("047B6AA5D85E572983E6FB32A7CDEBC14027B6916A894D3AEE7106FE805FC34B44")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.4
 * JD-Core Version:    0.7.0.1
 */