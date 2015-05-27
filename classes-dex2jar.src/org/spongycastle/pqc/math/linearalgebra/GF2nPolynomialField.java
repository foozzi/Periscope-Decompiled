package org.spongycastle.pqc.math.linearalgebra;

public class GF2nPolynomialField
  extends GF2nField
{
  private boolean bji;
  private boolean bjj;
  private int bjk;
  private int[] bjl;
  
  private boolean sA()
  {
    this.biZ = new GF2Polynomial(this.biY + 1);
    int i = 0;
    do
    {
      i += 1;
      this.biZ.sk();
      this.biZ.ه(this.biY);
      this.biZ.ه(0);
    } while (!this.biZ.sl());
    return true;
  }
  
  private boolean sy()
  {
    boolean bool = false;
    int j = 0;
    this.biZ = new GF2Polynomial(this.biY + 1);
    this.biZ.ه(0);
    this.biZ.ه(this.biY);
    int i = 1;
    while ((i < this.biY) && (!bool))
    {
      this.biZ.ه(i);
      bool = this.biZ.sl();
      j += 1;
      if (bool)
      {
        this.bji = true;
        this.bjk = i;
        return bool;
      }
      this.biZ.ډ(i);
      bool = this.biZ.sl();
      i += 1;
    }
    return bool;
  }
  
  private boolean sz()
  {
    boolean bool1 = false;
    int k = 0;
    this.biZ = new GF2Polynomial(this.biY + 1);
    this.biZ.ه(0);
    this.biZ.ه(this.biY);
    int i = 1;
    while ((i <= this.biY - 3) && (!bool1))
    {
      this.biZ.ه(i);
      int j = i + 1;
      while ((j <= this.biY - 2) && (!bool1))
      {
        this.biZ.ه(j);
        int m = j + 1;
        while ((m <= this.biY - 1) && (!bool1))
        {
          this.biZ.ه(m);
          int n;
          if ((this.biY & 0x1) != 0) {
            n = 1;
          } else {
            n = 0;
          }
          int i1;
          if ((i & 0x1) != 0) {
            i1 = 1;
          } else {
            i1 = 0;
          }
          int i2;
          if ((j & 0x1) != 0) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          int i4;
          if ((m & 0x1) != 0) {
            i4 = 1;
          } else {
            i4 = 0;
          }
          int i3 = k;
          if ((n | i1 | i2 | i4) != 0)
          {
            boolean bool2 = this.biZ.sl();
            i3 = k + 1;
            bool1 = bool2;
            if (bool2)
            {
              this.bjj = true;
              this.bjl[0] = i;
              this.bjl[1] = j;
              this.bjl[2] = m;
              return bool2;
            }
          }
          this.biZ.ډ(m);
          m += 1;
          k = i3;
        }
        this.biZ.ډ(j);
        j += 1;
      }
      this.biZ.ډ(i);
      i += 1;
    }
    return bool1;
  }
  
  protected void su()
  {
    if (sy()) {
      return;
    }
    if (sz()) {
      return;
    }
    sA();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nPolynomialField
 * JD-Core Version:    0.7.0.1
 */