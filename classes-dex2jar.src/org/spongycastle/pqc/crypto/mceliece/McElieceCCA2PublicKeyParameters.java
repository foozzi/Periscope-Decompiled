package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;

public class McElieceCCA2PublicKeyParameters
  extends McElieceCCA2KeyParameters
{
  private int aQb;
  private String aby;
  private int bdK;
  private GF2Matrix bgc;
  
  public McElieceCCA2PublicKeyParameters(String paramString, int paramInt1, int paramInt2, GF2Matrix paramGF2Matrix, McElieceCCA2Parameters paramMcElieceCCA2Parameters)
  {
    super(false, paramMcElieceCCA2Parameters);
    this.aby = paramString;
    this.aQb = paramInt1;
    this.bdK = paramInt2;
    this.bgc = new GF2Matrix(paramGF2Matrix);
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  public int ri()
  {
    return this.bgc.getNumRows();
  }
  
  public int rj()
  {
    return this.bdK;
  }
  
  public String rp()
  {
    return this.aby;
  }
  
  public GF2Matrix rq()
  {
    return this.bgc;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */