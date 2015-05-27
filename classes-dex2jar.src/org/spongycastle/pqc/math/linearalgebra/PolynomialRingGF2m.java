package org.spongycastle.pqc.math.linearalgebra;

public class PolynomialRingGF2m
{
  private GF2mField bfX;
  private PolynomialGF2mSmallM bjs;
  protected PolynomialGF2mSmallM[] bjt;
  protected PolynomialGF2mSmallM[] bju;
  
  public PolynomialRingGF2m(GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM)
  {
    this.bfX = paramGF2mField;
    this.bjs = paramPolynomialGF2mSmallM;
    sI();
    sJ();
  }
  
  private void sI()
  {
    int j = this.bjs.qs();
    this.bjt = new PolynomialGF2mSmallM[j];
    int i = 0;
    Object localObject;
    while (i < j >> 1)
    {
      localObject = new int[(i << 1) + 1];
      localObject[(i << 1)] = 1;
      this.bjt[i] = new PolynomialGF2mSmallM(this.bfX, (int[])localObject);
      i += 1;
    }
    i = j >> 1;
    while (i < j)
    {
      localObject = new int[(i << 1) + 1];
      localObject[(i << 1)] = 1;
      localObject = new PolynomialGF2mSmallM(this.bfX, (int[])localObject);
      this.bjt[i] = ((PolynomialGF2mSmallM)localObject).ˏ(this.bjs);
      i += 1;
    }
  }
  
  private void sJ()
  {
    int n = this.bjs.qs();
    PolynomialGF2mSmallM[] arrayOfPolynomialGF2mSmallM = new PolynomialGF2mSmallM[n];
    int i = n - 1;
    while (i >= 0)
    {
      arrayOfPolynomialGF2mSmallM[i] = new PolynomialGF2mSmallM(this.bjt[i]);
      i -= 1;
    }
    this.bju = new PolynomialGF2mSmallM[n];
    i = n - 1;
    while (i >= 0)
    {
      this.bju[i] = new PolynomialGF2mSmallM(this.bfX, i);
      i -= 1;
    }
    int j = 0;
    while (j < n)
    {
      int k;
      if (arrayOfPolynomialGF2mSmallM[j].Ꮣ(j) == 0)
      {
        k = 0;
        int m;
        for (i = j + 1; i < n; i = m + 1)
        {
          m = i;
          if (arrayOfPolynomialGF2mSmallM[i].Ꮣ(j) != 0)
          {
            k = 1;
            ˊ(arrayOfPolynomialGF2mSmallM, j, i);
            ˊ(this.bju, j, i);
            m = n;
          }
        }
        if (k == 0) {
          throw new ArithmeticException("Squaring matrix is not invertible.");
        }
      }
      i = arrayOfPolynomialGF2mSmallM[j].Ꮣ(j);
      i = this.bfX.ܕ(i);
      arrayOfPolynomialGF2mSmallM[j].ᖟ(i);
      this.bju[j].ᖟ(i);
      i = 0;
      while (i < n)
      {
        if (i != j)
        {
          k = arrayOfPolynomialGF2mSmallM[i].Ꮣ(j);
          if (k != 0)
          {
            PolynomialGF2mSmallM localPolynomialGF2mSmallM1 = arrayOfPolynomialGF2mSmallM[j].ᒫ(k);
            PolynomialGF2mSmallM localPolynomialGF2mSmallM2 = this.bju[j].ᒫ(k);
            arrayOfPolynomialGF2mSmallM[i].ˋ(localPolynomialGF2mSmallM1);
            this.bju[i].ˋ(localPolynomialGF2mSmallM2);
          }
        }
        i += 1;
      }
      j += 1;
    }
  }
  
  private static void ˊ(PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM, int paramInt1, int paramInt2)
  {
    PolynomialGF2mSmallM localPolynomialGF2mSmallM = paramArrayOfPolynomialGF2mSmallM[paramInt1];
    paramArrayOfPolynomialGF2mSmallM[paramInt1] = paramArrayOfPolynomialGF2mSmallM[paramInt2];
    paramArrayOfPolynomialGF2mSmallM[paramInt2] = localPolynomialGF2mSmallM;
  }
  
  public PolynomialGF2mSmallM[] sH()
  {
    return this.bju;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2m
 * JD-Core Version:    0.7.0.1
 */