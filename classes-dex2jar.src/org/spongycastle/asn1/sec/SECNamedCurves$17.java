package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$17
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("00689918DBEC7E5A0DD6DFC0AA55C7");
    BigInteger localBigInteger3 = SECNamedCurves.ן("0095E9A9EC9B297BD4BF36E059184F");
    byte[] arrayOfByte = Hex.ᵥ("10C0FB15760860DEF1EEF4D696E676875615175D");
    BigInteger localBigInteger1 = SECNamedCurves.ן("010000000000000108789B2496AF93");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(113, 9, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0401A57A6A7B26CA5EF52FCDB816479700B3ADC94ED1FE674C06E695BABA1D")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.17
 * JD-Core Version:    0.7.0.1
 */