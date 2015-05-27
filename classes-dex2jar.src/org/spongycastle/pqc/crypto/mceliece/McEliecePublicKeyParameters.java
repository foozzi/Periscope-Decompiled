package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

public class McEliecePublicKeyParameters
  extends McElieceKeyParameters
{
  private int aQb;
  private String aby;
  private int bdK;
  private GF2Matrix bgn;
  
  public McEliecePublicKeyParameters(String paramString, int paramInt1, int paramInt2, GF2Matrix paramGF2Matrix, McElieceParameters paramMcElieceParameters)
  {
    super(false, paramMcElieceParameters);
    this.aby = paramString;
    this.aQb = paramInt1;
    this.bdK = paramInt2;
    this.bgn = new GF2Matrix(paramGF2Matrix);
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  public int ri()
  {
    return this.bgn.getNumRows();
  }
  
  public int rj()
  {
    return this.bdK;
  }
  
  public String rp()
  {
    return this.aby;
  }
  
  public GF2Matrix rw()
  {
    return this.bgn;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */