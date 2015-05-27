package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class McElieceCCA2PrivateKeyParameters
  extends McElieceCCA2KeyParameters
{
  private int aQb;
  private String aby;
  private int avM;
  private GF2mField bfX;
  private PolynomialGF2mSmallM bfY;
  private Permutation bfZ;
  private GF2Matrix bga;
  private PolynomialGF2mSmallM[] bgb;
  
  public McElieceCCA2PrivateKeyParameters(String paramString, int paramInt1, int paramInt2, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, Permutation paramPermutation, GF2Matrix paramGF2Matrix, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM, McElieceCCA2Parameters paramMcElieceCCA2Parameters)
  {
    super(true, paramMcElieceCCA2Parameters);
    this.aby = paramString;
    this.aQb = paramInt1;
    this.avM = paramInt2;
    this.bfX = paramGF2mField;
    this.bfY = paramPolynomialGF2mSmallM;
    this.bfZ = paramPermutation;
    this.bga = paramGF2Matrix;
    this.bgb = paramArrayOfPolynomialGF2mSmallM;
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  public int ri()
  {
    return this.avM;
  }
  
  public int rj()
  {
    return this.bfY.qs();
  }
  
  public GF2mField rk()
  {
    return this.bfX;
  }
  
  public PolynomialGF2mSmallM rl()
  {
    return this.bfY;
  }
  
  public Permutation rm()
  {
    return this.bfZ;
  }
  
  public GF2Matrix rn()
  {
    return this.bga;
  }
  
  public PolynomialGF2mSmallM[] ro()
  {
    return this.bgb;
  }
  
  public String rp()
  {
    return this.aby;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */