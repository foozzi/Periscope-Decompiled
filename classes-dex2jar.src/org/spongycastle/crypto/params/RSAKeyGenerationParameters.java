package org.spongycastle.crypto.params;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class RSAKeyGenerationParameters
  extends KeyGenerationParameters
{
  private int aMG;
  private BigInteger asR;
  
  public RSAKeyGenerationParameters(BigInteger paramBigInteger, SecureRandom paramSecureRandom, int paramInt1, int paramInt2)
  {
    super(paramSecureRandom, paramInt1);
    if (paramInt1 < 12) {
      throw new IllegalArgumentException("key strength too small");
    }
    if (!paramBigInteger.testBit(0)) {
      throw new IllegalArgumentException("public exponent cannot be even");
    }
    this.asR = paramBigInteger;
    this.aMG = paramInt2;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.asR;
  }
  
  public int kD()
  {
    return this.aMG;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.RSAKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */