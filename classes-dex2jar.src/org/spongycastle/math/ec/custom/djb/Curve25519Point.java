package org.spongycastle.math.ec.custom.djb;

import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.ECPoint.AbstractFp;
import org.spongycastle.math.raw.Nat256;

public class Curve25519Point
  extends ECPoint.AbstractFp
{
  public Curve25519Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    this(paramECCurve, paramECFieldElement1, paramECFieldElement2, false);
  }
  
  public Curve25519Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
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
  
  Curve25519Point(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    super(paramECCurve, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
    this.aWJ = paramBoolean;
  }
  
  protected ECPoint pF()
  {
    return new Curve25519Point(null, pH(), pI());
  }
  
  public ECPoint pT()
  {
    if (pR()) {
      return this;
    }
    return new Curve25519Point(iv(), this.bcB, this.bcC.pw(), this.bcD, this.aWJ);
  }
  
  public ECPoint pU()
  {
    if (pR()) {
      return this;
    }
    ECCurve localECCurve = iv();
    if (this.bcC.isZero()) {
      return localECCurve.pi();
    }
    return і(true);
  }
  
  public ECPoint pV()
  {
    if (pR()) {
      return this;
    }
    if (this.bcC.isZero()) {
      return this;
    }
    return і(false).ʼ(this);
  }
  
  protected Curve25519FieldElement qj()
  {
    Object localObject2 = (Curve25519FieldElement)this.bcD[1];
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = this.bcD;
      localObject1 = ˊ((Curve25519FieldElement)this.bcD[0], null);
      localObject2[1] = localObject1;
    }
    return localObject1;
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
    Object localObject5 = (Curve25519FieldElement)this.bcB;
    Object localObject4 = (Curve25519FieldElement)this.bcC;
    Curve25519FieldElement localCurve25519FieldElement1 = (Curve25519FieldElement)this.bcD[0];
    Object localObject3 = (Curve25519FieldElement)paramECPoint.pJ();
    Object localObject2 = (Curve25519FieldElement)paramECPoint.pK();
    Curve25519FieldElement localCurve25519FieldElement2 = (Curve25519FieldElement)paramECPoint.ﺌ(0);
    int[] arrayOfInt1 = Nat256.qw();
    int[] arrayOfInt2 = Nat256.qv();
    int[] arrayOfInt3 = Nat256.qv();
    int[] arrayOfInt4 = Nat256.qv();
    boolean bool1 = localCurve25519FieldElement1.pA();
    if (bool1)
    {
      paramECPoint = ((Curve25519FieldElement)localObject3).aLJ;
      localObject1 = ((Curve25519FieldElement)localObject2).aLJ;
    }
    else
    {
      localObject1 = arrayOfInt3;
      Curve25519Field.ι(localCurve25519FieldElement1.aLJ, (int[])localObject1);
      paramECPoint = arrayOfInt2;
      Curve25519Field.ˎ((int[])localObject1, ((Curve25519FieldElement)localObject3).aLJ, paramECPoint);
      Curve25519Field.ˎ((int[])localObject1, localCurve25519FieldElement1.aLJ, (int[])localObject1);
      Curve25519Field.ˎ((int[])localObject1, ((Curve25519FieldElement)localObject2).aLJ, (int[])localObject1);
    }
    boolean bool2 = localCurve25519FieldElement2.pA();
    if (bool2)
    {
      localObject2 = ((Curve25519FieldElement)localObject5).aLJ;
      localObject3 = ((Curve25519FieldElement)localObject4).aLJ;
    }
    else
    {
      localObject3 = arrayOfInt4;
      Curve25519Field.ι(localCurve25519FieldElement2.aLJ, (int[])localObject3);
      localObject2 = arrayOfInt1;
      Curve25519Field.ˎ((int[])localObject3, ((Curve25519FieldElement)localObject5).aLJ, (int[])localObject2);
      Curve25519Field.ˎ((int[])localObject3, localCurve25519FieldElement2.aLJ, (int[])localObject3);
      Curve25519Field.ˎ((int[])localObject3, ((Curve25519FieldElement)localObject4).aLJ, (int[])localObject3);
    }
    localObject4 = Nat256.qv();
    Curve25519Field.ᐝ((int[])localObject2, paramECPoint, (int[])localObject4);
    Curve25519Field.ᐝ((int[])localObject3, (int[])localObject1, arrayOfInt2);
    if (Nat256.ﹳ((int[])localObject4))
    {
      if (Nat256.ﹳ(arrayOfInt2)) {
        return pU();
      }
      return localECCurve.pi();
    }
    paramECPoint = Nat256.qv();
    Curve25519Field.ι((int[])localObject4, paramECPoint);
    localObject5 = Nat256.qv();
    Curve25519Field.ˎ(paramECPoint, (int[])localObject4, (int[])localObject5);
    Curve25519Field.ˎ(paramECPoint, (int[])localObject2, arrayOfInt3);
    Curve25519Field.ʽ((int[])localObject5, (int[])localObject5);
    Nat256.ʿ((int[])localObject3, (int[])localObject5, arrayOfInt1);
    Curve25519Field.ʼ(Nat256.ʾ(arrayOfInt3, arrayOfInt3, (int[])localObject5), (int[])localObject5);
    Object localObject1 = new Curve25519FieldElement(arrayOfInt4);
    Curve25519Field.ι(arrayOfInt2, ((Curve25519FieldElement)localObject1).aLJ);
    Curve25519Field.ᐝ(((Curve25519FieldElement)localObject1).aLJ, (int[])localObject5, ((Curve25519FieldElement)localObject1).aLJ);
    localObject2 = new Curve25519FieldElement((int[])localObject5);
    Curve25519Field.ᐝ(arrayOfInt3, ((Curve25519FieldElement)localObject1).aLJ, ((Curve25519FieldElement)localObject2).aLJ);
    Curve25519Field.ˏ(((Curve25519FieldElement)localObject2).aLJ, arrayOfInt2, arrayOfInt1);
    Curve25519Field.ͺ(arrayOfInt1, ((Curve25519FieldElement)localObject2).aLJ);
    localObject3 = new Curve25519FieldElement((int[])localObject4);
    if (!bool1) {
      Curve25519Field.ˎ(((Curve25519FieldElement)localObject3).aLJ, localCurve25519FieldElement1.aLJ, ((Curve25519FieldElement)localObject3).aLJ);
    }
    if (!bool2) {
      Curve25519Field.ˎ(((Curve25519FieldElement)localObject3).aLJ, localCurve25519FieldElement2.aLJ, ((Curve25519FieldElement)localObject3).aLJ);
    }
    if ((!bool1) || (!bool2)) {
      paramECPoint = null;
    }
    paramECPoint = ˊ((Curve25519FieldElement)localObject3, paramECPoint);
    bool1 = this.aWJ;
    return new Curve25519Point(localECCurve, (ECFieldElement)localObject1, (ECFieldElement)localObject2, new ECFieldElement[] { localObject3, paramECPoint }, bool1);
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
    return і(false).ʼ(paramECPoint);
  }
  
  protected Curve25519FieldElement ˊ(Curve25519FieldElement paramCurve25519FieldElement, int[] paramArrayOfInt)
  {
    Curve25519FieldElement localCurve25519FieldElement1 = (Curve25519FieldElement)iv().pk();
    if (paramCurve25519FieldElement.pA()) {
      return localCurve25519FieldElement1;
    }
    Curve25519FieldElement localCurve25519FieldElement2 = new Curve25519FieldElement();
    int[] arrayOfInt = paramArrayOfInt;
    if (paramArrayOfInt == null)
    {
      arrayOfInt = localCurve25519FieldElement2.aLJ;
      Curve25519Field.ι(paramCurve25519FieldElement.aLJ, arrayOfInt);
    }
    Curve25519Field.ι(arrayOfInt, localCurve25519FieldElement2.aLJ);
    Curve25519Field.ˎ(localCurve25519FieldElement2.aLJ, localCurve25519FieldElement1.aLJ, localCurve25519FieldElement2.aLJ);
    return localCurve25519FieldElement2;
  }
  
  protected Curve25519Point і(boolean paramBoolean)
  {
    Curve25519FieldElement localCurve25519FieldElement2 = (Curve25519FieldElement)this.bcB;
    Object localObject3 = (Curve25519FieldElement)this.bcC;
    Curve25519FieldElement localCurve25519FieldElement1 = (Curve25519FieldElement)this.bcD[0];
    Object localObject1 = qj();
    Object localObject4 = Nat256.qv();
    Curve25519Field.ι(localCurve25519FieldElement2.aLJ, (int[])localObject4);
    Curve25519Field.ʼ(Nat256.ʾ((int[])localObject4, (int[])localObject4, (int[])localObject4) + Nat256.ˑ(((Curve25519FieldElement)localObject1).aLJ, (int[])localObject4), (int[])localObject4);
    int[] arrayOfInt1 = Nat256.qv();
    Curve25519Field.ʾ(((Curve25519FieldElement)localObject3).aLJ, arrayOfInt1);
    Object localObject2 = Nat256.qv();
    Curve25519Field.ˎ(arrayOfInt1, ((Curve25519FieldElement)localObject3).aLJ, (int[])localObject2);
    int[] arrayOfInt2 = Nat256.qv();
    Curve25519Field.ˎ((int[])localObject2, localCurve25519FieldElement2.aLJ, arrayOfInt2);
    Curve25519Field.ʾ(arrayOfInt2, arrayOfInt2);
    localObject3 = Nat256.qv();
    Curve25519Field.ι((int[])localObject2, (int[])localObject3);
    Curve25519Field.ʾ((int[])localObject3, (int[])localObject3);
    localObject2 = new Curve25519FieldElement((int[])localObject2);
    Curve25519Field.ι((int[])localObject4, ((Curve25519FieldElement)localObject2).aLJ);
    Curve25519Field.ᐝ(((Curve25519FieldElement)localObject2).aLJ, arrayOfInt2, ((Curve25519FieldElement)localObject2).aLJ);
    Curve25519Field.ᐝ(((Curve25519FieldElement)localObject2).aLJ, arrayOfInt2, ((Curve25519FieldElement)localObject2).aLJ);
    localCurve25519FieldElement2 = new Curve25519FieldElement(arrayOfInt2);
    Curve25519Field.ᐝ(arrayOfInt2, ((Curve25519FieldElement)localObject2).aLJ, localCurve25519FieldElement2.aLJ);
    Curve25519Field.ˎ(localCurve25519FieldElement2.aLJ, (int[])localObject4, localCurve25519FieldElement2.aLJ);
    Curve25519Field.ᐝ(localCurve25519FieldElement2.aLJ, (int[])localObject3, localCurve25519FieldElement2.aLJ);
    localObject4 = new Curve25519FieldElement(arrayOfInt1);
    if (!Nat256.ᐨ(localCurve25519FieldElement1.aLJ)) {
      Curve25519Field.ˎ(((Curve25519FieldElement)localObject4).aLJ, localCurve25519FieldElement1.aLJ, ((Curve25519FieldElement)localObject4).aLJ);
    }
    localCurve25519FieldElement1 = null;
    if (paramBoolean)
    {
      localCurve25519FieldElement1 = new Curve25519FieldElement((int[])localObject3);
      Curve25519Field.ˎ(localCurve25519FieldElement1.aLJ, ((Curve25519FieldElement)localObject1).aLJ, localCurve25519FieldElement1.aLJ);
      Curve25519Field.ʾ(localCurve25519FieldElement1.aLJ, localCurve25519FieldElement1.aLJ);
    }
    localObject1 = iv();
    paramBoolean = this.aWJ;
    return new Curve25519Point((ECCurve)localObject1, (ECFieldElement)localObject2, localCurve25519FieldElement2, new ECFieldElement[] { localObject4, localCurve25519FieldElement1 }, paramBoolean);
  }
  
  public ECFieldElement ﺌ(int paramInt)
  {
    if (paramInt == 1) {
      return qj();
    }
    return super.ﺌ(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.djb.Curve25519Point
 * JD-Core Version:    0.7.0.1
 */