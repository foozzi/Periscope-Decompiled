package org.spongycastle.crypto.engines;

import java.math.BigInteger;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.params.RSAPrivateCrtKeyParameters;

class RSACoreEngine
{
  private boolean aEW;
  private RSAKeyParameters aLl;
  
  public int iB()
  {
    int i = this.aLl.getModulus().bitLength();
    if (this.aEW) {
      return (i + 7) / 8 - 1;
    }
    return (i + 7) / 8;
  }
  
  public int iC()
  {
    int i = this.aLl.getModulus().bitLength();
    if (this.aEW) {
      return (i + 7) / 8;
    }
    return (i + 7) / 8 - 1;
  }
  
  public byte[] ʻ(BigInteger paramBigInteger)
  {
    paramBigInteger = paramBigInteger.toByteArray();
    byte[] arrayOfByte;
    if (this.aEW)
    {
      if ((paramBigInteger[0] == 0) && (paramBigInteger.length > iC()))
      {
        arrayOfByte = new byte[paramBigInteger.length - 1];
        System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
        return arrayOfByte;
      }
      if (paramBigInteger.length < iC())
      {
        arrayOfByte = new byte[iC()];
        System.arraycopy(paramBigInteger, 0, arrayOfByte, arrayOfByte.length - paramBigInteger.length, paramBigInteger.length);
        return arrayOfByte;
      }
    }
    else if (paramBigInteger[0] == 0)
    {
      arrayOfByte = new byte[paramBigInteger.length - 1];
      System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    return paramBigInteger;
  }
  
  public BigInteger ʼ(BigInteger paramBigInteger)
  {
    if ((this.aLl instanceof RSAPrivateCrtKeyParameters))
    {
      Object localObject = (RSAPrivateCrtKeyParameters)this.aLl;
      BigInteger localBigInteger1 = ((RSAPrivateCrtKeyParameters)localObject).getP();
      BigInteger localBigInteger2 = ((RSAPrivateCrtKeyParameters)localObject).getQ();
      BigInteger localBigInteger4 = ((RSAPrivateCrtKeyParameters)localObject).ll();
      BigInteger localBigInteger3 = ((RSAPrivateCrtKeyParameters)localObject).lm();
      localObject = ((RSAPrivateCrtKeyParameters)localObject).ln();
      localBigInteger4 = paramBigInteger.remainder(localBigInteger1).modPow(localBigInteger4, localBigInteger1);
      paramBigInteger = paramBigInteger.remainder(localBigInteger2).modPow(localBigInteger3, localBigInteger2);
      return localBigInteger4.subtract(paramBigInteger).multiply((BigInteger)localObject).mod(localBigInteger1).multiply(localBigInteger2).add(paramBigInteger);
    }
    return paramBigInteger.modPow(this.aLl.getExponent(), this.aLl.getModulus());
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      this.aLl = ((RSAKeyParameters)((ParametersWithRandom)paramCipherParameters).lh());
    } else {
      this.aLl = ((RSAKeyParameters)paramCipherParameters);
    }
    this.aEW = paramBoolean;
  }
  
  public BigInteger ᵎ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 > iB() + 1) {
      throw new DataLengthException("input too large for RSA cipher.");
    }
    if ((paramInt2 == iB() + 1) && (!this.aEW)) {
      throw new DataLengthException("input too large for RSA cipher.");
    }
    if ((paramInt1 != 0) || (paramInt2 != paramArrayOfByte.length))
    {
      byte[] arrayOfByte = new byte[paramInt2];
      System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
      paramArrayOfByte = arrayOfByte;
    }
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    if (paramArrayOfByte.compareTo(this.aLl.getModulus()) >= 0) {
      throw new DataLengthException("input too large for RSA cipher.");
    }
    return paramArrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RSACoreEngine
 * JD-Core Version:    0.7.0.1
 */