package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat384;

public class SecP384R1Point
  extends ECPoint.AbstractFp
{
  public SecP384R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    this(paramECCurve, paramECFieldElement1, paramECFieldElement2, false);
  }
  
  public SecP384R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    super(paramECCurve, paramECFieldElement1, paramECFieldElement2);
    int i;
    if (paramECFieldElement1 == null) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramECFieldElement2 == null) {
      j = 1;
    } else {
      j = 0;
    }
    if (i != j) {
      throw new IllegalArgumentException("Exactly one of the field elements is null");
    }
    this.aWJ = paramBoolean;
  }
  
  SecP384R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    super(paramECCurve, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
    this.aWJ = paramBoolean;
  }
  
  protected ECPoint pF()
  {
    return new SecP384R1Point(null, pH(), pI());
  }
  
  public ECPoint pT()
  {
    if (pR()) {
      return this;
    }
    return new SecP384R1Point(this.aDw, this.bcB, this.bcC.pw(), this.bcD, this.aWJ);
  }
  
  public ECPoint pU()
  {
    if (pR()) {
      return this;
    }
    ECCurve localECCurve = iv();
    SecP384R1FieldElement localSecP384R1FieldElement1 = (SecP384R1FieldElement)this.bcC;
    if (localSecP384R1FieldElement1.isZero()) {
      return localECCurve.pi();
    }
    SecP384R1FieldElement localSecP384R1FieldElement3 = (SecP384R1FieldElement)this.bcB;
    SecP384R1FieldElement localSecP384R1FieldElement2 = (SecP384R1FieldElement)this.bcD[0];
    int[] arrayOfInt1 = Nat.ċ(12);
    Object localObject2 = Nat.ċ(12);
    int[] arrayOfInt2 = Nat.ċ(12);
    SecP384R1Field.ι(localSecP384R1FieldElement1.aLJ, arrayOfInt2);
    int[] arrayOfInt3 = Nat.ċ(12);
    SecP384R1Field.ι(arrayOfInt2, arrayOfInt3);
    boolean bool = localSecP384R1FieldElement2.pA();
    Object localObject1 = localSecP384R1FieldElement2.aLJ;
    if (!bool)
    {
      localObject1 = localObject2;
      SecP384R1Field.ι(localSecP384R1FieldElement2.aLJ, (int[])localObject1);
    }
    SecP384R1Field.ᐝ(localSecP384R1FieldElement3.aLJ, (int[])localObject1, arrayOfInt1);
    SecP384R1Field.ˋ(localSecP384R1FieldElement3.aLJ, (int[])localObject1, (int[])localObject2);
    SecP384R1Field.ˎ((int[])localObject2, arrayOfInt1, (int[])localObject2);
    SecP384R1Field.ʽ(Nat.ˋ(12, (int[])localObject2, (int[])localObject2, (int[])localObject2), (int[])localObject2);
    SecP384R1Field.ˎ(arrayOfInt2, localSecP384R1FieldElement3.aLJ, arrayOfInt2);
    SecP384R1Field.ʽ(Nat.ˎ(12, arrayOfInt2, 2, 0), arrayOfInt2);
    SecP384R1Field.ʽ(Nat.ˊ(12, arrayOfInt3, 3, 0, arrayOfInt1), arrayOfInt1);
    localObject1 = new SecP384R1FieldElement(arrayOfInt3);
    SecP384R1Field.ι((int[])localObject2, ((SecP384R1FieldElement)localObject1).aLJ);
    SecP384R1Field.ᐝ(((SecP384R1FieldElement)localObject1).aLJ, arrayOfInt2, ((SecP384R1FieldElement)localObject1).aLJ);
    SecP384R1Field.ᐝ(((SecP384R1FieldElement)localObject1).aLJ, arrayOfInt2, ((SecP384R1FieldElement)localObject1).aLJ);
    localSecP384R1FieldElement3 = new SecP384R1FieldElement(arrayOfInt2);
    SecP384R1Field.ᐝ(arrayOfInt2, ((SecP384R1FieldElement)localObject1).aLJ, localSecP384R1FieldElement3.aLJ);
    SecP384R1Field.ˎ(localSecP384R1FieldElement3.aLJ, (int[])localObject2, localSecP384R1FieldElement3.aLJ);
    SecP384R1Field.ᐝ(localSecP384R1FieldElement3.aLJ, arrayOfInt1, localSecP384R1FieldElement3.aLJ);
    localObject2 = new SecP384R1FieldElement((int[])localObject2);
    SecP384R1Field.ʾ(localSecP384R1FieldElement1.aLJ, ((SecP384R1FieldElement)localObject2).aLJ);
    if (!bool) {
      SecP384R1Field.ˎ(((SecP384R1FieldElement)localObject2).aLJ, localSecP384R1FieldElement2.aLJ, ((SecP384R1FieldElement)localObject2).aLJ);
    }
    bool = this.aWJ;
    return new SecP384R1Point(localECCurve, (ECFieldElement)localObject1, localSecP384R1FieldElement3, new ECFieldElement[] { localObject2 }, bool);
  }
  
  public ECPoint pV()
  {
    if ((pR()) || (this.bcC.isZero())) {
      return this;
    }
    return pU().ʼ(this);
  }
  
  public ECPoint ʼ(ECPoint paramECPoint)
  {
    if (pR()) {
      return paramECPoint;
    }
    if (paramECPoint.pR()) {
      return this;
    }
    if (this == paramECPoint) {
      return pU();
    }
    ECCurve localECCurve = iv();
    SecP384R1FieldElement localSecP384R1FieldElement3 = (SecP384R1FieldElement)this.bcB;
    Object localObject4 = (SecP384R1FieldElement)this.bcC;
    Object localObject3 = (SecP384R1FieldElement)paramECPoint.pJ();
    Object localObject2 = (SecP384R1FieldElement)paramECPoint.pK();
    SecP384R1FieldElement localSecP384R1FieldElement1 = (SecP384R1FieldElement)this.bcD[0];
    SecP384R1FieldElement localSecP384R1FieldElement2 = (SecP384R1FieldElement)paramECPoint.ﺌ(0);
    int[] arrayOfInt1 = Nat.ċ(24);
    int[] arrayOfInt2 = Nat.ċ(24);
    int[] arrayOfInt3 = Nat.ċ(12);
    int[] arrayOfInt4 = Nat.ċ(12);
    boolean bool1 = localSecP384R1FieldElement1.pA();
    if (bool1)
    {
      localObject1 = ((SecP384R1FieldElement)localObject3).aLJ;
      paramECPoint = ((SecP384R1FieldElement)localObject2).aLJ;
    }
    else
    {
      paramECPoint = arrayOfInt3;
      SecP384R1Field.ι(localSecP384R1FieldElement1.aLJ, paramECPoint);
      localObject1 = arrayOfInt2;
      SecP384R1Field.ˎ(paramECPoint, ((SecP384R1FieldElement)localObject3).aLJ, (int[])localObject1);
      SecP384R1Field.ˎ(paramECPoint, localSecP384R1FieldElement1.aLJ, paramECPoint);
      SecP384R1Field.ˎ(paramECPoint, ((SecP384R1FieldElement)localObject2).aLJ, paramECPoint);
    }
    boolean bool2 = localSecP384R1FieldElement2.pA();
    if (bool2)
    {
      localObject2 = localSecP384R1FieldElement3.aLJ;
      localObject3 = ((SecP384R1FieldElement)localObject4).aLJ;
    }
    else
    {
      localObject3 = arrayOfInt4;
      SecP384R1Field.ι(localSecP384R1FieldElement2.aLJ, (int[])localObject3);
      localObject2 = arrayOfInt1;
      SecP384R1Field.ˎ((int[])localObject3, localSecP384R1FieldElement3.aLJ, (int[])localObject2);
      SecP384R1Field.ˎ((int[])localObject3, localSecP384R1FieldElement2.aLJ, (int[])localObject3);
      SecP384R1Field.ˎ((int[])localObject3, ((SecP384R1FieldElement)localObject4).aLJ, (int[])localObject3);
    }
    localObject4 = Nat.ċ(12);
    SecP384R1Field.ᐝ((int[])localObject2, (int[])localObject1, (int[])localObject4);
    Object localObject1 = Nat.ċ(12);
    SecP384R1Field.ᐝ((int[])localObject3, paramECPoint, (int[])localObject1);
    if (Nat.ˈ(12, (int[])localObject4))
    {
      if (Nat.ˈ(12, (int[])localObject1)) {
        return pU();
      }
      return localECCurve.pi();
    }
    SecP384R1Field.ι((int[])localObject4, arrayOfInt3);
    paramECPoint = Nat.ċ(12);
    SecP384R1Field.ˎ(arrayOfInt3, (int[])localObject4, paramECPoint);
    SecP384R1Field.ˎ(arrayOfInt3, (int[])localObject2, arrayOfInt3);
    SecP384R1Field.ʽ(paramECPoint, paramECPoint);
    Nat384.ʿ((int[])localObject3, paramECPoint, arrayOfInt1);
    SecP384R1Field.ʽ(Nat.ˋ(12, arrayOfInt3, arrayOfInt3, paramECPoint), paramECPoint);
    localObject2 = new SecP384R1FieldElement(arrayOfInt4);
    SecP384R1Field.ι((int[])localObject1, ((SecP384R1FieldElement)localObject2).aLJ);
    SecP384R1Field.ᐝ(((SecP384R1FieldElement)localObject2).aLJ, paramECPoint, ((SecP384R1FieldElement)localObject2).aLJ);
    paramECPoint = new SecP384R1FieldElement(paramECPoint);
    SecP384R1Field.ᐝ(arrayOfInt3, ((SecP384R1FieldElement)localObject2).aLJ, paramECPoint.aLJ);
    Nat384.ʿ(paramECPoint.aLJ, (int[])localObject1, arrayOfInt2);
    SecP384R1Field.ʼ(arrayOfInt1, arrayOfInt2, arrayOfInt1);
    SecP384R1Field.ͺ(arrayOfInt1, paramECPoint.aLJ);
    localObject1 = new SecP384R1FieldElement((int[])localObject4);
    if (!bool1) {
      SecP384R1Field.ˎ(((SecP384R1FieldElement)localObject1).aLJ, localSecP384R1FieldElement1.aLJ, ((SecP384R1FieldElement)localObject1).aLJ);
    }
    if (!bool2) {
      SecP384R1Field.ˎ(((SecP384R1FieldElement)localObject1).aLJ, localSecP384R1FieldElement2.aLJ, ((SecP384R1FieldElement)localObject1).aLJ);
    }
    bool1 = this.aWJ;
    return new SecP384R1Point(localECCurve, (ECFieldElement)localObject2, paramECPoint, new ECFieldElement[] { localObject1 }, bool1);
  }
  
  public ECPoint ʽ(ECPoint paramECPoint)
  {
    if (this == paramECPoint) {
      return pV();
    }
    if (pR()) {
      return paramECPoint;
    }
    if (paramECPoint.pR()) {
      return pU();
    }
    if (this.bcC.isZero()) {
      return paramECPoint;
    }
    return pU().ʼ(paramECPoint);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP384R1Point
 * JD-Core Version:    0.7.0.1
 */