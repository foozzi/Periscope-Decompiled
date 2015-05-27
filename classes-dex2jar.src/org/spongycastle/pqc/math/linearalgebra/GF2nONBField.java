package org.spongycastle.pqc.math.linearalgebra;

public class GF2nONBField
  extends GF2nField
{
  private int bjd;
  private int bjf;
  private int mLength;
  
  protected void su()
  {
    if (this.bjf == 1)
    {
      this.biZ = new GF2Polynomial(this.biY + 1, "ALL");
      return;
    }
    if (this.bjf == 2)
    {
      Object localObject2 = new GF2Polynomial(this.biY + 1, "ONE");
      Object localObject1 = new GF2Polynomial(this.biY + 1, "X");
      ((GF2Polynomial)localObject1).ˊ((GF2Polynomial)localObject2);
      int i = 1;
      while (i < this.biY)
      {
        GF2Polynomial localGF2Polynomial = ((GF2Polynomial)localObject1).sp();
        localGF2Polynomial.ˊ((GF2Polynomial)localObject2);
        i += 1;
        localObject2 = localObject1;
        localObject1 = localGF2Polynomial;
      }
      this.biZ = ((GF2Polynomial)localObject1);
    }
  }
  
  int sw()
  {
    return this.mLength;
  }
  
  int sx()
  {
    return this.bjd;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nONBField
 * JD-Core Version:    0.7.0.1
 */