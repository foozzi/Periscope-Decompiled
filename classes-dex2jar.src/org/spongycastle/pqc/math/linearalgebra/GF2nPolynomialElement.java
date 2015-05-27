package org.spongycastle.pqc.math.linearalgebra;

public class GF2nPolynomialElement
  extends GF2nElement
{
  private static final int[] biR = { 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, -2147483648, 0 };
  private GF2Polynomial bjh;
  
  public GF2nPolynomialElement(GF2nPolynomialElement paramGF2nPolynomialElement)
  {
    this.biX = paramGF2nPolynomialElement.biX;
    this.biY = paramGF2nPolynomialElement.biY;
    this.bjh = new GF2Polynomial(paramGF2nPolynomialElement.bjh);
  }
  
  public Object clone()
  {
    return new GF2nPolynomialElement(this);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2nPolynomialElement))) {
      return false;
    }
    paramObject = (GF2nPolynomialElement)paramObject;
    if ((this.biX != paramObject.biX) && (!this.biX.st().equals(paramObject.biX.st()))) {
      return false;
    }
    return this.bjh.equals(paramObject.bjh);
  }
  
  public int hashCode()
  {
    return this.biX.hashCode() + this.bjh.hashCode();
  }
  
  public boolean isZero()
  {
    return this.bjh.isZero();
  }
  
  public String toString()
  {
    return this.bjh.toString(16);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nPolynomialElement
 * JD-Core Version:    0.7.0.1
 */