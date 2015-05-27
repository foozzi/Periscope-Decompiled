package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.DSAKeyParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class DSASigner
  implements DSA
{
  private SecureRandom aFa;
  private final DSAKCalculator aSb;
  private DSAKeyParameters aSc;
  
  public DSASigner()
  {
    this.aSb = new RandomDSAKCalculator();
  }
  
  public DSASigner(DSAKCalculator paramDSAKCalculator)
  {
    this.aSb = paramDSAKCalculator;
  }
  
  private BigInteger ˊ(BigInteger paramBigInteger, byte[] paramArrayOfByte)
  {
    if (paramBigInteger.bitLength() >= paramArrayOfByte.length * 8) {
      return new BigInteger(1, paramArrayOfByte);
    }
    paramBigInteger = new byte[paramBigInteger.bitLength() / 8];
    System.arraycopy(paramArrayOfByte, 0, paramBigInteger, 0, paramBigInteger.length);
    return new BigInteger(1, paramBigInteger);
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
        this.aSc = ((DSAPrivateKeyParameters)paramCipherParameters.lh());
        paramCipherParameters = paramCipherParameters.iN();
      }
      else
      {
        this.aSc = ((DSAPrivateKeyParameters)paramCipherParameters);
        paramCipherParameters = localObject;
      }
    }
    else
    {
      this.aSc = ((DSAPublicKeyParameters)paramCipherParameters);
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
    DSAParameters localDSAParameters = this.aSc.kB();
    paramArrayOfByte = ˊ(localDSAParameters.getQ(), paramArrayOfByte);
    BigInteger localBigInteger = BigInteger.valueOf(0L);
    if ((localBigInteger.compareTo(paramBigInteger1) >= 0) || (localDSAParameters.getQ().compareTo(paramBigInteger1) <= 0)) {
      return false;
    }
    if ((localBigInteger.compareTo(paramBigInteger2) >= 0) || (localDSAParameters.getQ().compareTo(paramBigInteger2) <= 0)) {
      return false;
    }
    paramBigInteger2 = paramBigInteger2.modInverse(localDSAParameters.getQ());
    paramArrayOfByte = paramArrayOfByte.multiply(paramBigInteger2).mod(localDSAParameters.getQ());
    paramBigInteger2 = paramBigInteger1.multiply(paramBigInteger2).mod(localDSAParameters.getQ());
    return localDSAParameters.getG().modPow(paramArrayOfByte, localDSAParameters.getP()).multiply(((DSAPublicKeyParameters)this.aSc).getY().modPow(paramBigInteger2, localDSAParameters.getP())).mod(localDSAParameters.getP()).mod(localDSAParameters.getQ()).equals(paramBigInteger1);
  }
  
  public BigInteger[] ᵎ(byte[] paramArrayOfByte)
  {
    DSAParameters localDSAParameters = this.aSc.kB();
    BigInteger localBigInteger1 = ˊ(localDSAParameters.getQ(), paramArrayOfByte);
    if (this.aSb.lA()) {
      this.aSb.ˊ(localDSAParameters.getQ(), ((DSAPrivateKeyParameters)this.aSc).getX(), paramArrayOfByte);
    } else {
      this.aSb.ˎ(localDSAParameters.getQ(), this.aFa);
    }
    paramArrayOfByte = this.aSb.lB();
    BigInteger localBigInteger2 = localDSAParameters.getG().modPow(paramArrayOfByte, localDSAParameters.getP()).mod(localDSAParameters.getQ());
    return new BigInteger[] { localBigInteger2, paramArrayOfByte.modInverse(localDSAParameters.getQ()).multiply(localBigInteger1.add(((DSAPrivateKeyParameters)this.aSc).getX().multiply(localBigInteger2))).mod(localDSAParameters.getQ()) };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.DSASigner
 * JD-Core Version:    0.7.0.1
 */