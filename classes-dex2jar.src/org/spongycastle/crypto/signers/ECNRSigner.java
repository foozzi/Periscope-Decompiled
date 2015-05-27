package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

public class ECNRSigner
  implements DSA
{
  private SecureRandom aFa;
  private boolean aSa;
  private ECKeyParameters aSd;
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aSa = paramBoolean;
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aFa = paramCipherParameters.iN();
        this.aSd = ((ECPrivateKeyParameters)paramCipherParameters.lh());
        return;
      }
      this.aFa = new SecureRandom();
      this.aSd = ((ECPrivateKeyParameters)paramCipherParameters);
      return;
    }
    this.aSd = ((ECPublicKeyParameters)paramCipherParameters);
  }
  
  public boolean ˊ(byte[] paramArrayOfByte, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    if (this.aSa) {
      throw new IllegalStateException("not initialised for verifying");
    }
    ECPublicKeyParameters localECPublicKeyParameters = (ECPublicKeyParameters)this.aSd;
    BigInteger localBigInteger = localECPublicKeyParameters.kG().gy();
    int i = localBigInteger.bitLength();
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    if (paramArrayOfByte.bitLength() > i) {
      throw new DataLengthException("input too large for ECNR key.");
    }
    if ((paramBigInteger1.compareTo(ECConstants.ONE) < 0) || (paramBigInteger1.compareTo(localBigInteger) >= 0)) {
      return false;
    }
    if ((paramBigInteger2.compareTo(ECConstants.ZERO) < 0) || (paramBigInteger2.compareTo(localBigInteger) >= 0)) {
      return false;
    }
    paramBigInteger2 = ECAlgorithms.ˊ(localECPublicKeyParameters.kG().iw(), paramBigInteger2, localECPublicKeyParameters.kH(), paramBigInteger1).pQ();
    if (paramBigInteger2.pR()) {
      return false;
    }
    return paramBigInteger1.subtract(paramBigInteger2.pH().toBigInteger()).mod(localBigInteger).equals(paramArrayOfByte);
  }
  
  public BigInteger[] ᵎ(byte[] paramArrayOfByte)
  {
    if (!this.aSa) {
      throw new IllegalStateException("not initialised for signing");
    }
    BigInteger localBigInteger1 = ((ECPrivateKeyParameters)this.aSd).kG().gy();
    int i = localBigInteger1.bitLength();
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    int j = paramArrayOfByte.bitLength();
    ECPrivateKeyParameters localECPrivateKeyParameters = (ECPrivateKeyParameters)this.aSd;
    if (j > i) {
      throw new DataLengthException("input too large for ECNR key.");
    }
    Object localObject;
    BigInteger localBigInteger2;
    do
    {
      localObject = new ECKeyPairGenerator();
      ((ECKeyPairGenerator)localObject).ˊ(new ECKeyGenerationParameters(localECPrivateKeyParameters.kG(), this.aFa));
      localObject = ((ECKeyPairGenerator)localObject).iF();
      localBigInteger2 = ((ECPublicKeyParameters)((AsymmetricCipherKeyPair)localObject).iD()).kH().pH().toBigInteger().add(paramArrayOfByte).mod(localBigInteger1);
    } while (localBigInteger2.equals(ECConstants.ZERO));
    paramArrayOfByte = localECPrivateKeyParameters.kz();
    return new BigInteger[] { localBigInteger2, ((ECPrivateKeyParameters)((AsymmetricCipherKeyPair)localObject).iE()).kz().subtract(localBigInteger2.multiply(paramArrayOfByte)).mod(localBigInteger1) };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.ECNRSigner
 * JD-Core Version:    0.7.0.1
 */