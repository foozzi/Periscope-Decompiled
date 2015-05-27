package org.spongycastle.math.field;

import java.math.BigInteger;

class PrimeField
  implements FiniteField
{
  protected final BigInteger bdC;
  
  PrimeField(BigInteger paramBigInteger)
  {
    this.bdC = paramBigInteger;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof PrimeField)) {
      return false;
    }
    paramObject = (PrimeField)paramObject;
    return this.bdC.equals(paramObject.bdC);
  }
  
  public int hashCode()
  {
    return this.bdC.hashCode();
  }
  
  public BigInteger qq()
  {
    return this.bdC;
  }
  
  public int qr()
  {
    return 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.field.PrimeField
 * JD-Core Version:    0.7.0.1
 */