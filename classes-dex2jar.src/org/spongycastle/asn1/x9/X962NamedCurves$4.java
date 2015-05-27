package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$4
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("7fffffffffffffffffffffff7fffff9e5e9a9f5d9071fbd1522688909d0b", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    ECCurve.Fp localFp = new ECCurve.Fp(new BigInteger("883423532389192164791648750360308885314476597252960362792450860609699839"), new BigInteger("7fffffffffffffffffffffff7fffffffffff8000000000007ffffffffffc", 16), new BigInteger("6b016c3bdcf18941d0d654921475ca71a9db2fb27d1d37796185c2942c0a", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localFp, localFp.ᕁ(Hex.ᵥ("020ffa963cdca8816ccc33b8642bedf905c3d358573d3f27fbbd3b3cb9aaaf")), localBigInteger1, localBigInteger2, Hex.ᵥ("e43bb460f0b80cc0c0b075798e948060f8321b7d"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.4
 * JD-Core Version:    0.7.0.1
 */