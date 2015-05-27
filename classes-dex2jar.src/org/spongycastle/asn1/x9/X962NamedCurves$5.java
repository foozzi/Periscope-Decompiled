package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$5
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("7fffffffffffffffffffffff800000cfa7e8594377d414c03821bc582063", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    ECCurve.Fp localFp = new ECCurve.Fp(new BigInteger("883423532389192164791648750360308885314476597252960362792450860609699839"), new BigInteger("7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc", 16), new BigInteger("617fab6832576cbbfed50d99f0249c3fee58b94ba0038c7ae84c8c832f2c", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localFp, localFp.ᕁ(Hex.ᵥ("0238af09d98727705120c921bb5e9e26296a3cdcf2f35757a0eafd87b830e7")), localBigInteger1, localBigInteger2, Hex.ᵥ("e8b4011604095303ca3b8099982be09fcb9ae616"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.5
 * JD-Core Version:    0.7.0.1
 */