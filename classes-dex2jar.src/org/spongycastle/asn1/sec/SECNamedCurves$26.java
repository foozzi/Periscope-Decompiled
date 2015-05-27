package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$26
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = BigInteger.valueOf(1L);
    BigInteger localBigInteger3 = SECNamedCurves.ן("0066647EDE6C332C7F8C0923BB58213B333B20E9CE4281FE115F7D8F90AD");
    byte[] arrayOfByte = Hex.ᵥ("74D59FF07F6B413D0EA14B344B20A2DB049B50C3");
    BigInteger localBigInteger1 = SECNamedCurves.ן("01000000000000000000000000000013E974E72F8A6922031D2603CFE0D7");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(233, 74, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0400FAC9DFCBAC8313BB2139F1BB755FEF65BC391F8B36F8F8EB7371FD558B01006A08A41903350678E58528BEBF8A0BEFF867A7CA36716F7E01F81052")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.26
 * JD-Core Version:    0.7.0.1
 */