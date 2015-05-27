package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat192;
import org.spongycastle.util.Arrays;

public class SecP192K1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP192K1Curve.aFA;
  protected int[] aLJ;
  
  public SecP192K1FieldElement()
  {
    this.aLJ = Nat192.qv();
  }
  
  public SecP192K1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP192K1FieldElement");
    }
    this.aLJ = SecP192K1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP192K1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP192K1FieldElement)) {
      return false;
    }
    paramObject = (SecP192K1FieldElement)paramObject;
    return Nat192.ˈ(this.aLJ, paramObject.aLJ);
  }
  
  public int getFieldSize()
  {
    return bdg.bitLength();
  }
  
  public int hashCode()
  {
    return bdg.hashCode() ^ Arrays.ˋ(this.aLJ, 0, 6);
  }
  
  public boolean isZero()
  {
    return Nat192.ﹳ(this.aLJ);
  }
  
  public boolean pA()
  {
    return Nat192.ᐨ(this.aLJ);
  }
  
  public boolean pB()
  {
    return Nat192.ʻ(this.aLJ, 0) == 1;
  }
  
  public ECFieldElement pv()
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ι(this.aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat192.qv();
    Mod.ͺ(SecP192K1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat192.ﹳ(arrayOfInt1)) || (Nat192.ᐨ(arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat192.qv();
    SecP192K1Field.ι(arrayOfInt1, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    int[] arrayOfInt3 = Nat192.qv();
    SecP192K1Field.ι(arrayOfInt2, arrayOfInt3);
    SecP192K1Field.ˎ(arrayOfInt3, arrayOfInt1, arrayOfInt3);
    int[] arrayOfInt4 = Nat192.qv();
    SecP192K1Field.ˋ(arrayOfInt3, 3, arrayOfInt4);
    SecP192K1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    SecP192K1Field.ˋ(arrayOfInt4, 2, arrayOfInt4);
    SecP192K1Field.ˎ(arrayOfInt4, arrayOfInt2, arrayOfInt4);
    SecP192K1Field.ˋ(arrayOfInt4, 8, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt4, arrayOfInt2);
    SecP192K1Field.ˋ(arrayOfInt2, 3, arrayOfInt4);
    SecP192K1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    int[] arrayOfInt5 = Nat192.qv();
    SecP192K1Field.ˋ(arrayOfInt4, 16, arrayOfInt5);
    SecP192K1Field.ˎ(arrayOfInt5, arrayOfInt2, arrayOfInt5);
    SecP192K1Field.ˋ(arrayOfInt5, 35, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt5, arrayOfInt2);
    SecP192K1Field.ˋ(arrayOfInt2, 70, arrayOfInt5);
    SecP192K1Field.ˎ(arrayOfInt5, arrayOfInt2, arrayOfInt5);
    SecP192K1Field.ˋ(arrayOfInt5, 19, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt4, arrayOfInt2);
    SecP192K1Field.ˋ(arrayOfInt2, 20, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt4, arrayOfInt2);
    SecP192K1Field.ˋ(arrayOfInt2, 4, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    SecP192K1Field.ˋ(arrayOfInt2, 6, arrayOfInt2);
    SecP192K1Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    SecP192K1Field.ι(arrayOfInt2, arrayOfInt2);
    SecP192K1Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat192.ˈ(arrayOfInt1, arrayOfInt3)) {
      return new SecP192K1FieldElement(arrayOfInt2);
    }
    return null;
  }
  
  public BigInteger toBigInteger()
  {
    return Nat192.ﾞ(this.aLJ);
  }
  
  public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ˎ(this.aLJ, ((SecP192K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat192.qv();
    Mod.ͺ(SecP192K1Field.aIX, ((SecP192K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP192K1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ˋ(this.aLJ, ((SecP192K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat192.qv();
    SecP192K1Field.ᐝ(this.aLJ, ((SecP192K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP192K1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP192K1FieldElement
 * JD-Core Version:    0.7.0.1
 */