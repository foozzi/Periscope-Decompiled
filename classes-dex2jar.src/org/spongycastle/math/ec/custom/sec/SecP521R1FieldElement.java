package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;

public class SecP521R1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP521R1Curve.aFA;
  protected int[] aLJ;
  
  public SecP521R1FieldElement()
  {
    this.aLJ = Nat.ċ(17);
  }
  
  public SecP521R1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP521R1FieldElement");
    }
    this.aLJ = SecP521R1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP521R1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP521R1FieldElement)) {
      return false;
    }
    paramObject = (SecP521R1FieldElement)paramObject;
    return Nat.ˏ(17, this.aLJ, paramObject.aLJ);
  }
  
  public int getFieldSize()
  {
    return bdg.bitLength();
  }
  
  public int hashCode()
  {
    return bdg.hashCode() ^ Arrays.ˋ(this.aLJ, 0, 17);
  }
  
  public boolean isZero()
  {
    return Nat.ˈ(17, this.aLJ);
  }
  
  public boolean pA()
  {
    return Nat.ʿ(17, this.aLJ);
  }
  
  public boolean pB()
  {
    return Nat.ʻ(this.aLJ, 0) == 1;
  }
  
  public ECFieldElement pv()
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ι(this.aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat.ċ(17);
    Mod.ͺ(SecP521R1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat.ˈ(17, arrayOfInt1)) || (Nat.ʿ(17, arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat.ċ(17);
    int[] arrayOfInt3 = Nat.ċ(17);
    SecP521R1Field.ˋ(arrayOfInt1, 519, arrayOfInt2);
    SecP521R1Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat.ˏ(17, arrayOfInt1, arrayOfInt3)) {
      return new SecP521R1FieldElement(arrayOfInt2);
    }
    return null;
  }
  
  public BigInteger toBigInteger()
  {
    return Nat.ˉ(17, this.aLJ);
  }
  
  public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ˎ(this.aLJ, ((SecP521R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(17);
    Mod.ͺ(SecP521R1Field.aIX, ((SecP521R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP521R1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ˋ(this.aLJ, ((SecP521R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat.ċ(17);
    SecP521R1Field.ᐝ(this.aLJ, ((SecP521R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP521R1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP521R1FieldElement
 * JD-Core Version:    0.7.0.1
 */