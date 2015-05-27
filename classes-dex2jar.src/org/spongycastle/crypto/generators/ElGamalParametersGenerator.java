package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.ElGamalParameters;

public class ElGamalParametersGenerator
{
  private SecureRandom aFa;
  private int aMG;
  private int size;
  
  public ElGamalParameters jT()
  {
    BigInteger[] arrayOfBigInteger = DHParametersHelper.ˋ(this.size, this.aMG, this.aFa);
    BigInteger localBigInteger = arrayOfBigInteger[0];
    return new ElGamalParameters(localBigInteger, DHParametersHelper.ˊ(localBigInteger, arrayOfBigInteger[1], this.aFa));
  }
  
  public void ˊ(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    this.size = paramInt1;
    this.aMG = paramInt2;
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.ElGamalParametersGenerator
 * JD-Core Version:    0.7.0.1
 */