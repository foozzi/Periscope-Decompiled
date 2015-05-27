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
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.FixedPointCombMultiplier;
import org.spongycastle.util.Arrays;

public class DSTU4145Signer
  implements DSA
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private SecureRandom aFa;
  private ECKeyParameters aSd;
  
  private static BigInteger ˊ(BigInteger paramBigInteger, ECFieldElement paramECFieldElement)
  {
    return ˎ(paramECFieldElement.toBigInteger(), paramBigInteger.bitLength() - 1);
  }
  
  private static ECFieldElement ˋ(ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    return paramECCurve.ι(ˎ(new BigInteger(1, Arrays.ۥ(paramArrayOfByte)), paramECCurve.getFieldSize()));
  }
  
  private static BigInteger ˎ(BigInteger paramBigInteger, int paramInt)
  {
    BigInteger localBigInteger = paramBigInteger;
    if (paramBigInteger.bitLength() > paramInt) {
      localBigInteger = paramBigInteger.mod(ONE.shiftLeft(paramInt));
    }
    return localBigInteger;
  }
  
  private static BigInteger ˏ(BigInteger paramBigInteger, SecureRandom paramSecureRandom)
  {
    return new BigInteger(paramBigInteger.bitLength() - 1, paramSecureRandom);
  }
  
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
        paramCipherParameters = paramCipherParameters.lh();
      }
      else
      {
        this.aFa = new SecureRandom();
      }
      this.aSd = ((ECPrivateKeyParameters)paramCipherParameters);
      return;
    }
    this.aSd = ((ECPublicKeyParameters)paramCipherParameters);
  }
  
  public boolean ˊ(byte[] paramArrayOfByte, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    if ((paramBigInteger1.signum() <= 0) || (paramBigInteger2.signum() <= 0)) {
      return false;
    }
    ECDomainParameters localECDomainParameters = this.aSd.kG();
    BigInteger localBigInteger = localECDomainParameters.gy();
    if ((paramBigInteger1.compareTo(localBigInteger) >= 0) || (paramBigInteger2.compareTo(localBigInteger) >= 0)) {
      return false;
    }
    ECCurve localECCurve = localECDomainParameters.iv();
    ECFieldElement localECFieldElement = ˋ(localECCurve, paramArrayOfByte);
    paramArrayOfByte = localECFieldElement;
    if (localECFieldElement.isZero()) {
      paramArrayOfByte = localECCurve.ι(ONE);
    }
    paramBigInteger2 = ECAlgorithms.ˊ(localECDomainParameters.iw(), paramBigInteger2, ((ECPublicKeyParameters)this.aSd).kH(), paramBigInteger1).pQ();
    if (paramBigInteger2.pR()) {
      return false;
    }
    return ˊ(localBigInteger, paramArrayOfByte.ʻ(paramBigInteger2.pH())).compareTo(paramBigInteger1) == 0;
  }
  
  public BigInteger[] ᵎ(byte[] paramArrayOfByte)
  {
    ECDomainParameters localECDomainParameters = this.aSd.kG();
    Object localObject2 = localECDomainParameters.iv();
    Object localObject1 = ˋ((ECCurve)localObject2, paramArrayOfByte);
    paramArrayOfByte = (byte[])localObject1;
    if (((ECFieldElement)localObject1).isZero()) {
      paramArrayOfByte = ((ECCurve)localObject2).ι(ONE);
    }
    localObject1 = localECDomainParameters.gy();
    localObject2 = ((ECPrivateKeyParameters)this.aSd).kz();
    ECMultiplier localECMultiplier = jS();
    BigInteger localBigInteger;
    Object localObject3;
    do
    {
      do
      {
        do
        {
          localBigInteger = ˏ((BigInteger)localObject1, this.aFa);
          localObject3 = localECMultiplier.ˋ(localECDomainParameters.iw(), localBigInteger).pQ().pH();
        } while (((ECFieldElement)localObject3).isZero());
        localObject3 = ˊ((BigInteger)localObject1, paramArrayOfByte.ʻ((ECFieldElement)localObject3));
      } while (((BigInteger)localObject3).signum() == 0);
      localBigInteger = ((BigInteger)localObject3).multiply((BigInteger)localObject2).add(localBigInteger).mod((BigInteger)localObject1);
    } while (localBigInteger.signum() == 0);
    return new BigInteger[] { localObject3, localBigInteger };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.DSTU4145Signer
 * JD-Core Version:    0.7.0.1
 */