package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$11
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("010092537397ECA4F6145799D62B0A19CE06FE26AD", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(65390L);
    ECCurve.F2m localF2m = new ECCurve.F2m(176, 1, 2, 43, new BigInteger("00E4E6DB2995065C407D9D39B8D0967B96704BA8E9C90B", 16), new BigInteger("005DDA470ABE6414DE8EC133AE28E9BBD7FCEC0AE0FFF2", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localF2m, localF2m.ᕁ(Hex.ᵥ("038D16C2866798B600F9F08BB4A8E860F3298CE04A5798")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.11
 * JD-Core Version:    0.7.0.1
 */