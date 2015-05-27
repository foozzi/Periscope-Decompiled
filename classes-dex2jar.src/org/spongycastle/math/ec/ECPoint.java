package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Hashtable;

public abstract class ECPoint
{
  protected static ECFieldElement[] bcA = new ECFieldElement[0];
  public ECCurve aDw;
  public boolean aWJ;
  public ECFieldElement bcB;
  public ECFieldElement bcC;
  public ECFieldElement[] bcD;
  protected Hashtable bcE = null;
  
  protected ECPoint(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    this(paramECCurve, paramECFieldElement1, paramECFieldElement2, ʽ(paramECCurve));
  }
  
  protected ECPoint(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement)
  {
    this.aDw = paramECCurve;
    this.bcB = paramECFieldElement1;
    this.bcC = paramECFieldElement2;
    this.bcD = paramArrayOfECFieldElement;
  }
  
  protected static ECFieldElement[] ʽ(ECCurve paramECCurve)
  {
    int i;
    if (paramECCurve == null) {
      i = 0;
    } else {
      i = paramECCurve.pn();
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
    case 5: 
      return bcA;
    }
    ECFieldElement localECFieldElement = paramECCurve.ι(ECConstants.ONE);
    switch (i)
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 6: 
      return new ECFieldElement[] { localECFieldElement };
    case 3: 
      return new ECFieldElement[] { localECFieldElement, localECFieldElement, localECFieldElement };
    case 4: 
      return new ECFieldElement[] { localECFieldElement, paramECCurve.pk() };
    }
    throw new IllegalArgumentException("unknown coordinate system");
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof ECPoint)) {
      return false;
    }
    return ʻ((ECPoint)paramObject);
  }
  
  public byte[] getEncoded()
  {
    return Ι(this.aWJ);
  }
  
  public int hashCode()
  {
    Object localObject = iv();
    int i;
    if (localObject == null) {
      i = 0;
    } else {
      i = ((ECCurve)localObject).hashCode() ^ 0xFFFFFFFF;
    }
    int j = i;
    if (!pR())
    {
      localObject = pQ();
      j = i ^ ((ECPoint)localObject).pJ().hashCode() * 17 ^ ((ECPoint)localObject).pK().hashCode() * 257;
    }
    return j;
  }
  
  public boolean isValid()
  {
    if (pR()) {
      return true;
    }
    if (iv() != null)
    {
      if (!pD()) {
        return false;
      }
      if (!pC()) {
        return false;
      }
    }
    return true;
  }
  
  public ECCurve iv()
  {
    return this.aDw;
  }
  
  protected boolean pC()
  {
    BigInteger localBigInteger = this.aDw.pm();
    return (localBigInteger == null) || (localBigInteger.equals(ECConstants.ONE)) || (!ECAlgorithms.ˏ(this, localBigInteger).pR());
  }
  
  protected abstract boolean pD();
  
  public final ECPoint pE()
  {
    return pQ().pF();
  }
  
  public abstract ECPoint pF();
  
  protected int pG()
  {
    if (this.aDw == null) {
      return 0;
    }
    return this.aDw.pn();
  }
  
  public ECFieldElement pH()
  {
    pO();
    return pJ();
  }
  
  public ECFieldElement pI()
  {
    pO();
    return pK();
  }
  
  public ECFieldElement pJ()
  {
    return this.bcB;
  }
  
  public ECFieldElement pK()
  {
    return this.bcC;
  }
  
  protected final ECFieldElement pL()
  {
    return this.bcB;
  }
  
  protected final ECFieldElement pM()
  {
    return this.bcC;
  }
  
  protected final ECFieldElement[] pN()
  {
    return this.bcD;
  }
  
  protected void pO()
  {
    if (!pP()) {
      throw new IllegalStateException("point not in normal form");
    }
  }
  
  public boolean pP()
  {
    int i = pG();
    return (i == 0) || (i == 5) || (pR()) || (this.bcD[0].pA());
  }
  
  public ECPoint pQ()
  {
    if (pR()) {
      return this;
    }
    switch (pG())
    {
    default: 
      break;
    case 0: 
    case 5: 
      return this;
    }
    ECFieldElement localECFieldElement = ﺌ(0);
    if (localECFieldElement.pA()) {
      return this;
    }
    return ͺ(localECFieldElement.py());
  }
  
  public boolean pR()
  {
    return (this.bcB == null) || (this.bcC == null) || ((this.bcD.length > 0) && (this.bcD[0].isZero()));
  }
  
  protected abstract boolean pS();
  
  public abstract ECPoint pT();
  
  public abstract ECPoint pU();
  
  public ECPoint pV()
  {
    return ʽ(this);
  }
  
  public String toString()
  {
    if (pR()) {
      return "INF";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append('(');
    localStringBuffer.append(pL());
    localStringBuffer.append(',');
    localStringBuffer.append(pM());
    int i = 0;
    while (i < this.bcD.length)
    {
      localStringBuffer.append(',');
      localStringBuffer.append(this.bcD[i]);
      i += 1;
    }
    localStringBuffer.append(')');
    return localStringBuffer.toString();
  }
  
  public boolean ʻ(ECPoint paramECPoint)
  {
    if (paramECPoint == null) {
      return false;
    }
    ECCurve localECCurve1 = iv();
    ECCurve localECCurve2 = paramECPoint.iv();
    int i;
    if (localECCurve1 == null) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (localECCurve2 == null) {
      j = 1;
    } else {
      j = 0;
    }
    boolean bool1 = pR();
    boolean bool2 = paramECPoint.pR();
    if ((bool1) || (bool2)) {
      return (bool1) && (bool2) && ((i != 0) || (j != 0) || (localECCurve1.ʼ(localECCurve2)));
    }
    Object localObject = this;
    ECPoint localECPoint = paramECPoint;
    if ((i != 0) && (j != 0))
    {
      paramECPoint = (ECPoint)localObject;
    }
    else if (i != 0)
    {
      localECPoint = localECPoint.pQ();
      paramECPoint = (ECPoint)localObject;
    }
    else if (j != 0)
    {
      paramECPoint = ((ECPoint)localObject).pQ();
    }
    else
    {
      if (!localECCurve1.ʼ(localECCurve2)) {
        return false;
      }
      localObject = new ECPoint[2];
      localObject[0] = this;
      localObject[1] = localECCurve1.ˏ(localECPoint);
      localECCurve1.ˊ((ECPoint[])localObject);
      paramECPoint = localObject[0];
      localECPoint = localObject[1];
    }
    return (paramECPoint.pJ().equals(localECPoint.pJ())) && (paramECPoint.pK().equals(localECPoint.pK()));
  }
  
  public abstract ECPoint ʼ(ECPoint paramECPoint);
  
  public ECPoint ʽ(ECPoint paramECPoint)
  {
    return pU().ʼ(paramECPoint);
  }
  
  public ECPoint ʾ(ECFieldElement paramECFieldElement)
  {
    if (pR()) {
      return this;
    }
    return iv().ˊ(pL(), pM().ʻ(paramECFieldElement), pN(), this.aWJ);
  }
  
  public ECPoint ˌ(BigInteger paramBigInteger)
  {
    return iv().pp().ˋ(this, paramBigInteger);
  }
  
  protected ECPoint ˎ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    return iv().ˊ(pL().ʻ(paramECFieldElement1), pM().ʻ(paramECFieldElement2), this.aWJ);
  }
  
  ECPoint ͺ(ECFieldElement paramECFieldElement)
  {
    switch (pG())
    {
    default: 
      break;
    case 1: 
    case 6: 
      return ˎ(paramECFieldElement, paramECFieldElement);
    case 2: 
    case 3: 
    case 4: 
      ECFieldElement localECFieldElement = paramECFieldElement.px();
      return ˎ(localECFieldElement, localECFieldElement.ʻ(paramECFieldElement));
    }
    throw new IllegalStateException("not a projective coordinate system");
  }
  
  public byte[] Ι(boolean paramBoolean)
  {
    if (pR()) {
      return new byte[1];
    }
    Object localObject = pQ();
    byte[] arrayOfByte1 = ((ECPoint)localObject).pJ().getEncoded();
    if (paramBoolean)
    {
      arrayOfByte2 = new byte[arrayOfByte1.length + 1];
      int i;
      if (((ECPoint)localObject).pS()) {
        i = 3;
      } else {
        i = 2;
      }
      arrayOfByte2[0] = ((byte)i);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 1, arrayOfByte1.length);
      return arrayOfByte2;
    }
    localObject = ((ECPoint)localObject).pK().getEncoded();
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + localObject.length + 1];
    arrayOfByte2[0] = 4;
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 1, arrayOfByte1.length);
    System.arraycopy(localObject, 0, arrayOfByte2, arrayOfByte1.length + 1, localObject.length);
    return arrayOfByte2;
  }
  
  public ECPoint ι(ECFieldElement paramECFieldElement)
  {
    if (pR()) {
      return this;
    }
    return iv().ˊ(pL().ʻ(paramECFieldElement), pM(), pN(), this.aWJ);
  }
  
  public ECFieldElement ﺌ(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.bcD.length)) {
      return null;
    }
    return this.bcD[paramInt];
  }
  
  public ECPoint ﺬ(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("'e' cannot be negative");
    }
    for (ECPoint localECPoint = this;; localECPoint = localECPoint.pU())
    {
      paramInt -= 1;
      if (paramInt < 0) {
        break;
      }
    }
    return localECPoint;
  }
  
  public static abstract class AbstractF2m
    extends ECPoint
  {
    protected AbstractF2m(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      super(paramECFieldElement1, paramECFieldElement2);
    }
    
    protected AbstractF2m(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement)
    {
      super(paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
    }
    
    protected boolean pD()
    {
      Object localObject2 = iv();
      ECFieldElement localECFieldElement3 = this.bcB;
      ECFieldElement localECFieldElement1 = ((ECCurve)localObject2).pk();
      Object localObject1 = ((ECCurve)localObject2).pl();
      int i = ((ECCurve)localObject2).pn();
      Object localObject3;
      Object localObject4;
      if (i == 6)
      {
        localObject3 = this.bcD[0];
        boolean bool = ((ECFieldElement)localObject3).pA();
        if (localECFieldElement3.isZero())
        {
          localObject4 = this.bcC.px();
          localObject2 = localObject1;
          if (!bool) {
            localObject2 = ((ECFieldElement)localObject1).ʻ(((ECFieldElement)localObject3).px());
          }
          return localObject4.equals(localObject2);
        }
        localObject2 = this.bcC;
        localObject4 = localECFieldElement3.px();
        if (bool)
        {
          localObject2 = ((ECFieldElement)localObject2).px().ˏ((ECFieldElement)localObject2).ˏ(localECFieldElement1);
          localObject3 = ((ECFieldElement)localObject4).px().ˏ((ECFieldElement)localObject1);
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
        else
        {
          localECFieldElement3 = ((ECFieldElement)localObject3).px();
          localECFieldElement2 = localECFieldElement3.px();
          localObject3 = ((ECFieldElement)localObject2).ˏ((ECFieldElement)localObject3).ˋ((ECFieldElement)localObject2, localECFieldElement1, localECFieldElement3);
          localObject2 = ((ECFieldElement)localObject4).ˊ((ECFieldElement)localObject1, localECFieldElement2);
          localObject1 = localObject3;
        }
        return ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject4).equals(localObject2);
      }
      localObject2 = this.bcC;
      ECFieldElement localECFieldElement2 = ((ECFieldElement)localObject2).ˏ(localECFieldElement3).ʻ((ECFieldElement)localObject2);
      switch (i)
      {
      default: 
        break;
      case 0: 
        localObject2 = localECFieldElement1;
        localObject3 = localObject1;
        localObject4 = localECFieldElement2;
        break;
      case 1: 
        ECFieldElement localECFieldElement4 = this.bcD[0];
        localObject2 = localECFieldElement1;
        localObject3 = localObject1;
        localObject4 = localECFieldElement2;
        if (localECFieldElement4.pA()) {
          break label347;
        }
        localObject3 = localECFieldElement4.ʻ(localECFieldElement4.px());
        localObject4 = localECFieldElement2.ʻ(localECFieldElement4);
        localObject2 = localECFieldElement1.ʻ(localECFieldElement4);
        localObject3 = ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject3);
        break;
      }
      throw new IllegalStateException("unsupported coordinate system");
      label347:
      return localObject4.equals(localECFieldElement3.ˏ((ECFieldElement)localObject2).ʻ(localECFieldElement3.px()).ˏ((ECFieldElement)localObject3));
    }
  }
  
  public static abstract class AbstractFp
    extends ECPoint
  {
    public AbstractFp(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      super(paramECFieldElement1, paramECFieldElement2);
    }
    
    public AbstractFp(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement)
    {
      super(paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
    }
    
    protected boolean pD()
    {
      ECFieldElement localECFieldElement6 = this.bcB;
      Object localObject = this.bcC;
      ECFieldElement localECFieldElement4 = this.aDw.pk();
      ECFieldElement localECFieldElement3 = this.aDw.pl();
      ECFieldElement localECFieldElement5 = ((ECFieldElement)localObject).px();
      ECFieldElement localECFieldElement1;
      ECFieldElement localECFieldElement2;
      ECFieldElement localECFieldElement7;
      switch (pG())
      {
      default: 
        break;
      case 0: 
        localObject = localECFieldElement4;
        localECFieldElement1 = localECFieldElement3;
        localECFieldElement2 = localECFieldElement5;
        break;
      case 1: 
        localECFieldElement7 = this.bcD[0];
        localObject = localECFieldElement4;
        localECFieldElement1 = localECFieldElement3;
        localECFieldElement2 = localECFieldElement5;
        if (localECFieldElement7.pA()) {
          break label222;
        }
        localObject = localECFieldElement7.px();
        localECFieldElement1 = localECFieldElement7.ʻ((ECFieldElement)localObject);
        localECFieldElement2 = localECFieldElement5.ʻ(localECFieldElement7);
        localObject = localECFieldElement4.ʻ((ECFieldElement)localObject);
        localECFieldElement1 = localECFieldElement3.ʻ(localECFieldElement1);
        break;
      case 2: 
      case 3: 
      case 4: 
        localECFieldElement7 = this.bcD[0];
        localObject = localECFieldElement4;
        localECFieldElement1 = localECFieldElement3;
        localECFieldElement2 = localECFieldElement5;
        if (localECFieldElement7.pA()) {
          break label222;
        }
        localECFieldElement1 = localECFieldElement7.px();
        localObject = localECFieldElement1.px();
        localECFieldElement1 = localECFieldElement1.ʻ((ECFieldElement)localObject);
        localObject = localECFieldElement4.ʻ((ECFieldElement)localObject);
        localECFieldElement1 = localECFieldElement3.ʻ(localECFieldElement1);
        localECFieldElement2 = localECFieldElement5;
        break;
      }
      throw new IllegalStateException("unsupported coordinate system");
      label222:
      return localECFieldElement2.equals(localECFieldElement6.px().ˏ((ECFieldElement)localObject).ʻ(localECFieldElement6).ˏ(localECFieldElement1));
    }
    
    protected boolean pS()
    {
      return pI().pB();
    }
  }
  
  public static class F2m
    extends ECPoint.AbstractF2m
  {
    public F2m(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      this(paramECCurve, paramECFieldElement1, paramECFieldElement2, false);
    }
    
    public F2m(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
    {
      super(paramECFieldElement1, paramECFieldElement2);
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
      if (paramECFieldElement1 != null)
      {
        ECFieldElement.F2m.ˋ(this.bcB, this.bcC);
        if (paramECCurve != null) {
          ECFieldElement.F2m.ˋ(this.bcB, this.aDw.pk());
        }
      }
      this.aWJ = paramBoolean;
    }
    
    F2m(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
    {
      super(paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
      this.aWJ = paramBoolean;
    }
    
    private static void ˊ(ECPoint paramECPoint1, ECPoint paramECPoint2)
    {
      if (paramECPoint1.aDw != paramECPoint2.aDw) {
        throw new IllegalArgumentException("Only points on the same curve can be added or subtracted");
      }
    }
    
    protected ECPoint pF()
    {
      return new F2m(null, pH(), pI());
    }
    
    public ECFieldElement pK()
    {
      int i = pG();
      switch (i)
      {
      default: 
        break;
      case 5: 
      case 6: 
        Object localObject = this.bcB;
        ECFieldElement localECFieldElement1 = this.bcC;
        if ((pR()) || (((ECFieldElement)localObject).isZero())) {
          return localECFieldElement1;
        }
        localECFieldElement1 = localECFieldElement1.ˏ((ECFieldElement)localObject).ʻ((ECFieldElement)localObject);
        localObject = localECFieldElement1;
        if (6 == i)
        {
          ECFieldElement localECFieldElement2 = this.bcD[0];
          localObject = localECFieldElement1;
          if (!localECFieldElement2.pA()) {
            localObject = localECFieldElement1.ʼ(localECFieldElement2);
          }
        }
        return localObject;
      }
      return this.bcC;
    }
    
    protected boolean pS()
    {
      ECFieldElement localECFieldElement1 = pL();
      if (localECFieldElement1.isZero()) {
        return false;
      }
      ECFieldElement localECFieldElement2 = pM();
      switch (pG())
      {
      default: 
        break;
      case 5: 
      case 6: 
        return localECFieldElement2.pB() != localECFieldElement1.pB();
      }
      return localECFieldElement2.ʼ(localECFieldElement1).pB();
    }
    
    public ECPoint pT()
    {
      if (pR()) {
        return this;
      }
      ECFieldElement localECFieldElement1 = this.bcB;
      if (localECFieldElement1.isZero()) {
        return this;
      }
      ECFieldElement localECFieldElement2;
      ECFieldElement localECFieldElement3;
      ECCurve localECCurve;
      boolean bool;
      switch (pG())
      {
      default: 
        break;
      case 0: 
        localECFieldElement2 = this.bcC;
        return new F2m(this.aDw, localECFieldElement1, localECFieldElement2.ˏ(localECFieldElement1), this.aWJ);
      case 1: 
        localECFieldElement3 = this.bcC;
        localECFieldElement2 = this.bcD[0];
        localECCurve = this.aDw;
        localECFieldElement3 = localECFieldElement3.ˏ(localECFieldElement1);
        bool = this.aWJ;
        return new F2m(localECCurve, localECFieldElement1, localECFieldElement3, new ECFieldElement[] { localECFieldElement2 }, bool);
      case 5: 
        localECFieldElement2 = this.bcC;
        return new F2m(this.aDw, localECFieldElement1, localECFieldElement2.pv(), this.aWJ);
      case 6: 
        localECFieldElement3 = this.bcC;
        localECFieldElement2 = this.bcD[0];
        localECCurve = this.aDw;
        localECFieldElement3 = localECFieldElement3.ˏ(localECFieldElement2);
        bool = this.aWJ;
        return new F2m(localECCurve, localECFieldElement1, localECFieldElement3, new ECFieldElement[] { localECFieldElement2 }, bool);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
    
    public ECPoint pU()
    {
      if (pR()) {
        return this;
      }
      ECCurve localECCurve = iv();
      Object localObject1 = this.bcB;
      if (((ECFieldElement)localObject1).isZero()) {
        return localECCurve.pi();
      }
      Object localObject2;
      Object localObject3;
      Object localObject4;
      boolean bool;
      Object localObject5;
      ECFieldElement localECFieldElement1;
      switch (localECCurve.pn())
      {
      default: 
        break;
      case 0: 
        localObject2 = this.bcC.ʼ((ECFieldElement)localObject1).ˏ((ECFieldElement)localObject1);
        localObject3 = ((ECFieldElement)localObject2).px().ˏ((ECFieldElement)localObject2).ˏ(localECCurve.pk());
        return new F2m(localECCurve, (ECFieldElement)localObject3, ((ECFieldElement)localObject1).ˊ((ECFieldElement)localObject3, ((ECFieldElement)localObject2).pv()), this.aWJ);
      case 1: 
        localObject3 = this.bcC;
        localObject4 = this.bcD[0];
        bool = ((ECFieldElement)localObject4).pA();
        if (bool) {
          localObject2 = localObject1;
        } else {
          localObject2 = ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject4);
        }
        if (!bool) {
          localObject3 = ((ECFieldElement)localObject3).ʻ((ECFieldElement)localObject4);
        }
        localObject1 = ((ECFieldElement)localObject1).px();
        localObject4 = ((ECFieldElement)localObject1).ˏ((ECFieldElement)localObject3);
        localObject3 = ((ECFieldElement)localObject2).px();
        localObject5 = ((ECFieldElement)localObject4).ˏ((ECFieldElement)localObject2);
        localECFieldElement1 = ((ECFieldElement)localObject5).ˋ((ECFieldElement)localObject4, (ECFieldElement)localObject3, localECCurve.pk());
        localObject4 = ((ECFieldElement)localObject2).ʻ(localECFieldElement1);
        localObject1 = ((ECFieldElement)localObject1).px().ˋ((ECFieldElement)localObject2, localECFieldElement1, (ECFieldElement)localObject5);
        localObject2 = ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject3);
        bool = this.aWJ;
        return new F2m(localECCurve, (ECFieldElement)localObject4, (ECFieldElement)localObject1, new ECFieldElement[] { localObject2 }, bool);
      case 6: 
        ECFieldElement localECFieldElement3 = this.bcC;
        ECFieldElement localECFieldElement4 = this.bcD[0];
        bool = localECFieldElement4.pA();
        if (bool) {
          localObject3 = localECFieldElement3;
        } else {
          localObject3 = localECFieldElement3.ʻ(localECFieldElement4);
        }
        if (bool) {
          localObject4 = localECFieldElement4;
        } else {
          localObject4 = localECFieldElement4.px();
        }
        localECFieldElement1 = localECCurve.pk();
        if (bool) {
          localObject5 = localECFieldElement1;
        } else {
          localObject5 = localECFieldElement1.ʻ((ECFieldElement)localObject4);
        }
        ECFieldElement localECFieldElement2 = localECFieldElement3.px().ˏ((ECFieldElement)localObject3).ˏ((ECFieldElement)localObject5);
        if (localECFieldElement2.isZero()) {
          return new F2m(localECCurve, localECFieldElement2, localECCurve.pl().pz(), this.aWJ);
        }
        ECFieldElement localECFieldElement5 = localECFieldElement2.px();
        if (bool) {
          localObject2 = localECFieldElement2;
        } else {
          localObject2 = localECFieldElement2.ʻ((ECFieldElement)localObject4);
        }
        ECFieldElement localECFieldElement6 = localECCurve.pl();
        if (localECFieldElement6.bitLength() < localECCurve.getFieldSize() >> 1)
        {
          localObject3 = localECFieldElement3.ˏ((ECFieldElement)localObject1).px();
          if (localECFieldElement6.pA()) {
            localObject1 = ((ECFieldElement)localObject5).ˏ((ECFieldElement)localObject4).px();
          } else {
            localObject1 = ((ECFieldElement)localObject5).ˊ(localECFieldElement6, ((ECFieldElement)localObject4).px());
          }
          localObject3 = ((ECFieldElement)localObject3).ˏ(localECFieldElement2).ˏ((ECFieldElement)localObject4).ʻ((ECFieldElement)localObject3).ˏ((ECFieldElement)localObject1).ˏ(localECFieldElement5);
          if (localECFieldElement1.isZero())
          {
            localObject1 = ((ECFieldElement)localObject3).ˏ((ECFieldElement)localObject2);
          }
          else
          {
            localObject1 = localObject3;
            if (!localECFieldElement1.pA()) {
              localObject1 = ((ECFieldElement)localObject3).ˏ(localECFieldElement1.pv().ʻ((ECFieldElement)localObject2));
            }
          }
        }
        else
        {
          if (!bool) {
            localObject1 = ((ECFieldElement)localObject1).ʻ(localECFieldElement4);
          }
          localObject1 = ((ECFieldElement)localObject1).ˊ(localECFieldElement2, (ECFieldElement)localObject3).ˏ(localECFieldElement5).ˏ((ECFieldElement)localObject2);
        }
        bool = this.aWJ;
        return new F2m(localECCurve, localECFieldElement5, (ECFieldElement)localObject1, new ECFieldElement[] { localObject2 }, bool);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
    
    public F2m pW()
    {
      if (pR()) {
        return this;
      }
      ECCurve localECCurve = iv();
      int i = localECCurve.pn();
      ECFieldElement localECFieldElement2 = this.bcB;
      ECFieldElement localECFieldElement1;
      switch (i)
      {
      default: 
        break;
      case 0: 
      case 5: 
        localECFieldElement1 = this.bcC;
        return new F2m(localECCurve, localECFieldElement2.px(), localECFieldElement1.px(), this.aWJ);
      case 1: 
      case 6: 
        ECFieldElement localECFieldElement3 = this.bcC;
        localECFieldElement1 = this.bcD[0];
        localECFieldElement2 = localECFieldElement2.px();
        localECFieldElement3 = localECFieldElement3.px();
        localECFieldElement1 = localECFieldElement1.px();
        boolean bool = this.aWJ;
        return new F2m(localECCurve, localECFieldElement2, localECFieldElement3, new ECFieldElement[] { localECFieldElement1 }, bool);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
    
    public ECPoint ʼ(ECPoint paramECPoint)
    {
      ˊ(this, paramECPoint);
      return ˊ((F2m)paramECPoint);
    }
    
    public ECPoint ʽ(ECPoint paramECPoint)
    {
      if (pR()) {
        return paramECPoint;
      }
      if (paramECPoint.pR()) {
        return pU();
      }
      ECCurve localECCurve = iv();
      ECFieldElement localECFieldElement1 = this.bcB;
      if (localECFieldElement1.isZero()) {
        return paramECPoint;
      }
      switch (localECCurve.pn())
      {
      default: 
        break;
      case 6: 
        ECFieldElement localECFieldElement2 = paramECPoint.bcB;
        ECFieldElement localECFieldElement3 = paramECPoint.bcD[0];
        if ((localECFieldElement2.isZero()) || (!localECFieldElement3.pA())) {
          return pU().ʼ(paramECPoint);
        }
        localECFieldElement3 = this.bcC;
        ECFieldElement localECFieldElement7 = this.bcD[0];
        ECFieldElement localECFieldElement4 = paramECPoint.bcC;
        ECFieldElement localECFieldElement5 = localECFieldElement1.px();
        ECFieldElement localECFieldElement6 = localECFieldElement3.px();
        localECFieldElement1 = localECFieldElement7.px();
        localECFieldElement3 = localECFieldElement3.ʻ(localECFieldElement7);
        localECFieldElement3 = localECCurve.pk().ʻ(localECFieldElement1).ˏ(localECFieldElement6).ˏ(localECFieldElement3);
        localECFieldElement4 = localECFieldElement4.pv();
        localECFieldElement5 = localECCurve.pk().ˏ(localECFieldElement4).ʻ(localECFieldElement1).ˏ(localECFieldElement6).ˋ(localECFieldElement3, localECFieldElement5, localECFieldElement1);
        localECFieldElement6 = localECFieldElement2.ʻ(localECFieldElement1);
        localECFieldElement2 = localECFieldElement6.ˏ(localECFieldElement3).px();
        if (localECFieldElement2.isZero())
        {
          if (localECFieldElement5.isZero()) {
            return paramECPoint.pU();
          }
          return localECCurve.pi();
        }
        if (localECFieldElement5.isZero()) {
          return new F2m(localECCurve, localECFieldElement5, localECCurve.pl().pz(), this.aWJ);
        }
        paramECPoint = localECFieldElement5.px().ʻ(localECFieldElement6);
        localECFieldElement1 = localECFieldElement5.ʻ(localECFieldElement2).ʻ(localECFieldElement1);
        localECFieldElement2 = localECFieldElement5.ˏ(localECFieldElement2).px().ˋ(localECFieldElement3, localECFieldElement4, localECFieldElement1);
        boolean bool = this.aWJ;
        return new F2m(localECCurve, paramECPoint, localECFieldElement2, new ECFieldElement[] { localECFieldElement1 }, bool);
      }
      return pU().ʼ(paramECPoint);
    }
    
    public ECPoint ʾ(ECFieldElement paramECFieldElement)
    {
      if (pR()) {
        return this;
      }
      switch (pG())
      {
      default: 
        break;
      case 5: 
      case 6: 
        ECFieldElement localECFieldElement = pL();
        paramECFieldElement = pM().ˏ(localECFieldElement).ʻ(paramECFieldElement).ˏ(localECFieldElement);
        return iv().ˊ(localECFieldElement, paramECFieldElement, pN(), this.aWJ);
      }
      return super.ʾ(paramECFieldElement);
    }
    
    public F2m ˊ(F2m paramF2m)
    {
      if (pR()) {
        return paramF2m;
      }
      if (paramF2m.pR()) {
        return this;
      }
      ECCurve localECCurve = iv();
      int i = localECCurve.pn();
      Object localObject1 = this.bcB;
      ECFieldElement localECFieldElement1 = paramF2m.bcB;
      Object localObject2;
      Object localObject3;
      Object localObject4;
      Object localObject5;
      boolean bool1;
      ECFieldElement localECFieldElement2;
      ECFieldElement localECFieldElement3;
      ECFieldElement localECFieldElement5;
      ECFieldElement localECFieldElement4;
      switch (i)
      {
      default: 
        break;
      case 0: 
        localObject2 = this.bcC;
        localObject3 = paramF2m.bcC;
        paramF2m = ((ECFieldElement)localObject1).ˏ(localECFieldElement1);
        localObject3 = ((ECFieldElement)localObject2).ˏ((ECFieldElement)localObject3);
        if (paramF2m.isZero())
        {
          if (((ECFieldElement)localObject3).isZero()) {
            return (F2m)pU();
          }
          return (F2m)localECCurve.pi();
        }
        localObject3 = ((ECFieldElement)localObject3).ʼ(paramF2m);
        paramF2m = ((ECFieldElement)localObject3).px().ˏ((ECFieldElement)localObject3).ˏ(paramF2m).ˏ(localECCurve.pk());
        return new F2m(localECCurve, paramF2m, ((ECFieldElement)localObject3).ʻ(((ECFieldElement)localObject1).ˏ(paramF2m)).ˏ(paramF2m).ˏ((ECFieldElement)localObject2), this.aWJ);
      case 1: 
        localObject3 = this.bcC;
        localObject2 = this.bcD[0];
        localObject4 = paramF2m.bcC;
        localObject5 = paramF2m.bcD[0];
        bool1 = ((ECFieldElement)localObject5).pA();
        localObject4 = ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject4);
        if (bool1) {
          paramF2m = (F2m)localObject3;
        } else {
          paramF2m = ((ECFieldElement)localObject3).ʻ((ECFieldElement)localObject5);
        }
        localECFieldElement2 = ((ECFieldElement)localObject4).ˏ(paramF2m);
        localObject4 = ((ECFieldElement)localObject2).ʻ(localECFieldElement1);
        if (bool1) {
          paramF2m = (F2m)localObject1;
        } else {
          paramF2m = ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject5);
        }
        localECFieldElement3 = ((ECFieldElement)localObject4).ˏ(paramF2m);
        if (localECFieldElement3.isZero())
        {
          if (localECFieldElement2.isZero()) {
            return (F2m)pU();
          }
          return (F2m)localECCurve.pi();
        }
        localObject4 = localECFieldElement3.px();
        localECFieldElement1 = ((ECFieldElement)localObject4).ʻ(localECFieldElement3);
        if (bool1) {
          paramF2m = (F2m)localObject2;
        } else {
          paramF2m = ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject5);
        }
        localECFieldElement5 = localECFieldElement2.ˏ(localECFieldElement3);
        ECFieldElement localECFieldElement6 = localECFieldElement5.ˋ(localECFieldElement2, (ECFieldElement)localObject4, localECCurve.pk()).ʻ(paramF2m).ˏ(localECFieldElement1);
        localECFieldElement4 = localECFieldElement3.ʻ(localECFieldElement6);
        if (bool1) {
          localObject2 = localObject4;
        } else {
          localObject2 = ((ECFieldElement)localObject4).ʻ((ECFieldElement)localObject5);
        }
        localObject1 = localECFieldElement2.ˋ((ECFieldElement)localObject1, localECFieldElement3, (ECFieldElement)localObject3).ˋ((ECFieldElement)localObject2, localECFieldElement5, localECFieldElement6);
        paramF2m = localECFieldElement1.ʻ(paramF2m);
        bool1 = this.aWJ;
        return new F2m(localECCurve, localECFieldElement4, (ECFieldElement)localObject1, new ECFieldElement[] { paramF2m }, bool1);
      case 6: 
        if (((ECFieldElement)localObject1).isZero())
        {
          if (localECFieldElement1.isZero()) {
            return (F2m)localECCurve.pi();
          }
          return paramF2m.ˊ(this);
        }
        localECFieldElement2 = this.bcC;
        localECFieldElement4 = this.bcD[0];
        localECFieldElement3 = paramF2m.bcC;
        localECFieldElement5 = paramF2m.bcD[0];
        bool1 = localECFieldElement4.pA();
        localObject4 = localECFieldElement1;
        localObject3 = localECFieldElement3;
        paramF2m = (F2m)localObject4;
        localObject2 = localObject3;
        if (!bool1)
        {
          paramF2m = ((ECFieldElement)localObject4).ʻ(localECFieldElement4);
          localObject2 = ((ECFieldElement)localObject3).ʻ(localECFieldElement4);
        }
        boolean bool2 = localECFieldElement5.pA();
        localObject5 = localObject1;
        localObject3 = localECFieldElement2;
        localObject1 = localObject5;
        localObject4 = localObject3;
        if (!bool2)
        {
          localObject1 = ((ECFieldElement)localObject5).ʻ(localECFieldElement5);
          localObject4 = ((ECFieldElement)localObject3).ʻ(localECFieldElement5);
        }
        localObject2 = ((ECFieldElement)localObject4).ˏ((ECFieldElement)localObject2);
        localObject3 = ((ECFieldElement)localObject1).ˏ(paramF2m);
        if (((ECFieldElement)localObject3).isZero())
        {
          if (((ECFieldElement)localObject2).isZero()) {
            return (F2m)pU();
          }
          return (F2m)localECCurve.pi();
        }
        if (localECFieldElement1.isZero())
        {
          localObject1 = pQ();
          paramF2m = ((ECPoint)localObject1).pJ();
          localObject2 = ((ECPoint)localObject1).pK();
          localObject3 = ((ECFieldElement)localObject2).ˏ(localECFieldElement3).ʼ(paramF2m);
          localObject1 = ((ECFieldElement)localObject3).px().ˏ((ECFieldElement)localObject3).ˏ(paramF2m).ˏ(localECCurve.pk());
          if (((ECFieldElement)localObject1).isZero()) {
            return new F2m(localECCurve, (ECFieldElement)localObject1, localECCurve.pl().pz(), this.aWJ);
          }
          localObject2 = ((ECFieldElement)localObject3).ʻ(paramF2m.ˏ((ECFieldElement)localObject1)).ˏ((ECFieldElement)localObject1).ˏ((ECFieldElement)localObject2).ʼ((ECFieldElement)localObject1).ˏ((ECFieldElement)localObject1);
          paramF2m = localECCurve.ι(ECConstants.ONE);
        }
        else
        {
          localObject3 = ((ECFieldElement)localObject3).px();
          localObject1 = ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject1);
          localObject5 = ((ECFieldElement)localObject2).ʻ(paramF2m);
          localObject4 = ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject5);
          if (((ECFieldElement)localObject4).isZero()) {
            return new F2m(localECCurve, (ECFieldElement)localObject4, localECCurve.pl().pz(), this.aWJ);
          }
          localObject1 = ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject3);
          paramF2m = (F2m)localObject1;
          if (!bool2) {
            paramF2m = ((ECFieldElement)localObject1).ʻ(localECFieldElement5);
          }
          localObject5 = ((ECFieldElement)localObject5).ˏ((ECFieldElement)localObject3).ˊ(paramF2m, localECFieldElement2.ˏ(localECFieldElement4));
          localObject3 = paramF2m;
          localObject1 = localObject4;
          localObject2 = localObject5;
          paramF2m = (F2m)localObject3;
          if (!bool1)
          {
            paramF2m = ((ECFieldElement)localObject3).ʻ(localECFieldElement4);
            localObject2 = localObject5;
            localObject1 = localObject4;
          }
        }
        bool1 = this.aWJ;
        return new F2m(localECCurve, (ECFieldElement)localObject1, (ECFieldElement)localObject2, new ECFieldElement[] { paramF2m }, bool1);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
    
    public F2m ˋ(F2m paramF2m)
    {
      if (paramF2m.pR()) {
        return this;
      }
      return ˊ((F2m)paramF2m.pT());
    }
    
    public ECPoint ι(ECFieldElement paramECFieldElement)
    {
      if (pR()) {
        return this;
      }
      ECFieldElement localECFieldElement1;
      Object localObject;
      ECFieldElement localECFieldElement2;
      switch (pG())
      {
      default: 
        break;
      case 5: 
        localECFieldElement1 = pL();
        localObject = pM();
        localECFieldElement2 = localECFieldElement1.ʻ(paramECFieldElement);
        paramECFieldElement = ((ECFieldElement)localObject).ˏ(localECFieldElement1).ʼ(paramECFieldElement).ˏ(localECFieldElement2);
        return iv().ˊ(localECFieldElement1, paramECFieldElement, pN(), this.aWJ);
      case 6: 
        localECFieldElement2 = pL();
        ECFieldElement localECFieldElement3 = pM();
        localObject = pN()[0];
        localECFieldElement1 = localECFieldElement2.ʻ(paramECFieldElement.px());
        localECFieldElement2 = localECFieldElement3.ˏ(localECFieldElement2).ˏ(localECFieldElement1);
        paramECFieldElement = ((ECFieldElement)localObject).ʻ(paramECFieldElement);
        localObject = iv();
        boolean bool = this.aWJ;
        return ((ECCurve)localObject).ˊ(localECFieldElement1, localECFieldElement2, new ECFieldElement[] { paramECFieldElement }, bool);
      }
      return super.ι(paramECFieldElement);
    }
  }
  
  public static class Fp
    extends ECPoint.AbstractFp
  {
    public Fp(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      this(paramECCurve, paramECFieldElement1, paramECFieldElement2, false);
    }
    
    public Fp(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
    {
      super(paramECFieldElement1, paramECFieldElement2);
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
    
    Fp(ECCurve paramECCurve, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
    {
      super(paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement);
      this.aWJ = paramBoolean;
    }
    
    protected ECPoint pF()
    {
      return new Fp(null, pH(), pI());
    }
    
    public ECPoint pT()
    {
      if (pR()) {
        return this;
      }
      ECCurve localECCurve = iv();
      if (localECCurve.pn() != 0) {
        return new Fp(localECCurve, this.bcB, this.bcC.pw(), this.bcD, this.aWJ);
      }
      return new Fp(localECCurve, this.bcB, this.bcC.pw(), this.aWJ);
    }
    
    public ECPoint pU()
    {
      if (pR()) {
        return this;
      }
      ECCurve localECCurve = iv();
      ECFieldElement localECFieldElement3 = this.bcC;
      if (localECFieldElement3.isZero()) {
        return localECCurve.pi();
      }
      int i = localECCurve.pn();
      ECFieldElement localECFieldElement4 = this.bcB;
      Object localObject;
      ECFieldElement localECFieldElement1;
      ECFieldElement localECFieldElement5;
      boolean bool;
      ECFieldElement localECFieldElement2;
      ECFieldElement localECFieldElement6;
      switch (i)
      {
      default: 
        break;
      case 0: 
        localObject = ˈ(localECFieldElement4.px()).ˏ(iv().pk()).ʼ(ʿ(localECFieldElement3));
        localECFieldElement1 = ((ECFieldElement)localObject).px().ᐝ(ʿ(localECFieldElement4));
        return new Fp(localECCurve, localECFieldElement1, ((ECFieldElement)localObject).ʻ(localECFieldElement4.ᐝ(localECFieldElement1)).ᐝ(localECFieldElement3), this.aWJ);
      case 1: 
        localECFieldElement5 = this.bcD[0];
        bool = localECFieldElement5.pA();
        localECFieldElement1 = localECCurve.pk();
        localObject = localECFieldElement1;
        if (!localECFieldElement1.isZero())
        {
          localObject = localECFieldElement1;
          if (!bool) {
            localObject = localECFieldElement1.ʻ(localECFieldElement5.px());
          }
        }
        localECFieldElement2 = ((ECFieldElement)localObject).ˏ(ˈ(localECFieldElement4.px()));
        if (bool) {
          localObject = localECFieldElement3;
        } else {
          localObject = localECFieldElement3.ʻ(localECFieldElement5);
        }
        if (bool) {
          localECFieldElement1 = localECFieldElement3.px();
        } else {
          localECFieldElement1 = ((ECFieldElement)localObject).ʻ(localECFieldElement3);
        }
        localECFieldElement5 = ˉ(localECFieldElement4.ʻ(localECFieldElement1));
        localECFieldElement6 = localECFieldElement2.px().ᐝ(ʿ(localECFieldElement5));
        localECFieldElement4 = ʿ((ECFieldElement)localObject);
        localECFieldElement3 = localECFieldElement6.ʻ(localECFieldElement4);
        localECFieldElement1 = ʿ(localECFieldElement1);
        localECFieldElement2 = localECFieldElement5.ᐝ(localECFieldElement6).ʻ(localECFieldElement2).ᐝ(ʿ(localECFieldElement1.px()));
        if (bool) {
          localECFieldElement1 = ʿ(localECFieldElement1);
        } else {
          localECFieldElement1 = localECFieldElement4.px();
        }
        localObject = ʿ(localECFieldElement1).ʻ((ECFieldElement)localObject);
        bool = this.aWJ;
        return new Fp(localECCurve, localECFieldElement3, localECFieldElement2, new ECFieldElement[] { localObject }, bool);
      case 2: 
        localECFieldElement1 = this.bcD[0];
        bool = localECFieldElement1.pA();
        localECFieldElement6 = localECFieldElement3.px();
        localECFieldElement5 = localECFieldElement6.px();
        ECFieldElement localECFieldElement7 = localECCurve.pk();
        ECFieldElement localECFieldElement8 = localECFieldElement7.pw();
        if (localECFieldElement8.toBigInteger().equals(BigInteger.valueOf(3L)))
        {
          if (bool) {
            localObject = localECFieldElement1;
          } else {
            localObject = localECFieldElement1.px();
          }
          localObject = ˈ(localECFieldElement4.ˏ((ECFieldElement)localObject).ʻ(localECFieldElement4.ᐝ((ECFieldElement)localObject)));
          localECFieldElement2 = ˉ(localECFieldElement6.ʻ(localECFieldElement4));
        }
        else
        {
          localECFieldElement2 = ˈ(localECFieldElement4.px());
          if (bool)
          {
            localObject = localECFieldElement2.ˏ(localECFieldElement7);
          }
          else
          {
            localObject = localECFieldElement2;
            if (!localECFieldElement7.isZero())
            {
              if (bool) {
                localObject = localECFieldElement1;
              } else {
                localObject = localECFieldElement1.px();
              }
              localObject = ((ECFieldElement)localObject).px();
              if (localECFieldElement8.bitLength() < localECFieldElement7.bitLength()) {
                localObject = localECFieldElement2.ᐝ(((ECFieldElement)localObject).ʻ(localECFieldElement8));
              } else {
                localObject = localECFieldElement2.ˏ(((ECFieldElement)localObject).ʻ(localECFieldElement7));
              }
            }
          }
          localECFieldElement2 = ˉ(localECFieldElement4.ʻ(localECFieldElement6));
        }
        localECFieldElement4 = ((ECFieldElement)localObject).px().ᐝ(ʿ(localECFieldElement2));
        localECFieldElement5 = localECFieldElement2.ᐝ(localECFieldElement4).ʻ((ECFieldElement)localObject).ᐝ(ˌ(localECFieldElement5));
        localECFieldElement2 = ʿ(localECFieldElement3);
        localObject = localECFieldElement2;
        if (!bool) {
          localObject = localECFieldElement2.ʻ(localECFieldElement1);
        }
        bool = this.aWJ;
        return new Fp(localECCurve, localECFieldElement4, localECFieldElement5, new ECFieldElement[] { localObject }, bool);
      case 4: 
        return І(true);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
    
    public ECPoint pV()
    {
      if (pR()) {
        return this;
      }
      ECFieldElement localECFieldElement1 = this.bcC;
      if (localECFieldElement1.isZero()) {
        return this;
      }
      ECCurve localECCurve = iv();
      switch (localECCurve.pn())
      {
      default: 
        break;
      case 0: 
        ECFieldElement localECFieldElement2 = this.bcB;
        ECFieldElement localECFieldElement5 = ʿ(localECFieldElement1);
        ECFieldElement localECFieldElement3 = localECFieldElement5.px();
        ECFieldElement localECFieldElement4 = ˈ(localECFieldElement2.px()).ˏ(iv().pk());
        ECFieldElement localECFieldElement6 = localECFieldElement4.px();
        localECFieldElement6 = ˈ(localECFieldElement2).ʻ(localECFieldElement3).ᐝ(localECFieldElement6);
        if (localECFieldElement6.isZero()) {
          return iv().pi();
        }
        localECFieldElement5 = localECFieldElement6.ʻ(localECFieldElement5).py();
        localECFieldElement4 = localECFieldElement6.ʻ(localECFieldElement5).ʻ(localECFieldElement4);
        localECFieldElement3 = localECFieldElement3.px().ʻ(localECFieldElement5).ᐝ(localECFieldElement4);
        localECFieldElement4 = localECFieldElement3.ᐝ(localECFieldElement4).ʻ(localECFieldElement4.ˏ(localECFieldElement3)).ˏ(localECFieldElement2);
        return new Fp(localECCurve, localECFieldElement4, localECFieldElement2.ᐝ(localECFieldElement4).ʻ(localECFieldElement3).ᐝ(localECFieldElement1), this.aWJ);
      case 4: 
        return І(false).ʼ(this);
      }
      return pU().ʼ(this);
    }
    
    protected ECFieldElement pX()
    {
      Object localObject2 = this.bcD[1];
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = this.bcD;
        localObject1 = ˏ(this.bcD[0], null);
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
      int i = localECCurve.pn();
      Object localObject1 = this.bcB;
      Object localObject2 = this.bcC;
      Object localObject3 = paramECPoint.bcB;
      Object localObject4 = paramECPoint.bcC;
      ECFieldElement localECFieldElement1;
      ECFieldElement localECFieldElement2;
      boolean bool1;
      boolean bool2;
      ECFieldElement localECFieldElement3;
      switch (i)
      {
      default: 
        break;
      case 0: 
        paramECPoint = ((ECFieldElement)localObject3).ᐝ((ECFieldElement)localObject1);
        localObject4 = ((ECFieldElement)localObject4).ᐝ((ECFieldElement)localObject2);
        if (paramECPoint.isZero())
        {
          if (((ECFieldElement)localObject4).isZero()) {
            return pU();
          }
          return localECCurve.pi();
        }
        paramECPoint = ((ECFieldElement)localObject4).ʼ(paramECPoint);
        localObject3 = paramECPoint.px().ᐝ((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject3);
        return new Fp(localECCurve, (ECFieldElement)localObject3, paramECPoint.ʻ(((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject3)).ᐝ((ECFieldElement)localObject2), this.aWJ);
      case 1: 
        localECFieldElement1 = this.bcD[0];
        localECFieldElement2 = paramECPoint.bcD[0];
        bool1 = localECFieldElement1.pA();
        bool2 = localECFieldElement2.pA();
        if (bool1) {
          paramECPoint = (ECPoint)localObject4;
        } else {
          paramECPoint = ((ECFieldElement)localObject4).ʻ(localECFieldElement1);
        }
        if (!bool2) {
          localObject2 = ((ECFieldElement)localObject2).ʻ(localECFieldElement2);
        }
        localObject4 = paramECPoint.ᐝ((ECFieldElement)localObject2);
        if (bool1) {
          paramECPoint = (ECPoint)localObject3;
        } else {
          paramECPoint = ((ECFieldElement)localObject3).ʻ(localECFieldElement1);
        }
        if (!bool2) {
          localObject1 = ((ECFieldElement)localObject1).ʻ(localECFieldElement2);
        }
        localObject3 = paramECPoint.ᐝ((ECFieldElement)localObject1);
        if (((ECFieldElement)localObject3).isZero())
        {
          if (((ECFieldElement)localObject4).isZero()) {
            return pU();
          }
          return localECCurve.pi();
        }
        if (bool1) {
          paramECPoint = localECFieldElement2;
        } else if (bool2) {
          paramECPoint = localECFieldElement1;
        } else {
          paramECPoint = localECFieldElement1.ʻ(localECFieldElement2);
        }
        localECFieldElement2 = ((ECFieldElement)localObject3).px();
        localECFieldElement1 = localECFieldElement2.ʻ((ECFieldElement)localObject3);
        localECFieldElement2 = localECFieldElement2.ʻ((ECFieldElement)localObject1);
        localECFieldElement3 = ((ECFieldElement)localObject4).px().ʻ(paramECPoint).ᐝ(localECFieldElement1).ᐝ(ʿ(localECFieldElement2));
        localObject1 = ((ECFieldElement)localObject3).ʻ(localECFieldElement3);
        localObject2 = localECFieldElement2.ᐝ(localECFieldElement3).ˊ((ECFieldElement)localObject4, (ECFieldElement)localObject2, localECFieldElement1);
        paramECPoint = localECFieldElement1.ʻ(paramECPoint);
        bool1 = this.aWJ;
        return new Fp(localECCurve, (ECFieldElement)localObject1, (ECFieldElement)localObject2, new ECFieldElement[] { paramECPoint }, bool1);
      case 2: 
      case 4: 
        ECFieldElement localECFieldElement6 = this.bcD[0];
        ECFieldElement localECFieldElement7 = paramECPoint.bcD[0];
        bool1 = localECFieldElement6.pA();
        localECFieldElement1 = null;
        localECFieldElement2 = null;
        if ((!bool1) && (localECFieldElement6.equals(localECFieldElement7)))
        {
          paramECPoint = ((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject3);
          localECFieldElement1 = ((ECFieldElement)localObject2).ᐝ((ECFieldElement)localObject4);
          if (paramECPoint.isZero())
          {
            if (localECFieldElement1.isZero()) {
              return pU();
            }
            return localECCurve.pi();
          }
          localObject4 = paramECPoint.px();
          localObject1 = ((ECFieldElement)localObject1).ʻ((ECFieldElement)localObject4);
          localObject3 = ((ECFieldElement)localObject3).ʻ((ECFieldElement)localObject4);
          localECFieldElement3 = ((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject3).ʻ((ECFieldElement)localObject2);
          localObject2 = localECFieldElement1.px().ᐝ((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject3);
          localObject3 = ((ECFieldElement)localObject1).ᐝ((ECFieldElement)localObject2).ʻ(localECFieldElement1).ᐝ(localECFieldElement3);
          if (bool1)
          {
            localObject1 = localObject4;
          }
          else
          {
            paramECPoint = paramECPoint.ʻ(localECFieldElement6);
            localObject1 = localECFieldElement2;
          }
          localObject4 = paramECPoint;
        }
        else
        {
          if (bool1)
          {
            paramECPoint = (ECPoint)localObject4;
          }
          else
          {
            paramECPoint = localECFieldElement6.px();
            localObject3 = paramECPoint.ʻ((ECFieldElement)localObject3);
            paramECPoint = paramECPoint.ʻ(localECFieldElement6).ʻ((ECFieldElement)localObject4);
          }
          bool2 = localECFieldElement7.pA();
          if (bool2)
          {
            localObject4 = localObject2;
            localObject2 = localObject1;
            localObject1 = localObject4;
          }
          else
          {
            localECFieldElement2 = localECFieldElement7.px();
            localObject4 = localECFieldElement2.ʻ((ECFieldElement)localObject1);
            localObject1 = localECFieldElement2.ʻ(localECFieldElement7).ʻ((ECFieldElement)localObject2);
            localObject2 = localObject4;
          }
          localECFieldElement2 = ((ECFieldElement)localObject2).ᐝ((ECFieldElement)localObject3);
          paramECPoint = ((ECFieldElement)localObject1).ᐝ(paramECPoint);
          if (localECFieldElement2.isZero())
          {
            if (paramECPoint.isZero()) {
              return pU();
            }
            return localECCurve.pi();
          }
          localECFieldElement3 = localECFieldElement2.px();
          localObject3 = localECFieldElement3.ʻ(localECFieldElement2);
          localObject2 = localECFieldElement3.ʻ((ECFieldElement)localObject2);
          ECFieldElement localECFieldElement4 = paramECPoint.px().ˏ((ECFieldElement)localObject3).ᐝ(ʿ((ECFieldElement)localObject2));
          ECFieldElement localECFieldElement5 = ((ECFieldElement)localObject2).ᐝ(localECFieldElement4).ˊ(paramECPoint, (ECFieldElement)localObject3, (ECFieldElement)localObject1);
          paramECPoint = localECFieldElement2;
          localObject1 = paramECPoint;
          if (!bool1) {
            localObject1 = paramECPoint.ʻ(localECFieldElement6);
          }
          paramECPoint = (ECPoint)localObject1;
          if (!bool2) {
            paramECPoint = ((ECFieldElement)localObject1).ʻ(localECFieldElement7);
          }
          localObject2 = localECFieldElement4;
          localObject3 = localECFieldElement5;
          localObject4 = paramECPoint;
          localObject1 = localECFieldElement1;
          if (paramECPoint == localECFieldElement2)
          {
            localObject1 = localECFieldElement3;
            localObject4 = paramECPoint;
            localObject3 = localECFieldElement5;
            localObject2 = localECFieldElement4;
          }
        }
        if (i == 4)
        {
          localObject1 = ˏ((ECFieldElement)localObject4, (ECFieldElement)localObject1);
          paramECPoint = new ECFieldElement[2];
          paramECPoint[0] = localObject4;
          paramECPoint[1] = localObject1;
        }
        else
        {
          paramECPoint = new ECFieldElement[1];
          paramECPoint[0] = localObject4;
        }
        return new Fp(localECCurve, (ECFieldElement)localObject2, (ECFieldElement)localObject3, paramECPoint, this.aWJ);
      }
      throw new IllegalStateException("unsupported coordinate system");
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
      ECFieldElement localECFieldElement1 = this.bcC;
      if (localECFieldElement1.isZero()) {
        return paramECPoint;
      }
      ECCurve localECCurve = iv();
      switch (localECCurve.pn())
      {
      default: 
        break;
      case 0: 
        ECFieldElement localECFieldElement2 = this.bcB;
        ECFieldElement localECFieldElement3 = paramECPoint.bcB;
        ECFieldElement localECFieldElement4 = paramECPoint.bcC;
        paramECPoint = localECFieldElement3.ᐝ(localECFieldElement2);
        ECFieldElement localECFieldElement5 = localECFieldElement4.ᐝ(localECFieldElement1);
        if (paramECPoint.isZero())
        {
          if (localECFieldElement5.isZero()) {
            return pV();
          }
          return this;
        }
        localECFieldElement4 = paramECPoint.px();
        ECFieldElement localECFieldElement6 = localECFieldElement5.px();
        ECFieldElement localECFieldElement7 = localECFieldElement4.ʻ(ʿ(localECFieldElement2).ˏ(localECFieldElement3)).ᐝ(localECFieldElement6);
        if (localECFieldElement7.isZero()) {
          return localECCurve.pi();
        }
        localECFieldElement6 = localECFieldElement7.ʻ(paramECPoint).py();
        localECFieldElement5 = localECFieldElement7.ʻ(localECFieldElement6).ʻ(localECFieldElement5);
        paramECPoint = ʿ(localECFieldElement1).ʻ(localECFieldElement4).ʻ(paramECPoint).ʻ(localECFieldElement6).ᐝ(localECFieldElement5);
        localECFieldElement3 = paramECPoint.ᐝ(localECFieldElement5).ʻ(localECFieldElement5.ˏ(paramECPoint)).ˏ(localECFieldElement3);
        return new Fp(localECCurve, localECFieldElement3, localECFieldElement2.ᐝ(localECFieldElement3).ʻ(paramECPoint).ᐝ(localECFieldElement1), this.aWJ);
      case 4: 
        return І(false).ʼ(paramECPoint);
      }
      return pU().ʼ(paramECPoint);
    }
    
    protected ECFieldElement ʿ(ECFieldElement paramECFieldElement)
    {
      return paramECFieldElement.ˏ(paramECFieldElement);
    }
    
    protected ECFieldElement ˈ(ECFieldElement paramECFieldElement)
    {
      return ʿ(paramECFieldElement).ˏ(paramECFieldElement);
    }
    
    protected ECFieldElement ˉ(ECFieldElement paramECFieldElement)
    {
      return ʿ(ʿ(paramECFieldElement));
    }
    
    protected ECFieldElement ˌ(ECFieldElement paramECFieldElement)
    {
      return ˉ(ʿ(paramECFieldElement));
    }
    
    protected ECFieldElement ˏ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      ECFieldElement localECFieldElement2 = iv().pk();
      if ((localECFieldElement2.isZero()) || (paramECFieldElement1.pA())) {
        return localECFieldElement2;
      }
      ECFieldElement localECFieldElement1 = paramECFieldElement2;
      if (paramECFieldElement2 == null) {
        localECFieldElement1 = paramECFieldElement1.px();
      }
      paramECFieldElement1 = localECFieldElement1.px();
      paramECFieldElement2 = localECFieldElement2.pw();
      if (paramECFieldElement2.bitLength() < localECFieldElement2.bitLength()) {
        return paramECFieldElement1.ʻ(paramECFieldElement2).pw();
      }
      return paramECFieldElement1.ʻ(localECFieldElement2);
    }
    
    protected Fp І(boolean paramBoolean)
    {
      ECFieldElement localECFieldElement3 = this.bcB;
      ECFieldElement localECFieldElement5 = this.bcC;
      Object localObject = this.bcD[0];
      ECFieldElement localECFieldElement1 = pX();
      ECFieldElement localECFieldElement4 = ˈ(localECFieldElement3.px()).ˏ(localECFieldElement1);
      ECFieldElement localECFieldElement2 = ʿ(localECFieldElement5);
      localECFieldElement5 = localECFieldElement2.ʻ(localECFieldElement5);
      ECFieldElement localECFieldElement6 = ʿ(localECFieldElement3.ʻ(localECFieldElement5));
      localECFieldElement3 = localECFieldElement4.px().ᐝ(ʿ(localECFieldElement6));
      localECFieldElement5 = ʿ(localECFieldElement5.px());
      localECFieldElement4 = localECFieldElement4.ʻ(localECFieldElement6.ᐝ(localECFieldElement3)).ᐝ(localECFieldElement5);
      if (paramBoolean) {
        localECFieldElement1 = ʿ(localECFieldElement5.ʻ(localECFieldElement1));
      } else {
        localECFieldElement1 = null;
      }
      if (!((ECFieldElement)localObject).pA()) {
        localECFieldElement2 = localECFieldElement2.ʻ((ECFieldElement)localObject);
      }
      localObject = iv();
      paramBoolean = this.aWJ;
      return new Fp((ECCurve)localObject, localECFieldElement3, localECFieldElement4, new ECFieldElement[] { localECFieldElement2, localECFieldElement1 }, paramBoolean);
    }
    
    public ECFieldElement ﺌ(int paramInt)
    {
      if ((paramInt == 1) && (4 == pG())) {
        return pX();
      }
      return super.ﺌ(paramInt);
    }
    
    public ECPoint ﺬ(int paramInt)
    {
      if (paramInt < 0) {
        throw new IllegalArgumentException("'e' cannot be negative");
      }
      if ((paramInt == 0) || (pR())) {
        return this;
      }
      if (paramInt == 1) {
        return pU();
      }
      ECCurve localECCurve = iv();
      Object localObject4 = this.bcC;
      if (((ECFieldElement)localObject4).isZero()) {
        return localECCurve.pi();
      }
      int j = localECCurve.pn();
      ECFieldElement localECFieldElement3 = localECCurve.pk();
      ECFieldElement localECFieldElement2 = this.bcB;
      Object localObject1;
      if (this.bcD.length < 1) {
        localObject1 = localECCurve.ι(ECConstants.ONE);
      } else {
        localObject1 = this.bcD[0];
      }
      Object localObject2 = localObject4;
      ECFieldElement localECFieldElement1 = localECFieldElement3;
      Object localObject3 = localECFieldElement2;
      if (!((ECFieldElement)localObject1).pA())
      {
        localObject2 = localObject4;
        localECFieldElement1 = localECFieldElement3;
        localObject3 = localECFieldElement2;
        switch (j)
        {
        default: 
          localObject2 = localObject4;
          localECFieldElement1 = localECFieldElement3;
          localObject3 = localECFieldElement2;
          break;
        case 1: 
          localECFieldElement1 = ((ECFieldElement)localObject1).px();
          localObject3 = localECFieldElement2.ʻ((ECFieldElement)localObject1);
          localObject2 = ((ECFieldElement)localObject4).ʻ(localECFieldElement1);
          localECFieldElement1 = ˏ((ECFieldElement)localObject1, localECFieldElement1);
          break;
        case 2: 
          localECFieldElement1 = ˏ((ECFieldElement)localObject1, null);
          localObject2 = localObject4;
          localObject3 = localECFieldElement2;
          break;
        case 4: 
          localECFieldElement1 = pX();
          localObject3 = localECFieldElement2;
          localObject2 = localObject4;
        }
      }
      int i = 0;
      localObject4 = localObject3;
      localObject3 = localECFieldElement1;
      while (i < paramInt)
      {
        if (((ECFieldElement)localObject2).isZero()) {
          return localECCurve.pi();
        }
        localECFieldElement3 = ˈ(((ECFieldElement)localObject4).px());
        localECFieldElement2 = ʿ((ECFieldElement)localObject2);
        localECFieldElement1 = localECFieldElement2.ʻ((ECFieldElement)localObject2);
        localObject2 = ʿ(((ECFieldElement)localObject4).ʻ(localECFieldElement1));
        ECFieldElement localECFieldElement4 = ʿ(localECFieldElement1.px());
        localObject4 = localObject3;
        localECFieldElement1 = localECFieldElement3;
        if (!((ECFieldElement)localObject3).isZero())
        {
          localECFieldElement1 = localECFieldElement3.ˏ((ECFieldElement)localObject3);
          localObject4 = ʿ(localECFieldElement4.ʻ((ECFieldElement)localObject3));
        }
        localECFieldElement3 = localECFieldElement1.px().ᐝ(ʿ((ECFieldElement)localObject2));
        localObject2 = localECFieldElement1.ʻ(((ECFieldElement)localObject2).ᐝ(localECFieldElement3)).ᐝ(localECFieldElement4);
        if (((ECFieldElement)localObject1).pA()) {
          localECFieldElement1 = localECFieldElement2;
        } else {
          localECFieldElement1 = localECFieldElement2.ʻ((ECFieldElement)localObject1);
        }
        i += 1;
        localObject3 = localObject4;
        localObject4 = localECFieldElement3;
        localObject1 = localECFieldElement1;
      }
      boolean bool;
      switch (j)
      {
      default: 
        break;
      case 0: 
        localObject1 = ((ECFieldElement)localObject1).py();
        localECFieldElement1 = ((ECFieldElement)localObject1).px();
        localObject1 = localECFieldElement1.ʻ((ECFieldElement)localObject1);
        return new Fp(localECCurve, ((ECFieldElement)localObject4).ʻ(localECFieldElement1), ((ECFieldElement)localObject2).ʻ((ECFieldElement)localObject1), this.aWJ);
      case 1: 
        localECFieldElement1 = ((ECFieldElement)localObject4).ʻ((ECFieldElement)localObject1);
        localObject1 = ((ECFieldElement)localObject1).ʻ(((ECFieldElement)localObject1).px());
        bool = this.aWJ;
        return new Fp(localECCurve, localECFieldElement1, (ECFieldElement)localObject2, new ECFieldElement[] { localObject1 }, bool);
      case 2: 
        bool = this.aWJ;
        return new Fp(localECCurve, (ECFieldElement)localObject4, (ECFieldElement)localObject2, new ECFieldElement[] { localObject1 }, bool);
      case 4: 
        bool = this.aWJ;
        return new Fp(localECCurve, (ECFieldElement)localObject4, (ECFieldElement)localObject2, new ECFieldElement[] { localObject1, localObject3 }, bool);
      }
      throw new IllegalStateException("unsupported coordinate system");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ECPoint
 * JD-Core Version:    0.7.0.1
 */