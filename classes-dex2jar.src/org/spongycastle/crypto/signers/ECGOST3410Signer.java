package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.FixedPointCombMultiplier;

public class ECGOST3410Signer
  implements DSA
{
  SecureRandom aFa;
  ECKeyParameters aSd;
  
  protected ECMultiplier jS()
  {
    return new FixedPointCombMultiplier();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
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
    Object localObject = new byte[paramArrayOfByte.length];
    int i = 0;
    while (i != localObject.length)
    {
      localObject[i] = paramArrayOfByte[(localObject.length - 1 - i)];
      i += 1;
    }
    localObject = new BigInteger(1, (byte[])localObject);
    paramArrayOfByte = this.aSd.kG().gy();
    if ((paramBigInteger1.compareTo(ECConstants.ONE) < 0) || (paramBigInteger1.compareTo(paramArrayOfByte) >= 0)) {
      return false;
    }
    if ((paramBigInteger2.compareTo(ECConstants.ONE) < 0) || (paramBigInteger2.compareTo(paramArrayOfByte) >= 0)) {
      return false;
    }
    localObject = ((BigInteger)localObject).modInverse(paramArrayOfByte);
    paramBigInteger2 = paramBigInteger2.multiply((BigInteger)localObject).mod(paramArrayOfByte);
    localObject = paramArrayOfByte.subtract(paramBigInteger1).multiply((BigInteger)localObject).mod(paramArrayOfByte);
    paramBigInteger2 = ECAlgorithms.ˊ(this.aSd.kG().iw(), paramBigInteger2, ((ECPublicKeyParameters)this.aSd).kH(), (BigInteger)localObject).pQ();
    if (paramBigInteger2.pR()) {
      return false;
    }
    return paramBigInteger2.pH().toBigInteger().mod(paramArrayOfByte).equals(paramBigInteger1);
  }
  
  public BigInteger[] ᵎ(byte[] paramArrayOfByte)
  {
    Object localObject = new byte[paramArrayOfByte.length];
    int i = 0;
    while (i != localObject.length)
    {
      localObject[i] = paramArrayOfByte[(localObject.length - 1 - i)];
      i += 1;
    }
    paramArrayOfByte = new BigInteger(1, (byte[])localObject);
    localObject = this.aSd.kG();
    BigInteger localBigInteger1 = ((ECDomainParameters)localObject).gy();
    BigInteger localBigInteger2 = ((ECPrivateKeyParameters)this.aSd).kz();
    ECMultiplier localECMultiplier = jS();
    BigInteger localBigInteger4;
    BigInteger localBigInteger3;
    do
    {
      do
      {
        do
        {
          localBigInteger4 = new BigInteger(localBigInteger1.bitLength(), this.aFa);
        } while (localBigInteger4.equals(ECConstants.ZERO));
        localBigInteger3 = localECMultiplier.ˋ(((ECDomainParameters)localObject).iw(), localBigInteger4).pQ().pH().toBigInteger().mod(localBigInteger1);
      } while (localBigInteger3.equals(ECConstants.ZERO));
      localBigInteger4 = localBigInteger4.multiply(paramArrayOfByte).add(localBigInteger2.multiply(localBigInteger3)).mod(localBigInteger1);
    } while (localBigInteger4.equals(ECConstants.ZERO));
    return new BigInteger[] { localBigInteger3, localBigInteger4 };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.ECGOST3410Signer
 * JD-Core Version:    0.7.0.1
 */