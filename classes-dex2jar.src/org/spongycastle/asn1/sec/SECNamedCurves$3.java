package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$3
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF");
    BigInteger localBigInteger3 = SECNamedCurves.ן("FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFC");
    BigInteger localBigInteger4 = SECNamedCurves.ן("E87579C11079F43DD824993C2CEE5ED3");
    byte[] arrayOfByte = Hex.ᵥ("000E0D4D696E6768756151750CC03A4473D03679");
    BigInteger localBigInteger1 = SECNamedCurves.ן("FFFFFFFE0000000075A30D1B9038A115");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04161FF7528B899B2D0C28607CA52C5B86CF5AC8395BAFEB13C02DA292DDED7A83")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.3
 * JD-Core Version:    0.7.0.1
 */