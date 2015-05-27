package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$7
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    ECCurve.Fp localFp = new ECCurve.Fp(new BigInteger("115792089210356248762697446949407573530086143415290314195533631308867097853951"), new BigInteger("ffffffff00000001000000000000000000000000fffffffffffffffffffffffc", 16), new BigInteger("5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localFp, localFp.ᕁ(Hex.ᵥ("036b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296")), localBigInteger1, localBigInteger2, Hex.ᵥ("c49d360886e704936a6678e1139d26b7819f7e90"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.7
 * JD-Core Version:    0.7.0.1
 */