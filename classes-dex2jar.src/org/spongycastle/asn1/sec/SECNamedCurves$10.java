package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$10
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject1 = SECNamedCurves.ן("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D");
    BigInteger localBigInteger3 = ECConstants.ZERO;
    BigInteger localBigInteger4 = BigInteger.valueOf(5L);
    BigInteger localBigInteger1 = SECNamedCurves.ן("010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    Object localObject2 = new BigInteger("fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768", 16);
    BigInteger localBigInteger5 = new BigInteger("60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788", 16);
    BigInteger localBigInteger6 = new BigInteger("6b8cf07d4ca75c88957d9d670591", 16);
    BigInteger localBigInteger7 = new BigInteger("-b8adf1378a6eb73409fa6c9c637d", 16);
    BigInteger localBigInteger8 = new BigInteger("1243ae1b4d71613bc9f780a03690e", 16);
    BigInteger localBigInteger9 = new BigInteger("6b8cf07d4ca75c88957d9d670591", 16);
    BigInteger localBigInteger10 = new BigInteger("6b8cf07d4ca75c88957d9d67059037a4", 16);
    BigInteger localBigInteger11 = new BigInteger("b8adf1378a6eb73409fa6c9c637ba7f5", 16);
    localObject2 = new GLVTypeBParameters((BigInteger)localObject2, localBigInteger5, new BigInteger[] { localBigInteger6, localBigInteger7 }, new BigInteger[] { localBigInteger8, localBigInteger9 }, localBigInteger10, localBigInteger11, 240);
    localObject1 = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject1, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2), (GLVTypeBParameters)localObject2);
    return new X9ECParameters((ECCurve)localObject1, ((ECCurve)localObject1).ᕁ(Hex.ᵥ("04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5")), localBigInteger1, localBigInteger2, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.10
 * JD-Core Version:    0.7.0.1
 */