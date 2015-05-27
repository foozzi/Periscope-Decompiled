package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$28
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = ECConstants.ZERO;
    BigInteger localBigInteger3 = BigInteger.valueOf(1L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61");
    BigInteger localBigInteger2 = BigInteger.valueOf(4L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(283, 5, 7, 12, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("040503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC245849283601CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.28
 * JD-Core Version:    0.7.0.1
 */