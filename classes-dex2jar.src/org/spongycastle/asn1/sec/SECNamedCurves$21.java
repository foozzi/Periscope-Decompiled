package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$21
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("07B6882CAAEFA84F9554FF8428BD88E246D2782AE2");
    BigInteger localBigInteger3 = SECNamedCurves.ן("0713612DCDDCB40AAB946BDA29CA91F73AF958AFD9");
    byte[] arrayOfByte = Hex.ᵥ("24B7B137C8A14D696E6768756151756FD0DA2E5C");
    BigInteger localBigInteger1 = SECNamedCurves.ן("03FFFFFFFFFFFFFFFFFFFF48AAB689C29CA710279B");
    BigInteger localBigInteger2 = BigInteger.valueOf(2L);
    localObject = SECNamedCurves.ˋ(new ECCurve.F2m(163, 3, 6, 7, (BigInteger)localObject, localBigInteger3, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("040369979697AB43897789566789567F787A7876A65400435EDB42EFAFB2989D51FEFCE3C80988F41FF883")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.21
 * JD-Core Version:    0.7.0.1
 */