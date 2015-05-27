package org.spongycastle.math.field;

import org.spongycastle.util.Arrays;

class GF2Polynomial
  implements Polynomial
{
  protected final int[] bdz;
  
  GF2Polynomial(int[] paramArrayOfInt)
  {
    this.bdz = Arrays.י(paramArrayOfInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof GF2Polynomial)) {
      return false;
    }
    paramObject = (GF2Polynomial)paramObject;
    return Arrays.ՙ(this.bdz, paramObject.bdz);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(this.bdz);
  }
  
  public int qs()
  {
    return this.bdz[(this.bdz.length - 1)];
  }
  
  public int[] qt()
  {
    return Arrays.י(this.bdz);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.field.GF2Polynomial
 * JD-Core Version:    0.7.0.1
 */