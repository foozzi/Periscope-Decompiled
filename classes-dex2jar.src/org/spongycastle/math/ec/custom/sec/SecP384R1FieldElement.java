package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

public class SecP384R1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP384R1Curve.aFA;
  protected int[] aLJ;
  
  public SecP384R1FieldElement()
  {
    this.aLJ = Nat.ċ(12);
  }
  
  public SecP384R1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP384R1FieldElement");
    }
    this.aLJ = SecP384R1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP384R1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP384R1FieldElement)) {
      return false;
    }
    paramObject = (SecP384R1FieldElement)paramObject;
    return Nat.ˏ(12, this.aLJ, paramObject.aLJ);
  }
  
  public int getFieldSize()
  {
    return bdg.bitLength();
  }
  
  public int hashCode()
  {
    return bdg.hashCode() ^ Arrays.ˋ(this.aLJ, 0, 12);
  }
  
  public boolean isZero()
  {
    return Nat.ˈ(12, this.aLJ);
  }
  
  public boolean pA()
  {
    return Nat.ʿ(12, this.aLJ);
  }
  
  public boolean pB()
  {
    return Nat.ʻ(this.aLJ, 0) == 1;
  }
  
  public ECFieldElement pv()
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ι(this.aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat.ċ(12);
    Mod.ͺ(SecP384R1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat.ˈ(12, arrayOfInt1)) || (Nat.ʿ(12, arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat.ċ(12);
    int[] arrayOfInt3 = Nat.ċ(12);
    int[] arrayOfInt4 = Nat.ċ(12);
    int[] arrayOfInt5 = Nat.ċ(12);
    SecP384R1Field.ι(arrayOfInt1, arrayOfInt2);
    SecP384R1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    SecP384R1Field.ˋ(arrayOfInt2, 2, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt2, arrayOfInt3);
    SecP384R1Field.ι(arrayOfInt3, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt1, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 5, arrayOfInt4);
    SecP384R1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    SecP384R1Field.ˋ(arrayOfInt4, 5, arrayOfInt5);
    SecP384R1Field.ˎ(arrayOfInt5, arrayOfInt3, arrayOfInt5);
    SecP384R1Field.ˋ(arrayOfInt5, 15, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt5, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 2, arrayOfInt4);
    SecP384R1Field.ˎ(arrayOfInt2, arrayOfInt4, arrayOfInt2);
    SecP384R1Field.ˋ(arrayOfInt4, 28, arrayOfInt4);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt4, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 60, arrayOfInt4);
    SecP384R1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    SecP384R1Field.ˋ(arrayOfInt4, 120, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt4, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 15, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt5, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 33, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt2, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 64, arrayOfInt3);
    SecP384R1Field.ˎ(arrayOfInt3, arrayOfInt1, arrayOfInt3);
    SecP384R1Field.ˋ(arrayOfInt3, 30, arrayOfInt2);
    SecP384R1Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat.ˏ(12, arrayOfInt1, arrayOfInt3)) {
      return new SecP384R1FieldElement(arrayOfInt2);
    }
    return null;
  }
  
  public BigInteger toBigInteger()
  {
    return Nat.ˉ(12, this.aLJ);
  }
  
  public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ˎ(this.aLJ, ((SecP384R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(12);
    Mod.ͺ(SecP384R1Field.aIX, ((SecP384R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP384R1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ˋ(this.aLJ, ((SecP384R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(12);
    SecP384R1Field.ᐝ(this.aLJ, ((SecP384R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP384R1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP384R1FieldElement
 * JD-Core Version:    0.7.0.1
 */