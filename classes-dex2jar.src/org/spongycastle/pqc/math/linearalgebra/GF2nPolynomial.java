package org.spongycastle.pqc.math.linearalgebra;

public class GF2nPolynomial
{
  private GF2nElement[] bjg;
  private int size;
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2nPolynomial))) {
      return false;
    }
    paramObject = (GF2nPolynomial)paramObject;
    if (qs() != paramObject.qs()) {
      return false;
    }
    int i = 0;
    while (i < this.size)
    {
      if (!this.bjg[i].equals(paramObject.bjg[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    return qs() + this.bjg.hashCode();
  }
  
  public final int qs()
  {
    int i = this.size - 1;
    while (i >= 0)
    {
      if (!this.bjg[i].isZero()) {
        return i;
      }
      i -= 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nPolynomial
 * JD-Core Version:    0.7.0.1
 */