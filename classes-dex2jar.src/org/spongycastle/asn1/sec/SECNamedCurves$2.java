package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$2
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("DB7C2ABF62E35E668076BEAD208B");
    BigInteger localBigInteger3 = SECNamedCurves.ן("6127C24C05F38A0AAAF65C0EF02C");
    BigInteger localBigInteger4 = SECNamedCurves.ן("51DEF1815DB5ED74FCC34C85D709");
    byte[] arrayOfByte = Hex.ᵥ("002757A1114D696E6768756151755316C05E0BD4");
    BigInteger localBigInteger1 = SECNamedCurves.ן("36DF0AAFD8B8D7597CA10520D04B");
    BigInteger localBigInteger2 = BigInteger.valueOf(4L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("044BA30AB5E892B4E1649DD0928643ADCD46F5882E3747DEF36E956E97")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.2
 * JD-Core Version:    0.7.0.1
 */