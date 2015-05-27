package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.DHParameters;

public class DHParametersGenerator
{
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  private SecureRandom aFa;
  private int aMG;
  private int size;
  
  public DHParameters jO()
  {
    Object localObject = DHParametersHelper.ˋ(this.size, this.aMG, this.aFa);
    BigInteger localBigInteger = localObject[0];
    localObject = localObject[1];
    return new DHParameters(localBigInteger, DHParametersHelper.ˊ(localBigInteger, (BigInteger)localObject, this.aFa), (BigInteger)localObject, aKc, null);
  }
  
  public void ˊ(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    this.size = paramInt1;
    this.aMG = paramInt2;
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DHParametersGenerator
 * JD-Core Version:    0.7.0.1
 */