package org.spongycastle.pqc.math.linearalgebra;

public class GF2mVector
  extends Vector
{
  private GF2mField bfX;
  private int[] biW;
  
  public GF2mVector(GF2mField paramGF2mField, int[] paramArrayOfInt)
  {
    this.bfX = paramGF2mField;
    this.length = paramArrayOfInt.length;
    int i = paramArrayOfInt.length - 1;
    while (i >= 0)
    {
      if (!paramGF2mField.จ(paramArrayOfInt[i])) {
        throw new ArithmeticException("Element array is not specified over the given finite field.");
      }
      i -= 1;
    }
    this.biW = IntUtils.י(paramArrayOfInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GF2mVector)) {
      return false;
    }
    paramObject = (GF2mVector)paramObject;
    if (!this.bfX.equals(paramObject.bfX)) {
      return false;
    }
    return IntUtils.equals(this.biW, paramObject.biW);
  }
  
  public int hashCode()
  {
    return this.bfX.hashCode() * 31 + this.biW.hashCode();
  }
  
  public GF2mField rk()
  {
    return this.bfX;
  }
  
  public int[] ss()
  {
    return IntUtils.י(this.biW);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < this.biW.length)
    {
      int j = 0;
      while (j < this.bfX.qs())
      {
        if ((this.biW[i] & 1 << (j & 0x1F)) != 0) {
          localStringBuffer.append('1');
        } else {
          localStringBuffer.append('0');
        }
        j += 1;
      }
      localStringBuffer.append(' ');
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public Vector ˏ(Vector paramVector)
  {
    throw new RuntimeException("not implemented");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2mVector
 * JD-Core Version:    0.7.0.1
 */