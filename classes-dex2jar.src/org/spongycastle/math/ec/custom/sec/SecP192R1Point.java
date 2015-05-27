package org.spongycastle.math.ec.custom.sec;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat192;

public class SecP192R1Point
  extends ECPoint.AbstractFp
{
  public SecP192R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    this(paramECCurve, paramECFieldElement1, paramECFieldElement2, false);
  }
  
  public SecP192R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
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
  
  SecP192R1Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    super(paramECCurve, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
    this.aWJ = paramBoolean;
  }
  
  protected ECPoint pF()
  {
    return new SecP192R1Point(null, pH(), pI());
  }
  
  public ECPoint pT()
  {
    if (pR()) {
      return this;
    }
    return new SecP192R1Point(this.aDw, this.bcB, this.bcC.pw(), this.bcD, this.aWJ);
  }
  
  public ECPoint pU()
  {
    if (pR()) {
      return this;
    }
    ECCurve localECCurve = iv();
    SecP192R1FieldElement localSecP192R1FieldElement1 = (SecP192R1FieldElement)this.bcC;
    if (localSecP192R1FieldElement1.isZero()) {
      return localECCurve.pi();
    }
    SecP192R1FieldElement localSecP192R1FieldElement3 = (SecP192R1FieldElement)this.bcB;
    SecP192R1FieldElement localSecP192R1FieldElement2 = (SecP192R1FieldElement)this.bcD[0];
    int[] arrayOfInt1 = Nat192.qv();
    Object localObject2 = Nat192.qv();
    int[] arrayOfInt2 = Nat192.qv();
    SecP192R1Field.ι(localSecP192R1FieldElement1.aLJ, arrayOfInt2);
    int[] arrayOfInt3 = Nat192.qv();
    SecP192R1Field.ι(arrayOfInt2, arrayOfInt3);
    boolean bool = localSecP192R1FieldElement2.pA();
    Object localObject1 = localSecP192R1FieldElement2.aLJ;
    if (!bool)
    {
      localObject1 = localObject2;
      SecP192R1Field.ι(localSecP192R1FieldElement2.aLJ, (int[])localObject1);
    }
    SecP192R1Field.ᐝ(localSecP192R1FieldElement3.aLJ, (int[])localObject1, arrayOfInt1);
    SecP192R1Field.ˋ(localSecP192R1FieldElement3.aLJ, (int[])localObject1, (int[])localObject2);
    SecP192R1Field.ˎ((int[])localObject2, arrayOfInt1, (int[])localObject2);
    SecP192R1Field.ʽ(Nat192.ʾ((int[])localObject2, (int[])localObject2, (int[])localObject2), (int[])localObject2);
    SecP192R1Field.ˎ(arrayOfInt2, localSecP192R1FieldElement3.aLJ, arrayOfInt2);
    SecP192R1Field.ʽ(Nat.ˎ(6, arrayOfInt2, 2, 0), arrayOfInt2);
    SecP192R1Field.ʽ(Nat.ˊ(6, arrayOfInt3, 3, 0, arrayOfInt1), arrayOfInt1);
    localObject1 = new SecP192R1FieldElement(arrayOfInt3);
    SecP192R1Field.ι((int[])localObject2, ((SecP192R1FieldElement)localObject1).aLJ);
    SecP192R1Field.ᐝ(((SecP192R1FieldElement)localObject1).aLJ, arrayOfInt2, ((SecP192R1FieldElement)localObject1).aLJ);
    SecP192R1Field.ᐝ(((SecP192R1FieldElement)localObject1).aLJ, arrayOfInt2, ((SecP192R1FieldElement)localObject1).aLJ);
    localSecP192R1FieldElement3 = new SecP192R1FieldElement(arrayOfInt2);
    SecP192R1Field.ᐝ(arrayOfInt2, ((SecP192R1FieldElement)localObject1).aLJ, localSecP192R1FieldElement3.aLJ);
    SecP192R1Field.ˎ(localSecP192R1FieldElement3.aLJ, (int[])localObject2, localSecP192R1FieldElement3.aLJ);
    SecP192R1Field.ᐝ(localSecP192R1FieldElement3.aLJ, arrayOfInt1, localSecP192R1FieldElement3.aLJ);
    localObject2 = new SecP192R1FieldElement((int[])localObject2);
    SecP192R1Field.ʾ(localSecP192R1FieldElement1.aLJ, ((SecP192R1FieldElement)localObject2).aLJ);
    if (!bool) {
      SecP192R1Field.ˎ(((SecP192R1FieldElement)localObject2).aLJ, localSecP192R1FieldElement2.aLJ, ((SecP192R1FieldElement)localObject2).aLJ);
    }
    bool = this.aWJ;
    return new SecP192R1Point(localECCurve, (ECFieldElement)localObject1, localSecP192R1FieldElement3, new ECFieldElement[] { localObject2 }, bool);
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
    SecP192R1FieldElement localSecP192R1FieldElement3 = (SecP192R1FieldElement)this.bcB;
    Object localObject4 = (SecP192R1FieldElement)this.bcC;
    Object localObject3 = (SecP192R1FieldElement)paramECPoint.pJ();
    Object localObject2 = (SecP192R1FieldElement)paramECPoint.pK();
    SecP192R1FieldElement localSecP192R1FieldElement1 = (SecP192R1FieldElement)this.bcD[0];
    SecP192R1FieldElement localSecP192R1FieldElement2 = (SecP192R1FieldElement)paramECPoint.ﺌ(0);
    int[] arrayOfInt1 = Nat192.qw();
    int[] arrayOfInt2 = Nat192.qv();
    int[] arrayOfInt3 = Nat192.qv();
    int[] arrayOfInt4 = Nat192.qv();
    boolean bool1 = localSecP192R1FieldElement1.pA();
    if (bool1)
    {
      paramECPoint = ((SecP192R1FieldElement)localObject3).aLJ;
      localObject1 = ((SecP192R1FieldElement)localObject2).aLJ;
    }
    else
    {
      localObject1 = arrayOfInt3;
      SecP192R1Field.ι(localSecP192R1FieldElement1.aLJ, (int[])localObject1);
      paramECPoint = arrayOfInt2;
      SecP192R1Field.ˎ((int[])localObject1, ((SecP192R1FieldElement)localObject3).aLJ, paramECPoint);
      SecP192R1Field.ˎ((int[])localObject1, localSecP192R1FieldElement1.aLJ, (int[])localObject1);
      SecP192R1Field.ˎ((int[])localObject1, ((SecP192R1FieldElement)localObject2).aLJ, (int[])localObject1);
    }
    boolean bool2 = localSecP192R1FieldElement2.pA();
    if (bool2)
    {
      localObject2 = localSecP192R1FieldElement3.aLJ;
      localObject3 = ((SecP192R1FieldElement)localObject4).aLJ;
    }
    else
    {
      localObject3 = arrayOfInt4;
      SecP192R1Field.ι(localSecP192R1FieldElement2.aLJ, (int[])localObject3);
      localObject2 = arrayOfInt1;
      SecP192R1Field.ˎ((int[])localObject3, localSecP192R1FieldElement3.aLJ, (int[])localObject2);
      SecP192R1Field.ˎ((int[])localObject3, localSecP192R1FieldElement2.aLJ, (int[])localObject3);
      SecP192R1Field.ˎ((int[])localObject3, ((SecP192R1FieldElement)localObject4).aLJ, (int[])localObject3);
    }
    localObject4 = Nat192.qv();
    SecP192R1Field.ᐝ((int[])localObject2, paramECPoint, (int[])localObject4);
    SecP192R1Field.ᐝ((int[])localObject3, (int[])localObject1, arrayOfInt2);
    if (Nat192.ﹳ((int[])localObject4))
    {
      if (Nat192.ﹳ(arrayOfInt2)) {
        return pU();
      }
      return localECCurve.pi();
    }
    SecP192R1Field.ι((int[])localObject4, arrayOfInt3);
    paramECPoint = Nat192.qv();
    SecP192R1Field.ˎ(arrayOfInt3, (int[])localObject4, paramECPoint);
    SecP192R1Field.ˎ(arrayOfInt3, (int[])localObject2, arrayOfInt3);
    SecP192R1Field.ʽ(paramECPoint, paramECPoint);
    Nat192.ʿ((int[])localObject3, paramECPoint, arrayOfInt1);
    SecP192R1Field.ʽ(Nat192.ʾ(arrayOfInt3, arrayOfInt3, paramECPoint), paramECPoint);
    Object localObject1 = new SecP192R1FieldElement(arrayOfInt4);
    SecP192R1Field.ι(arrayOfInt2, ((SecP192R1FieldElement)localObject1).aLJ);
    SecP192R1Field.ᐝ(((SecP192R1FieldElement)localObject1).aLJ, paramECPoint, ((SecP192R1FieldElement)localObject1).aLJ);
    paramECPoint = new SecP192R1FieldElement(paramECPoint);
    SecP192R1Field.ᐝ(arrayOfInt3, ((SecP192R1FieldElement)localObject1).aLJ, paramECPoint.aLJ);
    SecP192R1Field.ˏ(paramECPoint.aLJ, arrayOfInt2, arrayOfInt1);
    SecP192R1Field.ͺ(arrayOfInt1, paramECPoint.aLJ);
    localObject2 = new SecP192R1FieldElement((int[])localObject4);
    if (!bool1) {
      SecP192R1Field.ˎ(((SecP192R1FieldElement)localObject2).aLJ, localSecP192R1FieldElement1.aLJ, ((SecP192R1FieldElement)localObject2).aLJ);
    }
    if (!bool2) {
      SecP192R1Field.ˎ(((SecP192R1FieldElement)localObject2).aLJ, localSecP192R1FieldElement2.aLJ, ((SecP192R1FieldElement)localObject2).aLJ);
    }
    bool1 = this.aWJ;
    return new SecP192R1Point(localECCurve, (ECFieldElement)localObject1, paramECPoint, new ECFieldElement[] { localObject2 }, bool1);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP192R1Point
 * JD-Core Version:    0.7.0.1
 */