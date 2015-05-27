package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.ElGamalKeyParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.BigIntegers;

public class ElGamalEngine
  implements AsymmetricBlockCipher
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  private boolean aEW;
  private SecureRandom aFa;
  private int aIv;
  private ElGamalKeyParameters aKb;
  
  public int iB()
  {
    if (this.aEW) {
      return (this.aIv - 1) / 8;
    }
    return (this.aIv + 7) / 8 * 2;
  }
  
  public int iC()
  {
    if (this.aEW) {
      return (this.aIv + 7) / 8 * 2;
    }
    return (this.aIv - 1) / 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithRandom))
    {
      paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
      this.aKb = ((ElGamalKeyParameters)paramCipherParameters.lh());
      this.aFa = paramCipherParameters.iN();
    }
    else
    {
      this.aKb = ((ElGamalKeyParameters)paramCipherParameters);
      this.aFa = new SecureRandom();
    }
    this.aEW = paramBoolean;
    this.aIv = this.aKb.kI().getP().bitLength();
    if (paramBoolean)
    {
      if (!(this.aKb instanceof ElGamalPublicKeyParameters)) {
        throw new IllegalArgumentException("ElGamalPublicKeyParameters are required for encryption.");
      }
    }
    else if (!(this.aKb instanceof ElGamalPrivateKeyParameters)) {
      throw new IllegalArgumentException("ElGamalPrivateKeyParameters are required for decryption.");
    }
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aKb == null) {
      throw new IllegalStateException("ElGamal engine not initialised");
    }
    int i;
    if (this.aEW) {
      i = (this.aIv - 1 + 7) / 8;
    } else {
      i = iB();
    }
    if (paramInt2 > i) {
      throw new DataLengthException("input too large for ElGamal cipher.\n");
    }
    Object localObject2 = this.aKb.kI().getP();
    if ((this.aKb instanceof ElGamalPrivateKeyParameters))
    {
      localObject3 = new byte[paramInt2 / 2];
      localObject1 = new byte[paramInt2 / 2];
      System.arraycopy(paramArrayOfByte, paramInt1, localObject3, 0, localObject3.length);
      System.arraycopy(paramArrayOfByte, localObject3.length + paramInt1, localObject1, 0, localObject1.length);
      paramArrayOfByte = new BigInteger(1, (byte[])localObject3);
      localObject1 = new BigInteger(1, (byte[])localObject1);
      localObject3 = (ElGamalPrivateKeyParameters)this.aKb;
      return BigIntegers.ᵎ(paramArrayOfByte.modPow(((BigInteger)localObject2).subtract(ONE).subtract(((ElGamalPrivateKeyParameters)localObject3).getX()), (BigInteger)localObject2).multiply((BigInteger)localObject1).mod((BigInteger)localObject2));
    }
    if ((paramInt1 != 0) || (paramInt2 != paramArrayOfByte.length))
    {
      localObject1 = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, localObject1, 0, paramInt2);
      paramArrayOfByte = (byte[])localObject1;
    }
    Object localObject1 = new BigInteger(1, paramArrayOfByte);
    if (((BigInteger)localObject1).compareTo((BigInteger)localObject2) >= 0) {
      throw new DataLengthException("input too large for ElGamal cipher.\n");
    }
    Object localObject3 = (ElGamalPublicKeyParameters)this.aKb;
    paramInt1 = ((BigInteger)localObject2).bitLength();
    for (paramArrayOfByte = new BigInteger(paramInt1, this.aFa); (paramArrayOfByte.equals(ZERO)) || (paramArrayOfByte.compareTo(((BigInteger)localObject2).subtract(aKc)) > 0); paramArrayOfByte = new BigInteger(paramInt1, this.aFa)) {}
    BigInteger localBigInteger = this.aKb.kI().getG().modPow(paramArrayOfByte, (BigInteger)localObject2);
    localObject1 = ((BigInteger)localObject1).multiply(((ElGamalPublicKeyParameters)localObject3).getY().modPow(paramArrayOfByte, (BigInteger)localObject2)).mod((BigInteger)localObject2);
    paramArrayOfByte = localBigInteger.toByteArray();
    localObject1 = ((BigInteger)localObject1).toByteArray();
    localObject2 = new byte[iC()];
    if (paramArrayOfByte.length > localObject2.length / 2) {
      System.arraycopy(paramArrayOfByte, 1, localObject2, localObject2.length / 2 - (paramArrayOfByte.length - 1), paramArrayOfByte.length - 1);
    } else {
      System.arraycopy(paramArrayOfByte, 0, localObject2, localObject2.length / 2 - paramArrayOfByte.length, paramArrayOfByte.length);
    }
    if (localObject1.length > localObject2.length / 2)
    {
      System.arraycopy(localObject1, 1, localObject2, localObject2.length - (localObject1.length - 1), localObject1.length - 1);
      return localObject2;
    }
    System.arraycopy(localObject1, 0, localObject2, localObject2.length - localObject1.length, localObject1.length);
    return localObject2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.ElGamalEngine
 * JD-Core Version:    0.7.0.1
 */