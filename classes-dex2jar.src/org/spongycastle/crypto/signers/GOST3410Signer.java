package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.GOST3410KeyParameters;
import org.spongycastle.crypto.params.GOST3410Parameters;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;

public class GOST3410Signer
  implements DSA
{
  SecureRandom aFa;
  GOST3410KeyParameters aSe;
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aFa = paramCipherParameters.iN();
        this.aSe = ((GOST3410PrivateKeyParameters)paramCipherParameters.lh());
        return;
      }
      this.aFa = new SecureRandom();
      this.aSe = ((GOST3410PrivateKeyParameters)paramCipherParameters);
      return;
    }
    this.aSe = ((GOST3410PublicKeyParameters)paramCipherParameters);
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
    paramArrayOfByte = this.aSe.kJ();
    BigInteger localBigInteger = BigInteger.valueOf(0L);
    if ((localBigInteger.compareTo(paramBigInteger1) >= 0) || (paramArrayOfByte.getQ().compareTo(paramBigInteger1) <= 0)) {
      return false;
    }
    if ((localBigInteger.compareTo(paramBigInteger2) >= 0) || (paramArrayOfByte.getQ().compareTo(paramBigInteger2) <= 0)) {
      return false;
    }
    localObject = ((BigInteger)localObject).modPow(paramArrayOfByte.getQ().subtract(new BigInteger("2")), paramArrayOfByte.getQ());
    paramBigInteger2 = paramBigInteger2.multiply((BigInteger)localObject).mod(paramArrayOfByte.getQ());
    localObject = paramArrayOfByte.getQ().subtract(paramBigInteger1).multiply((BigInteger)localObject).mod(paramArrayOfByte.getQ());
    return paramArrayOfByte.getA().modPow(paramBigInteger2, paramArrayOfByte.getP()).multiply(((GOST3410PublicKeyParameters)this.aSe).getY().modPow((BigInteger)localObject, paramArrayOfByte.getP())).mod(paramArrayOfByte.getP()).mod(paramArrayOfByte.getQ()).equals(paramBigInteger1);
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
    localObject = this.aSe.kJ();
    BigInteger localBigInteger1;
    do
    {
      localBigInteger1 = new BigInteger(((GOST3410Parameters)localObject).getQ().bitLength(), this.aFa);
    } while (localBigInteger1.compareTo(((GOST3410Parameters)localObject).getQ()) >= 0);
    BigInteger localBigInteger2 = ((GOST3410Parameters)localObject).getA().modPow(localBigInteger1, ((GOST3410Parameters)localObject).getP()).mod(((GOST3410Parameters)localObject).getQ());
    return new BigInteger[] { localBigInteger2, localBigInteger1.multiply(paramArrayOfByte).add(((GOST3410PrivateKeyParameters)this.aSe).getX().multiply(localBigInteger2)).mod(((GOST3410Parameters)localObject).getQ()) };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.signers.GOST3410Signer
 * JD-Core Version:    0.7.0.1
 */