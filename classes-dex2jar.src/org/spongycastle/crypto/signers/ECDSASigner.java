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

public class ECDSASigner
  implements ECConstants, DSA
{
  private SecureRandom aFa;
  private final DSAKCalculator aSb;
  private ECKeyParameters aSd;
  
  public ECDSASigner()
  {
    this.aSb = new RandomDSAKCalculator();
  }
  
  public ECDSASigner(DSAKCalculator paramDSAKCalculator)
  {
    this.aSb = paramDSAKCalculator;
  }
  
  protected ECMultiplier jS()
  {
    return new FixedPointCombMultiplier();
  }
  
  protected BigInteger ˊ(BigInteger paramBigInteger, byte[] paramArrayOfByte)
  {
    int i = paramBigInteger.bitLength();
    int j = paramArrayOfByte.length * 8;
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    paramBigInteger = paramArrayOfByte;
    if (i < j) {
      paramBigInteger = paramArrayOfByte.shiftRight(j - i);
    }
    return paramBigInteger;
  }
  
  protected SecureRandom ˊ(boolean paramBoolean, SecureRandom paramSecureRandom)
  {
    if (!paramBoolean) {
      return null;
    }
    if (paramSecureRandom != null) {
      return paramSecureRandom;
    }
    return new SecureRandom();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    Object localObject = null;
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aSd = ((ECPrivateKeyParameters)paramCipherParameters.lh());
        paramCipherParameters = paramCipherParameters.iN();
      }
      else
      {
        this.aSd = ((ECPrivateKeyParameters)paramCipherParameters);
        paramCipherParameters = localObject;
      }
    }
    else
    {
      this.aSd = ((ECPublicKeyParameters)paramCipherParameters);
      paramCipherParameters = localObject;
    }
    if ((paramBoolean) && (!this.aSb.lA())) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.aFa = ˊ(paramBoolean, paramCipherParameters);
  }
  
  public boolean ˊ(byte[] paramArrayOfByte, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    ECDomainParameters localECDomainParameters = this.aSd.kG();
    BigInteger localBigInteger = localECDomainParameters.gy();
    paramArrayOfByte = ˊ(localBigInteger, paramArrayOfByte);
    if ((paramBigInteger1.compareTo(ONE) < 0) || (paramBigInteger1.compareTo(localBigInteger) >= 0)) {
      return false;
    }
    if ((paramBigInteger2.compareTo(ONE) < 0) || (paramBigInteger2.compareTo(localBigInteger) >= 0)) {
      return false;
    }
    paramBigInteger2 = paramBigInteger2.modInverse(localBigInteger);
    paramArrayOfByte = paramArrayOfByte.multiply(paramBigInteger2).mod(localBigInteger);
    paramBigInteger2 = paramBigInteger1.multiply(paramBigInteger2).mod(localBigInteger);
    paramArrayOfByte = ECAlgorithms.ˊ(localECDomainParameters.iw(), paramArrayOfByte, ((ECPublicKeyParameters)this.aSd).kH(), paramBigInteger2).pQ();
    if (paramArrayOfByte.pR()) {
      return false;
    }
    return paramArrayOfByte.pH().toBigInteger().mod(localBigInteger).equals(paramBigInteger1);
  }
  
  public BigInteger[] ᵎ(byte[] paramArrayOfByte)
  {
    ECDomainParameters localECDomainParameters = this.aSd.kG();
    BigInteger localBigInteger1 = localECDomainParameters.gy();
    BigInteger localBigInteger2 = ˊ(localBigInteger1, paramArrayOfByte);
    BigInteger localBigInteger3 = ((ECPrivateKeyParameters)this.aSd).kz();
    if (this.aSb.lA()) {
      this.aSb.ˊ(localBigInteger1, localBigInteger3, paramArrayOfByte);
    } else {
      this.aSb.ˎ(localBigInteger1, this.aFa);
    }
    paramArrayOfByte = jS();
    BigInteger localBigInteger5;
    BigInteger localBigInteger4;
    do
    {
      do
      {
        localBigInteger5 = this.aSb.lB();
        localBigInteger4 = paramArrayOfByte.ˋ(localECDomainParameters.iw(), localBigInteger5).pQ().pH().toBigInteger().mod(localBigInteger1);
      } while (localBigInteger4.equals(ZERO));
      localBigInteger5 = localBigInteger5.modInverse(localBigInteger1).multiply(localBigInteger2.add(localBigInteger3.multiply(localBigInteger4))).mod(localBigInteger1);
    } while (localBigInteger5.equals(ZERO));
    return new BigInteger[] { localBigInteger4, localBigInteger5 };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.ECDSASigner
 * JD-Core Version:    0.7.0.1
 */