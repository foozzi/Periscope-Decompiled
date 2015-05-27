package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.util.encoders.Hex;

final class SECNamedCurves$1
  extends X9ECParametersHolder
{
  protected X9ECParameters gs()
  {
    Object localObject = SECNamedCurves.ן("DB7C2ABF62E35E668076BEAD208B");
    BigInteger localBigInteger3 = SECNamedCurves.ן("DB7C2ABF62E35E668076BEAD2088");
    BigInteger localBigInteger4 = SECNamedCurves.ן("659EF8BA043916EEDE8911702B22");
    byte[] arrayOfByte = Hex.ᵥ("00F50B028E4D696E676875615175290472783FB1");
    BigInteger localBigInteger1 = SECNamedCurves.ן("DB7C2ABF62E35E7628DFAC6561C5");
    BigInteger localBigInteger2 = BigInteger.valueOf(1L);
    localObject = SECNamedCurves.ˋ(new ECCurve.Fp((BigInteger)localObject, localBigInteger3, localBigInteger4, localBigInteger1, localBigInteger2));
    return new X9ECParameters((ECCurve)localObject, ((ECCurve)localObject).ᕁ(Hex.ᵥ("0409487239995A5EE76B55F9C2F098A89CE5AF8724C0A23E0E0FF77500")), localBigInteger1, localBigInteger2, arrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves.1
 * JD-Core Version:    0.7.0.1
 */