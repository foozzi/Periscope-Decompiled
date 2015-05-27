package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$27
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = ECConstants.ZERO;
    BigInteger localBigInteger3 = BigInteger.valueOf(1L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("2000000000000000000000000000005A79FEC67CB6E91F1C1DA800E478A5");
    BigInteger localBigInteger2 = BigInteger.valueOf(4L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(239, 158, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0429A0B6A887A983E9730988A68727A8B2D126C44CC2CC7B2A6555193035DC76310804F12E549BDB011C103089E73510ACB275FC312A5DC6B76553F0CA")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.27
 * JD-Core Version:    0.7.0.1
 */