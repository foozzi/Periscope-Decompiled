package org.spongycastle.pqc.jcajce.spec;

import java.security.InvalidParameterException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;

public class ECCKeyGenParameterSpec
  implements AlgorithmParameterSpec
{
  private int aQb;
  private int avL;
  private int bdK;
  private int bfW;
  
  public ECCKeyGenParameterSpec()
  {
    this(11, 50);
  }
  
  public ECCKeyGenParameterSpec(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 1) {
      throw new InvalidParameterException("m must be positive");
    }
    if (paramInt1 > 32) {
      throw new InvalidParameterException("m is too large");
    }
    this.avL = paramInt1;
    this.aQb = (1 << paramInt1);
    if (paramInt2 < 0) {
      throw new InvalidParameterException("t must be positive");
    }
    if (paramInt2 > this.aQb) {
      throw new InvalidParameterException("t must be less than n = 2^m");
    }
    this.bdK = paramInt2;
    this.bfW = PolynomialRingGF2.ᴮ(paramInt1);
  }
  
  public int getM()
  {
    return this.avL;
  }
  
  public int rj()
  {
    return this.bdK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.spec.ECCKeyGenParameterSpec
 * JD-Core Version:    0.7.0.1
 */