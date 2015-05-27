package org.spongycastle.crypto.ec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.sec.SecP224K1Curve;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.encoders.Hex;

final class CustomNamedCurves$4
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = new BigInteger("fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768", 16);
    BigInteger localBigInteger1 = new BigInteger("60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788", 16);
    BigInteger localBigInteger2 = new BigInteger("6b8cf07d4ca75c88957d9d670591", 16);
    BigInteger localBigInteger3 = new BigInteger("-b8adf1378a6eb73409fa6c9c637d", 16);
    BigInteger localBigInteger4 = new BigInteger("1243ae1b4d71613bc9f780a03690e", 16);
    BigInteger localBigInteger5 = new BigInteger("6b8cf07d4ca75c88957d9d670591", 16);
    BigInteger localBigInteger6 = new BigInteger("6b8cf07d4ca75c88957d9d67059037a4", 16);
    BigInteger localBigInteger7 = new BigInteger("b8adf1378a6eb73409fa6c9c637ba7f5", 16);
    localObject = new GLVTypeBParameters((BigInteger)localObject, localBigInteger1, new BigInteger[] { localBigInteger2, localBigInteger3 }, new BigInteger[] { localBigInteger4, localBigInteger5 }, localBigInteger6, localBigInteger7, 240);
    localObject = CustomNamedCurves.ˎ(new SecP224K1Curve(), (GLVTypeBParameters)localObject);
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5")), ((ECCurve)localObject).getOrder(), ((ECCurve)localObject).pm(), null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves.4
 * JD-Core Version:    0.7.0.1
 */