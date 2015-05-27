package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat224;
import org.spongycastle.util.Arrays;

public class SecP224R1FieldElement
  extends ECFieldElement
{
  public static final BigInteger bdg = SecP224R1Curve.aFA;
  protected int[] aLJ;
  
  public SecP224R1FieldElement()
  {
    this.aLJ = Nat224.qv();
  }
  
  public SecP224R1FieldElement(BigInteger paramBigInteger)
  {
    if ((paramBigInteger == null) || (paramBigInteger.signum() < 0) || (paramBigInteger.compareTo(bdg) >= 0)) {
      throw new IllegalArgumentException("x value invalid for SecP224R1FieldElement");
    }
    this.aLJ = SecP224R1Field.ﹳ(paramBigInteger);
  }
  
  protected SecP224R1FieldElement(int[] paramArrayOfInt)
  {
    this.aLJ = paramArrayOfInt;
  }
  
  private static boolean ʻ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int[] arrayOfInt1 = Nat224.qv();
    Nat224.ˍ(paramArrayOfInt2, arrayOfInt1);
    paramArrayOfInt2 = Nat224.qv();
    paramArrayOfInt2[0] = 1;
    int[] arrayOfInt2 = Nat224.qv();
    ˊ(paramArrayOfInt1, arrayOfInt1, paramArrayOfInt2, arrayOfInt2, paramArrayOfInt3);
    paramArrayOfInt1 = Nat224.qv();
    int[] arrayOfInt3 = Nat224.qv();
    int i = 1;
    while (i < 96)
    {
      Nat224.ˍ(arrayOfInt1, paramArrayOfInt1);
      Nat224.ˍ(paramArrayOfInt2, arrayOfInt3);
      ˊ(arrayOfInt1, paramArrayOfInt2, arrayOfInt2, paramArrayOfInt3);
      if (Nat224.ﹳ(arrayOfInt1))
      {
        Mod.ͺ(SecP224R1Field.aIX, arrayOfInt3, paramArrayOfInt3);
        SecP224R1Field.ˎ(paramArrayOfInt3, paramArrayOfInt1, paramArrayOfInt3);
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private static void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4)
  {
    SecP224R1Field.ˎ(paramArrayOfInt2, paramArrayOfInt1, paramArrayOfInt2);
    SecP224R1Field.ʾ(paramArrayOfInt2, paramArrayOfInt2);
    SecP224R1Field.ι(paramArrayOfInt1, paramArrayOfInt4);
    SecP224R1Field.ˋ(paramArrayOfInt3, paramArrayOfInt4, paramArrayOfInt1);
    SecP224R1Field.ˎ(paramArrayOfInt3, paramArrayOfInt4, paramArrayOfInt3);
    SecP224R1Field.ʽ(Nat.ˎ(7, paramArrayOfInt3, 2, 0), paramArrayOfInt3);
  }
  
  private static void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4, int[] paramArrayOfInt5)
  {
    Nat224.ˍ(paramArrayOfInt1, paramArrayOfInt4);
    int[] arrayOfInt1 = Nat224.qv();
    int[] arrayOfInt2 = Nat224.qv();
    int i = 0;
    while (i < 7)
    {
      Nat224.ˍ(paramArrayOfInt2, arrayOfInt1);
      Nat224.ˍ(paramArrayOfInt3, arrayOfInt2);
      int j = 1 << i;
      for (;;)
      {
        j -= 1;
        if (j < 0) {
          break;
        }
        ˊ(paramArrayOfInt2, paramArrayOfInt3, paramArrayOfInt4, paramArrayOfInt5);
      }
      ˊ(paramArrayOfInt1, arrayOfInt1, arrayOfInt2, paramArrayOfInt2, paramArrayOfInt3, paramArrayOfInt4, paramArrayOfInt5);
      i += 1;
    }
  }
  
  private static void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4, int[] paramArrayOfInt5, int[] paramArrayOfInt6, int[] paramArrayOfInt7)
  {
    SecP224R1Field.ˎ(paramArrayOfInt5, paramArrayOfInt3, paramArrayOfInt7);
    SecP224R1Field.ˎ(paramArrayOfInt7, paramArrayOfInt1, paramArrayOfInt7);
    SecP224R1Field.ˎ(paramArrayOfInt4, paramArrayOfInt2, paramArrayOfInt6);
    SecP224R1Field.ˋ(paramArrayOfInt6, paramArrayOfInt7, paramArrayOfInt6);
    SecP224R1Field.ˎ(paramArrayOfInt4, paramArrayOfInt3, paramArrayOfInt7);
    Nat224.ˍ(paramArrayOfInt6, paramArrayOfInt4);
    SecP224R1Field.ˎ(paramArrayOfInt5, paramArrayOfInt2, paramArrayOfInt5);
    SecP224R1Field.ˋ(paramArrayOfInt5, paramArrayOfInt7, paramArrayOfInt5);
    SecP224R1Field.ι(paramArrayOfInt5, paramArrayOfInt6);
    SecP224R1Field.ˎ(paramArrayOfInt6, paramArrayOfInt1, paramArrayOfInt6);
  }
  
  private static boolean ˍ(int[] paramArrayOfInt)
  {
    int[] arrayOfInt1 = Nat224.qv();
    int[] arrayOfInt2 = Nat224.qv();
    Nat224.ˍ(paramArrayOfInt, arrayOfInt1);
    int i = 0;
    while (i < 7)
    {
      Nat224.ˍ(arrayOfInt1, arrayOfInt2);
      SecP224R1Field.ˋ(arrayOfInt1, 1 << i, arrayOfInt1);
      SecP224R1Field.ˎ(arrayOfInt1, arrayOfInt2, arrayOfInt1);
      i += 1;
    }
    SecP224R1Field.ˋ(arrayOfInt1, 95, arrayOfInt1);
    return Nat224.ᐨ(arrayOfInt1);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof SecP224R1FieldElement)) {
      return false;
    }
    paramObject = (SecP224R1FieldElement)paramObject;
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
    SecP224R1Field.ʼ(this.aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pw()
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224R1Field.ʽ(this.aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement px()
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224R1Field.ι(this.aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement py()
  {
    int[] arrayOfInt = Nat224.qv();
    Mod.ͺ(SecP224R1Field.aIX, this.aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement pz()
  {
    int[] arrayOfInt1 = this.aLJ;
    if ((Nat224.ﹳ(arrayOfInt1)) || (Nat224.ᐨ(arrayOfInt1))) {
      return this;
    }
    int[] arrayOfInt2 = Nat224.qv();
    SecP224R1Field.ʽ(arrayOfInt1, arrayOfInt2);
    int[] arrayOfInt3 = Mod.ᐧ(SecP224R1Field.aIX);
    int[] arrayOfInt4 = Nat224.qv();
    if (!ˍ(arrayOfInt1)) {
      return null;
    }
    while (!ʻ(arrayOfInt2, arrayOfInt3, arrayOfInt4)) {
      SecP224R1Field.ʼ(arrayOfInt3, arrayOfInt3);
    }
    SecP224R1Field.ι(arrayOfInt4, arrayOfInt3);
    if (Nat224.ˈ(arrayOfInt1, arrayOfInt3)) {
      return new SecP224R1FieldElement(arrayOfInt4);
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
    SecP224R1Field.ˎ(this.aLJ, ((SecP224R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    Mod.ͺ(SecP224R1Field.aIX, ((SecP224R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    SecP224R1Field.ˎ(arrayOfInt, this.aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224R1Field.ˋ(this.aLJ, ((SecP224R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
  
  public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
  {
    int[] arrayOfInt = Nat224.qv();
    SecP224R1Field.ᐝ(this.aLJ, ((SecP224R1FieldElement)paramECFieldElement).aLJ, arrayOfInt);
    return new SecP224R1FieldElement(arrayOfInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP224R1FieldElement
 * JD-Core Version:    0.7.0.1
 */