package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$17
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("1555555555555555555555555555553C6F2885259C31E3FCDF154624522D", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(6L);
    ECCurve.F2m localF2m = new ECCurve.F2m(239, 36, new BigInteger("4230017757A767FAE42398569B746325D45313AF0766266479B75654E65F", 16), new BigInteger("5037EA654196CFF0CD82B2C14A2FCF2E3FF8775285B545722F03EACDB74B", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localF2m, localF2m.ᕁ(Hex.ᵥ("0228F9D04E900069C8DC47A08534FE76D2B900B7D7EF31F5709F200C4CA205")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.17
 * JD-Core Version:    0.7.0.1
 */