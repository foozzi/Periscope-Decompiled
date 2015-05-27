package org.spongycastle.pqc.math.linearalgebra;

public abstract class GF2nField
{
  protected int biY;
  protected GF2Polynomial biZ;
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2nField))) {
      return false;
    }
    paramObject = (GF2nField)paramObject;
    if (paramObject.biY != this.biY) {
      return false;
    }
    if (!this.biZ.equals(paramObject.biZ)) {
      return false;
    }
    if (((this instanceof GF2nPolynomialField)) && (!(paramObject instanceof GF2nPolynomialField))) {
      return false;
    }
    return (!(this instanceof GF2nONBField)) || ((paramObject instanceof GF2nONBField));
  }
  
  public int hashCode()
  {
    return this.biY + this.biZ.hashCode();
  }
  
  public final int qs()
  {
    return this.biY;
  }
  
  public final GF2Polynomial st()
  {
    if (this.biZ == null) {
      su();
    }
    return new GF2Polynomial(this.biZ);
  }
  
  protected abstract void su();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nField
 * JD-Core Version:    0.7.0.1
 */