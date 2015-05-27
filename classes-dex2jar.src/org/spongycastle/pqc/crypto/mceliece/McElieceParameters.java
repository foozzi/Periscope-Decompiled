package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2;

public class McElieceParameters
  implements CipherParameters
{
  private int aQb;
  private int avL;
  private int bdK;
  private int bfW;
  
  public McElieceParameters()
  {
    this(11, 50);
  }
  
  public McElieceParameters(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 1) {
      throw new IllegalArgumentException("m must be positive");
    }
    if (paramInt1 > 32) {
      throw new IllegalArgumentException("m is too large");
    }
    this.avL = paramInt1;
    this.aQb = (1 << paramInt1);
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("t must be positive");
    }
    if (paramInt2 > this.aQb) {
      throw new IllegalArgumentException("t must be less than n = 2^m");
    }
    this.bdK = paramInt2;
    this.bfW = PolynomialRingGF2.ᴮ(paramInt1);
  }
  
  public int getM()
  {
    return this.avL;
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  public int rj()
  {
    return this.bdK;
  }
  
  public int rs()
  {
    return this.bfW;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceParameters
 * JD-Core Version:    0.7.0.1
 */