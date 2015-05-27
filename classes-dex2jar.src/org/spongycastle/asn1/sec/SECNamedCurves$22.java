package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$22
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = BigInteger.valueOf(1L);
    BigInteger localBigInteger3 = SECNamedCurves.ן("020A601907B8C953CA1481EB10512F78744A3205FD");
    byte[] arrayOfByte = Hex.ᵥ("85E25BFE5C86226CDB12016F7553F9D0E693A268");
    BigInteger localBigInteger1 = SECNamedCurves.ן("040000000000000000000292FE77E70C12A4234C33");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(163, 3, 6, 7, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.22
 * JD-Core Version:    0.7.0.1
 */