package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class X962NamedCurves$19
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    BigInteger localBigInteger1 = new BigInteger("0100FAF51354E0E39E4892DF6E319C72C8161603FA45AA7B998A167B8F1E629521", 16);
    BigInteger localBigInteger2 = BigInteger.valueOf(65286L);
    ECCurve.F2m localF2m = new ECCurve.F2m(272, 1, 3, 56, new BigInteger("0091A091F03B5FBA4AB2CCF49C4EDD220FB028712D42BE752B2C40094DBACDB586FB20", 16), new BigInteger("7167EFC92BB2E3CE7C8AAAFF34E12A9C557003D7C73A6FAF003F99F6CC8482E540F7", 16), localBigInteger1, localBigInteger2);
    return new X9ECParameters(localF2m, localF2m.ᕁ(Hex.ᵥ("026108BABB2CEEBCF787058A056CBE0CFE622D7723A289E08A07AE13EF0D10D171DD8D")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves.19
 * JD-Core Version:    0.7.0.1
 */