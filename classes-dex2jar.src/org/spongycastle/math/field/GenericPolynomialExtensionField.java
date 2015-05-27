package org.spongycastle.math.field;

import java.math.BigInteger;
import org.spongycastle.util.Integers;

class GenericPolynomialExtensionField
  implements PolynomialExtensionField
{
  protected final FiniteField bdA;
  protected final Polynomial bdB;
  
  GenericPolynomialExtensionField(FiniteField paramFiniteField, Polynomial paramPolynomial)
  {
    this.bdA = paramFiniteField;
    this.bdB = paramPolynomial;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof GenericPolynomialExtensionField)) {
      return false;
    }
    paramObject = (GenericPolynomialExtensionField)paramObject;
    return (this.bdA.equals(paramObject.bdA)) && (this.bdB.equals(paramObject.bdB));
  }
  
  public int hashCode()
  {
    return this.bdA.hashCode() ^ Integers.rotateLeft(this.bdB.hashCode(), 16);
  }
  
  public BigInteger qq()
  {
    return this.bdA.qq();
  }
  
  public int qr()
  {
    return this.bdA.qr() * this.bdB.qs();
  }
  
  public Polynomial qu()
  {
    return this.bdB;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.field.GenericPolynomialExtensionField
 * JD-Core Version:    0.7.0.1
 */