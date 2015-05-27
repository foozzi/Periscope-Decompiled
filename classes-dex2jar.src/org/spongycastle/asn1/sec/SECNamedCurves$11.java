package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$11
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001");
    BigInteger localBigInteger3 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE");
    BigInteger localBigInteger4 = SECNamedCurves.ן("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4");
    byte[] arrayOfByte = Hex.ᵥ("BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5");
    BigInteger localBigInteger1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.11
 * JD-Core Version:    0.7.0.1
 */