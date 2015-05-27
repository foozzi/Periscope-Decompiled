package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$24
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("0163F35A5137C2CE3EA6ED8667190B0BC43ECD69977702709B");
    BigInteger localBigInteger3 = SECNamedCurves.ן("00C9BB9E8927D4D64C377E2AB2856A5B16E3EFB7F61D4316AE");
    byte[] arrayOfByte = Hex.ᵥ("10B7B4D696E676875615175137C8A16FD0DA2211");
    BigInteger localBigInteger1 = SECNamedCurves.ן("010000000000000000000000015AAB561B005413CCD4EE99D5");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(193, 15, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0400D9B67D192E0367C803F39E1A7E82CA14A651350AAE617E8F01CE94335607C304AC29E7DEFBD9CA01F596F927224CDECF6C")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.24
 * JD-Core Version:    0.7.0.1
 */