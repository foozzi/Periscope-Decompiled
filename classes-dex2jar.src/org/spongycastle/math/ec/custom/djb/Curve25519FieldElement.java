package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;

public class Curve25519FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = Curve25519.aFA;
  private static final int[] bdh = { 1242472624, -991028441, -1389370248, 792926214, 1039914919, 726466713, 1338105611, 730014848 };
  protected int[] aLJ;
  
  public Curve25519FieldElement()
  {
    this.aLJ = Nat256.qv();
  }
  
  public Curve25519FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for Curve25519FieldElement");
    }
    this.aLJ = Curve25519Field.ﹳ(paramBigInteger);
  }
  
  protected Curve25519FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof Curve25519FieldElement)) {
      return false;
    }
    paramObject = (Curve25519FieldElement)paramObject;
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
    Curve25519Field.ʼ(this.aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat256.qv();
    Curve25519Field.ʽ(this.aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat256.qv();
    Curve25519Field.ι(this.aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat256.qv();
    Mod.ͺ(Curve25519Field.aIX, this.aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat256.ﹳ(arrayOfInt1)) || (Nat256.ᐨ(arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat256.qv();
    Curve25519Field.ι(arrayOfInt1, arrayOfInt2);
    Curve25519Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    Curve25519Field.ι(arrayOfInt2, arrayOfInt2);
    Curve25519Field.ˎ(arrayOfInt2, arrayOfInt1, arrayOfInt2);
    int[] arrayOfInt3 = Nat256.qv();
    Curve25519Field.ι(arrayOfInt2, arrayOfInt3);
    Curve25519Field.ˎ(arrayOfInt3, arrayOfInt1, arrayOfInt3);
    int[] arrayOfInt4 = Nat256.qv();
    Curve25519Field.ˋ(arrayOfInt3, 3, arrayOfInt4);
    Curve25519Field.ˎ(arrayOfInt4, arrayOfInt2, arrayOfInt4);
    Curve25519Field.ˋ(arrayOfInt4, 4, arrayOfInt2);
    Curve25519Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    Curve25519Field.ˋ(arrayOfInt2, 4, arrayOfInt4);
    Curve25519Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    Curve25519Field.ˋ(arrayOfInt4, 15, arrayOfInt3);
    Curve25519Field.ˎ(arrayOfInt3, arrayOfInt4, arrayOfInt3);
    Curve25519Field.ˋ(arrayOfInt3, 30, arrayOfInt4);
    Curve25519Field.ˎ(arrayOfInt4, arrayOfInt3, arrayOfInt4);
    Curve25519Field.ˋ(arrayOfInt4, 60, arrayOfInt3);
    Curve25519Field.ˎ(arrayOfInt3, arrayOfInt4, arrayOfInt3);
    Curve25519Field.ˋ(arrayOfInt3, 11, arrayOfInt4);
    Curve25519Field.ˎ(arrayOfInt4, arrayOfInt2, arrayOfInt4);
    Curve25519Field.ˋ(arrayOfInt4, 120, arrayOfInt2);
    Curve25519Field.ˎ(arrayOfInt2, arrayOfInt3, arrayOfInt2);
    Curve25519Field.ι(arrayOfInt2, arrayOfInt2);
    Curve25519Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat256.ˈ(arrayOfInt1, arrayOfInt3)) {
      return new Curve25519FieldElement(arrayOfInt2);
    }
    Curve25519Field.ˎ(arrayOfInt2, bdh, arrayOfInt2);
    Curve25519Field.ι(arrayOfInt2, arrayOfInt3);
    if (Nat256.ˈ(arrayOfInt1, arrayOfInt3)) {
      return new Curve25519FieldElement(arrayOfInt2);
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
    Curve25519Field.ˎ(this.aLJ, ((Curve25519FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    Mod.ͺ(Curve25519Field.aIX, ((Curve25519FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    Curve25519Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    Curve25519Field.ˋ(this.aLJ, ((Curve25519FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat256.qv();
    Curve25519Field.ᐝ(this.aLJ, ((Curve25519FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new Curve25519FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.djb.Curve25519FieldElement
 * JD-Core Version:    0.7.0.1
 */