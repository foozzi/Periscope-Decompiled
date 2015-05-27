package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$1
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("ffffffffffffffffffffffff99def836146bc9b1b4d22831", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    ECCurve.Fp localFp = new ECCurve.Fp(new BigInteger("6277101735386680763835789423207666416083908700390324961279"), new BigInteger("fffffffffffffffffffffffffffffffefffffffffffffffc", 16), new BigInteger("64210519e59c80e70fa7e9ab72243049feb8deecc146b9b1", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localFp, localFp.ᕁ(Hex.ᵥ("03188da80eb03090f67cbf20eb43a18800f4ff0afd82ff1012")), localBigInteger1, localBigInteger2, Hex.ᵥ("3045AE6FC8422f64ED579528D38120EAE12196D5"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.1
 * JD-Core Version:    0.7.0.1
 */