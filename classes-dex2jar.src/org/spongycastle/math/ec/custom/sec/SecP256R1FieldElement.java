package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

public class SecP256R1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP256R1Curve.aFA;
  protected int[] aLJ;
  
  public SecP256R1FieldElement()
  {
    this.aLJ = Nat256.qv();
  }
  
  public SecP256R1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
    }
    this.aLJ = SecP256R1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP256R1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP256R1FieldElement)) {
      return false;
    }
    paramObject = (SecP256R1FieldElement)paramObject;
    return Nat256.ˈ(this.aLJ, paramObject.aLJ);
  }
  
  public int getFieldSize()
  {
    return bdg.bitLength();
  }
  
  public int hashCode()
  {
    return bdg.hashCode() ^ Arrays.ˋ(this.aLJ, 0, 8);
  }
  
  public boolean isZero()
  {
    return Nat256.ﹳ(this.aLJ);
  }
  
  public boolean pA()
  {
    return Nat256.ᐨ(this.aLJ);
  }
  
  public boolean pB()
  {
    return Nat256.ʻ(this.aLJ, 0) == 1;
  }
  
  public ECFieldElement pv()
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ι(this.aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat256.qv();
    Mod.ͺ(SecP256R1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat256.ﹳ(arrayOfInt1)) || (Nat256.ᐨ(arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat256.qv();
    int[] arrayOfInt3 = Nat256.qv();
    SecP256R1Field.ι(arrayOfInt1, arrayOfInt2);
    SecP256R1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    SecP256R1Field.ˋ(arrayOfInt2, 2, arrayOfInt3);
    SecP256R1Field.ˎ(arrayOfInt3, arrayOfInt2, arrayOfInt3);
    SecP256R1Field.ˋ(arrayOfInt3, 4, arrayOfInt2);
    SecP256R1Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    SecP256R1Field.ˋ(arrayOfInt2, 8, arrayOfInt3);
    SecP256R1Field.ˎ(arrayOfInt3, arrayOfInt2, arrayOfInt3);
    SecP256R1Field.ˋ(arrayOfInt3, 16, arrayOfInt2);
    SecP256R1Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    SecP256R1Field.ˋ(arrayOfInt2, 32, arrayOfInt2);
    SecP256R1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    SecP256R1Field.ˋ(arrayOfInt2, 96, arrayOfInt2);
    SecP256R1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    SecP256R1Field.ˋ(arrayOfInt2, 94, arrayOfInt2);
    SecP256R1Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat256.ˈ(arrayOfInt1, arrayOfInt3)) {
      return new SecP256R1FieldElement(arrayOfInt2);
    }
    return null;
  }
  
  public BigInteger toBigInteger()
  {
    return Nat256.ﾞ(this.aLJ);
  }
  
  public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ˎ(this.aLJ, ((SecP256R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    Mod.ͺ(SecP256R1Field.aIX, ((SecP256R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP256R1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ˋ(this.aLJ, ((SecP256R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    SecP256R1Field.ᐝ(this.aLJ, ((SecP256R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP256R1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP256R1FieldElement
 * JD-Core Version:    0.7.0.1
 */