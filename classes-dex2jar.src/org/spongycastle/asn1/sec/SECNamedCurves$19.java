package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$19
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("03E5A88919D7CAFCBF415F07C2176573B2");
    BigInteger localBigInteger3 = SECNamedCurves.ן("04B8266A46C55657AC734CE38F018F2192");
    byte[] arrayOfByte = Hex.ᵥ("985BD3ADBAD4D696E676875615175A21B43A97E3");
    BigInteger localBigInteger1 = SECNamedCurves.ן("0400000000000000016954A233049BA98F");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(131, 2, 3, 8, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("040356DCD8F2F95031AD652D23951BB366A80648F06D867940A5366D9E265DE9EB240F")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.19
 * JD-Core Version:    0.7.0.1
 */