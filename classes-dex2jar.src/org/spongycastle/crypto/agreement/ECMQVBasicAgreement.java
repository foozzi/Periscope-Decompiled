package org.spongycastle.crypto.agreement;

import java.math.BigInteger;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.MQVPrivateParameters;
import org.spongycastle.crypto.params.MQVPublicParameters;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

public class ECMQVBasicAgreement
  implements BasicAgreement
{
  MQVPrivateParameters aFy;
  
  private ECPoint ˊ(ECDomainParameters paramECDomainParameters, ECPrivateKeyParameters paramECPrivateKeyParameters1, ECPrivateKeyParameters paramECPrivateKeyParameters2, ECPublicKeyParameters paramECPublicKeyParameters1, ECPublicKeyParameters paramECPublicKeyParameters2, ECPublicKeyParameters paramECPublicKeyParameters3)
  {
    BigInteger localBigInteger1 = paramECDomainParameters.gy();
    int i = (localBigInteger1.bitLength() + 1) / 2;
    BigInteger localBigInteger2 = ECConstants.ONE.shiftLeft(i);
    ECCurve localECCurve = paramECDomainParameters.iv();
    ECPoint[] arrayOfECPoint = new ECPoint[3];
    if (paramECPublicKeyParameters1 == null) {
      paramECPublicKeyParameters1 = paramECDomainParameters.iw().ˌ(paramECPrivateKeyParameters2.kz());
    } else {
      paramECPublicKeyParameters1 = paramECPublicKeyParameters1.kH();
    }
    arrayOfECPoint[0] = ECAlgorithms.ˊ(localECCurve, paramECPublicKeyParameters1);
    arrayOfECPoint[1] = ECAlgorithms.ˊ(localECCurve, paramECPublicKeyParameters2.kH());
    arrayOfECPoint[2] = ECAlgorithms.ˊ(localECCurve, paramECPublicKeyParameters3.kH());
    localECCurve.ˊ(arrayOfECPoint);
    paramECPublicKeyParameters3 = arrayOfECPoint[0];
    paramECPublicKeyParameters1 = arrayOfECPoint[1];
    paramECPublicKeyParameters2 = arrayOfECPoint[2];
    paramECPublicKeyParameters3 = paramECPublicKeyParameters3.pH().toBigInteger().mod(localBigInteger2).setBit(i);
    paramECPrivateKeyParameters1 = paramECPrivateKeyParameters1.kz().multiply(paramECPublicKeyParameters3).add(paramECPrivateKeyParameters2.kz()).mod(localBigInteger1);
    paramECPrivateKeyParameters2 = paramECPublicKeyParameters2.pH().toBigInteger().mod(localBigInteger2).setBit(i);
    paramECDomainParameters = paramECDomainParameters.ix().multiply(paramECPrivateKeyParameters1).mod(localBigInteger1);
    return ECAlgorithms.ˊ(paramECPublicKeyParameters1, paramECPrivateKeyParameters2.multiply(paramECDomainParameters).mod(localBigInteger1), paramECPublicKeyParameters2, paramECDomainParameters);
  }
  
  public int getFieldSize()
  {
    return (this.aFy.kY().kG().iv().getFieldSize() + 7) / 8;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    this.aFy = ((MQVPrivateParameters)paramCipherParameters);
  }
  
  public BigInteger ˋ(CipherParameters paramCipherParameters)
  {
    paramCipherParameters = (MQVPublicParameters)paramCipherParameters;
    ECPrivateKeyParameters localECPrivateKeyParameters = this.aFy.kY();
    paramCipherParameters = ˊ(localECPrivateKeyParameters.kG(), localECPrivateKeyParameters, this.aFy.kZ(), this.aFy.la(), paramCipherParameters.lb(), paramCipherParameters.la()).pQ();
    if (paramCipherParameters.pR()) {
      throw new IllegalStateException("Infinity is not a valid agreement value for MQV");
    }
    return paramCipherParameters.pH().toBigInteger();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.agreement.ECMQVBasicAgreement
 * JD-Core Version:    0.7.0.1
 */