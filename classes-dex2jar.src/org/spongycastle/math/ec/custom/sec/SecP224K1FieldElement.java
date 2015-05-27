package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

public class SecP224K1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP224K1Curve.aFA;
  private static final int[] bdh = { 868209154, -587542221, 579297866, -1014948952, -1470801668, 514782679, -1897982644 };
  protected int[] aLJ;
  
  public SecP224K1FieldElement()
  {
    this.aLJ = Nat224.qv();
  }
  
  public SecP224K1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP224K1FieldElement");
    }
    this.aLJ = SecP224K1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP224K1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP224K1FieldElement)) {
      return false;
    }
    paramObject = (SecP224K1FieldElement)paramObject;
    return Nat224.ˈ(this.aLJ, paramObject.aLJ);
  }
  
  public int getFieldSize()
  {
    return bdg.bitLength();
  }
  
  public int hashCode()
  {
    return bdg.hashCode() ^ Arrays.ˋ(this.aLJ, 0, 7);
  }
  
  public boolean isZero()
  {
    return Nat224.ﹳ(this.aLJ);
  }
  
  public boolean pA()
  {
    return Nat224.ᐨ(this.aLJ);
  }
  
  public boolean pB()
  {
    return Nat224.ʻ(this.aLJ, 0) == 1;
  }
  
  public ECFieldElement pv()
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ι(this.aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat224.qv();
    Mod.ͺ(SecP224K1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat224.ﹳ(arrayOfInt1)) || (Nat224.ᐨ(arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat224.qv();
    SecP224K1Field.ι(arrayOfInt1, arrayOfInt2);
    SecP224K1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    SecP224K1Field.ι(arrayOfInt2, arrayOfInt2);
    SecP224K1Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    int[] arrayOfInt3 = Nat224.qv();
    SecP224K1Field.ι(arrayOfInt2, arrayOfInt3);
    SecP224K1Field.ˎ(arrayOfInt3, arrayOfInt1, arrayOfInt3);
    int[] arrayOfInt4 = Nat224.qv();
    SecP224K1Field.ˋ(arrayOfInt3, 4, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    int[] arrayOfInt5 = Nat224.qv();
    SecP224K1Field.ˋ(arrayOfInt4, 3, arrayOfInt5);
    SecP224K1Field.ˎ(arrayOfInt5, arrayOfInt2, arrayOfInt5);
    SecP224K1Field.ˋ(arrayOfInt5, 8, arrayOfInt5);
    SecP224K1Field.ˎ(arrayOfInt5, arrayOfInt4, arrayOfInt5);
    SecP224K1Field.ˋ(arrayOfInt5, 4, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    SecP224K1Field.ˋ(arrayOfInt4, 19, arrayOfInt3);
    SecP224K1Field.ˎ(arrayOfInt3, arrayOfInt5, arrayOfInt3);
    int[] arrayOfInt6 = Nat224.qv();
    SecP224K1Field.ˋ(arrayOfInt3, 42, arrayOfInt6);
    SecP224K1Field.ˎ(arrayOfInt6, arrayOfInt3, arrayOfInt6);
    SecP224K1Field.ˋ(arrayOfInt6, 23, arrayOfInt3);
    SecP224K1Field.ˎ(arrayOfInt3, arrayOfInt4, arrayOfInt3);
    SecP224K1Field.ˋ(arrayOfInt3, 84, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt6, arrayOfInt4);
    SecP224K1Field.ˋ(arrayOfInt4, 20, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt5, arrayOfInt4);
    SecP224K1Field.ˋ(arrayOfInt4, 3, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt1, arrayOfInt4);
    SecP224K1Field.ˋ(arrayOfInt4, 2, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt1, arrayOfInt4);
    SecP224K1Field.ˋ(arrayOfInt4, 4, arrayOfInt4);
    SecP224K1Field.ˎ(arrayOfInt4, arrayOfInt2, arrayOfInt4);
    SecP224K1Field.ι(arrayOfInt4, arrayOfInt4);
    SecP224K1Field.ι(arrayOfInt4, arrayOfInt6);
    if (Nat224.ˈ(arrayOfInt1, arrayOfInt6)) {
      return new SecP224K1FieldElement(arrayOfInt4);
    }
    SecP224K1Field.ˎ(arrayOfInt4, bdh, arrayOfInt4);
    SecP224K1Field.ι(arrayOfInt4, arrayOfInt6);
    if (Nat224.ˈ(arrayOfInt1, arrayOfInt6)) {
      return new SecP224K1FieldElement(arrayOfInt4);
    }
    return null;
  }
  
  public BigInteger toBigInteger()
  {
    return Nat224.ﾞ(this.aLJ);
  }
  
  public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ˎ(this.aLJ, ((SecP224K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    Mod.ͺ(SecP224K1Field.aIX, ((SecP224K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP224K1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ˋ(this.aLJ, ((SecP224K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224K1Field.ᐝ(this.aLJ, ((SecP224K1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224K1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP224K1FieldElement
 * JD-Core Version:    0.7.0.1
 */