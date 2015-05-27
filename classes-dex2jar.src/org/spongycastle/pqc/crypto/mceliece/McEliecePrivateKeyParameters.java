package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class McEliecePrivateKeyParameters
  extends McElieceKeyParameters
{
  private int aQb;
  private String aby;
  private int avM;
  private GF2mField bfX;
  private PolynomialGF2mSmallM bfY;
  private GF2Matrix bga;
  private PolynomialGF2mSmallM[] bgb;
  private GF2Matrix bgk;
  private Permutation bgl;
  private Permutation bgm;
  
  public McEliecePrivateKeyParameters(String paramString, int paramInt1, int paramInt2, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, GF2Matrix paramGF2Matrix1, Permutation paramPermutation1, Permutation paramPermutation2, GF2Matrix paramGF2Matrix2, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM, McElieceParameters paramMcElieceParameters)
  {
    super(true, paramMcElieceParameters);
    this.aby = paramString;
    this.avM = paramInt2;
    this.aQb = paramInt1;
    this.bfX = paramGF2mField;
    this.bfY = paramPolynomialGF2mSmallM;
    this.bgk = paramGF2Matrix1;
    this.bgl = paramPermutation1;
    this.bgm = paramPermutation2;
    this.bga = paramGF2Matrix2;
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
  
  public GF2mField rk()
  {
    return this.bfX;
  }
  
  public PolynomialGF2mSmallM rl()
  {
    return this.bfY;
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
  
  public GF2Matrix rt()
  {
    return this.bgk;
  }
  
  public Permutation ru()
  {
    return this.bgl;
  }
  
  public Permutation rv()
  {
    return this.bgm;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters
 * JD-Core Version:    0.7.0.1
 */