package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

public class ECDHCBasicAgreement
  implements BasicAgreement
{
  ECPrivateKeyParameters aFx;
  
  public int getFieldSize()
  {
    return (this.aFx.kG().iv().getFieldSize() + 7) / 8;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    this.aFx = ((ECPrivateKeyParameters)paramCipherParameters);
  }
  
  public BigInteger ˋ(CipherParameters paramCipherParameters)
  {
    paramCipherParameters = (ECPublicKeyParameters)paramCipherParameters;
    Object localObject = paramCipherParameters.kG();
    localObject = ((ECDomainParameters)localObject).ix().multiply(this.aFx.kz()).mod(((ECDomainParameters)localObject).gy());
    paramCipherParameters = paramCipherParameters.kH().ˌ((BigInteger)localObject).pQ();
    if (paramCipherParameters.pR()) {
      throw new IllegalStateException("Infinity is not a valid agreement value for ECDHC");
    }
    return paramCipherParameters.pH().toBigInteger();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.ECDHCBasicAgreement
 * JD-Core Version:    0.7.0.1
 */