package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Hashtable;
import java.util.Random;
import org.spongycastle.math.ec.endo.ECEndomorphism;
import org.spongycastle.math.ec.endo.GLVEndomorphism;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.FiniteFields;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Integers;

public abstract class ECCurve
{
  protected FiniteField bcj;
  public ECFieldElement bck;
  public ECFieldElement bcl;
  public BigInteger bcm;
  public BigInteger bcn;
  public int bco = 0;
  protected ECEndomorphism bcp = null;
  protected ECMultiplier bcq = null;
  
  protected ECCurve(FiniteField paramFiniteField)
  {
    this.bcj = paramFiniteField;
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (((paramObject instanceof ECCurve)) && (ʼ((ECCurve)paramObject)));
  }
  
  public abstract int getFieldSize();
  
  public BigInteger getOrder()
  {
    return this.bcm;
  }
  
  public int hashCode()
  {
    return pj().hashCode() ^ Integers.rotateLeft(pk().toBigInteger().hashCode(), 8) ^ Integers.rotateLeft(pl().toBigInteger().hashCode(), 16);
  }
  
  public Config pf()
  {
    return new Config(this.bco, this.bcp, this.bcq);
  }
  
  public abstract ECCurve pg();
  
  protected ECMultiplier ph()
  {
    if ((this.bcp instanceof GLVEndomorphism)) {
      return new GLVMultiplier(this, (GLVEndomorphism)this.bcp);
    }
    return new WNafL2RMultiplier();
  }
  
  public abstract ECPoint pi();
  
  public FiniteField pj()
  {
    return this.bcj;
  }
  
  public ECFieldElement pk()
  {
    return this.bck;
  }
  
  public ECFieldElement pl()
  {
    return this.bcl;
  }
  
  public BigInteger pm()
  {
    return this.bcn;
  }
  
  public int pn()
  {
    return this.bco;
  }
  
  public ECEndomorphism po()
  {
    return this.bcp;
  }
  
  public ECMultiplier pp()
  {
    try
    {
      if (this.bcq == null) {
        this.bcq = ph();
      }
      ECMultiplier localECMultiplier = this.bcq;
      return localECMultiplier;
    }
    finally {}
  }
  
  public boolean ʼ(ECCurve paramECCurve)
  {
    return (this == paramECCurve) || ((paramECCurve != null) && (pj().equals(paramECCurve.pj())) && (pk().toBigInteger().equals(paramECCurve.pk().toBigInteger())) && (pl().toBigInteger().equals(paramECCurve.pl().toBigInteger())));
  }
  
  public ECPoint ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, boolean paramBoolean)
  {
    paramBigInteger1 = ˋ(paramBigInteger1, paramBigInteger2, paramBoolean);
    if (!paramBigInteger1.isValid()) {
      throw new IllegalArgumentException("Invalid point coordinates");
    }
    return paramBigInteger1;
  }
  
  public abstract ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean);
  
  public abstract ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean);
  
  public PreCompInfo ˊ(ECPoint paramECPoint, String paramString)
  {
    ᐝ(paramECPoint);
    try
    {
      Hashtable localHashtable = paramECPoint.bcE;
      if (localHashtable == null) {
        paramString = null;
      } else {
        paramString = (PreCompInfo)localHashtable.get(paramString);
      }
      return paramString;
    }
    finally {}
  }
  
  public void ˊ(ECPoint paramECPoint, String paramString, PreCompInfo paramPreCompInfo)
  {
    ᐝ(paramECPoint);
    try
    {
      Hashtable localHashtable2 = paramECPoint.bcE;
      Hashtable localHashtable1 = localHashtable2;
      if (localHashtable2 == null)
      {
        localHashtable1 = new Hashtable(4);
        paramECPoint.bcE = localHashtable1;
      }
      localHashtable1.put(paramString, paramPreCompInfo);
      return;
    }
    finally {}
  }
  
  public void ˊ(ECPoint[] paramArrayOfECPoint)
  {
    ˋ(paramArrayOfECPoint);
    if (pn() == 0) {
      return;
    }
    ECFieldElement[] arrayOfECFieldElement = new ECFieldElement[paramArrayOfECPoint.length];
    int[] arrayOfInt = new int[paramArrayOfECPoint.length];
    int i = 0;
    int j = 0;
    int k;
    while (j < paramArrayOfECPoint.length)
    {
      ECPoint localECPoint = paramArrayOfECPoint[j];
      k = i;
      if (localECPoint != null)
      {
        k = i;
        if (!localECPoint.pP())
        {
          arrayOfECFieldElement[i] = localECPoint.ﺌ(0);
          k = i + 1;
          arrayOfInt[i] = j;
        }
      }
      j += 1;
      i = k;
    }
    if (i == 0) {
      return;
    }
    ECAlgorithms.ˊ(arrayOfECFieldElement, 0, i);
    j = 0;
    while (j < i)
    {
      k = arrayOfInt[j];
      paramArrayOfECPoint[k] = paramArrayOfECPoint[k].ͺ(arrayOfECFieldElement[j]);
      j += 1;
    }
  }
  
  protected abstract ECPoint ˋ(int paramInt, BigInteger paramBigInteger);
  
  public ECPoint ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, boolean paramBoolean)
  {
    return ˊ(ι(paramBigInteger1), ι(paramBigInteger2), paramBoolean);
  }
  
  protected void ˋ(ECPoint[] paramArrayOfECPoint)
  {
    if (paramArrayOfECPoint == null) {
      throw new IllegalArgumentException("'points' cannot be null");
    }
    int i = 0;
    while (i < paramArrayOfECPoint.length)
    {
      ECPoint localECPoint = paramArrayOfECPoint[i];
      if ((localECPoint != null) && (this != localECPoint.iv())) {
        throw new IllegalArgumentException("'points' entries must be null or on this curve");
      }
      i += 1;
    }
  }
  
  public ECPoint ˏ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    paramBigInteger1 = ᐝ(paramBigInteger1, paramBigInteger2);
    if (!paramBigInteger1.isValid()) {
      throw new IllegalArgumentException("Invalid point coordinates");
    }
    return paramBigInteger1;
  }
  
  public ECPoint ˏ(ECPoint paramECPoint)
  {
    if (this == paramECPoint.iv()) {
      return paramECPoint;
    }
    if (paramECPoint.pR()) {
      return pi();
    }
    paramECPoint = paramECPoint.pQ();
    return ˊ(paramECPoint.pJ().toBigInteger(), paramECPoint.pK().toBigInteger(), paramECPoint.aWJ);
  }
  
  public ECPoint ᐝ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    return ˋ(paramBigInteger1, paramBigInteger2, false);
  }
  
  protected void ᐝ(ECPoint paramECPoint)
  {
    if ((paramECPoint == null) || (this != paramECPoint.iv())) {
      throw new IllegalArgumentException("'point' must be non-null and on this curve");
    }
  }
  
  public ECPoint ᕁ(byte[] paramArrayOfByte)
  {
    int i = (getFieldSize() + 7) / 8;
    int j = paramArrayOfByte[0];
    Object localObject;
    switch (j)
    {
    default: 
      break;
    case 0: 
      if (paramArrayOfByte.length != 1) {
        throw new IllegalArgumentException("Incorrect length for infinity encoding");
      }
      paramArrayOfByte = pi();
      break;
    case 2: 
    case 3: 
      if (paramArrayOfByte.length != i + 1) {
        throw new IllegalArgumentException("Incorrect length for compressed encoding");
      }
      localObject = ˋ(j & 0x1, BigIntegers.ᐩ(paramArrayOfByte, 1, i));
      paramArrayOfByte = (byte[])localObject;
      if (((ECPoint)localObject).pC()) {
        break label309;
      }
      throw new IllegalArgumentException("Invalid point");
    case 4: 
      if (paramArrayOfByte.length != i * 2 + 1) {
        throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
      }
      paramArrayOfByte = ˏ(BigIntegers.ᐩ(paramArrayOfByte, 1, i), BigIntegers.ᐩ(paramArrayOfByte, i + 1, i));
      break;
    case 6: 
    case 7: 
      if (paramArrayOfByte.length != i * 2 + 1) {
        throw new IllegalArgumentException("Incorrect length for hybrid encoding");
      }
      localObject = BigIntegers.ᐩ(paramArrayOfByte, 1, i);
      paramArrayOfByte = BigIntegers.ᐩ(paramArrayOfByte, i + 1, i);
      boolean bool2 = paramArrayOfByte.testBit(0);
      boolean bool1;
      if (j == 7) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 != bool1) {
        throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
      }
      paramArrayOfByte = ˏ((BigInteger)localObject, paramArrayOfByte);
      break;
    }
    throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(j, 16));
    label309:
    if ((j != 0) && (paramArrayOfByte.pR())) {
      throw new IllegalArgumentException("Invalid infinity encoding");
    }
    return paramArrayOfByte;
  }
  
  public abstract ECFieldElement ι(BigInteger paramBigInteger);
  
  public boolean ﭨ(int paramInt)
  {
    return paramInt == 0;
  }
  
  public static abstract class AbstractF2m
    extends ECCurve
  {
    protected AbstractF2m(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super();
    }
    
    private static FiniteField ᵎ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      if (paramInt2 == 0) {
        throw new IllegalArgumentException("k1 must be > 0");
      }
      if (paramInt3 == 0)
      {
        if (paramInt4 != 0) {
          throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
        }
        return FiniteFields.ـ(new int[] { 0, paramInt2, paramInt1 });
      }
      if (paramInt3 <= paramInt2) {
        throw new IllegalArgumentException("k2 must be > k1");
      }
      if (paramInt4 <= paramInt3) {
        throw new IllegalArgumentException("k3 must be > k2");
      }
      return FiniteFields.ـ(new int[] { 0, paramInt2, paramInt3, paramInt4, paramInt1 });
    }
  }
  
  public static abstract class AbstractFp
    extends ECCurve
  {
    public AbstractFp(BigInteger paramBigInteger)
    {
      super();
    }
    
    protected ECPoint ˋ(int paramInt, BigInteger paramBigInteger)
    {
      ECFieldElement localECFieldElement2 = ι(paramBigInteger);
      ECFieldElement localECFieldElement1 = localECFieldElement2.px().ˏ(this.bck).ʻ(localECFieldElement2).ˏ(this.bcl).pz();
      if (localECFieldElement1 == null) {
        throw new IllegalArgumentException("Invalid point compression");
      }
      boolean bool2 = localECFieldElement1.pB();
      boolean bool1;
      if (paramInt == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      paramBigInteger = localECFieldElement1;
      if (bool2 != bool1) {
        paramBigInteger = localECFieldElement1.pw();
      }
      return ˊ(localECFieldElement2, paramBigInteger, true);
    }
  }
  
  public class Config
  {
    protected int bco;
    protected ECEndomorphism bcp;
    protected ECMultiplier bcq;
    
    Config(int paramInt, ECEndomorphism paramECEndomorphism, ECMultiplier paramECMultiplier)
    {
      this.bco = paramInt;
      this.bcp = paramECEndomorphism;
      this.bcq = paramECMultiplier;
    }
    
    public ECCurve pq()
    {
      if (!ECCurve.this.ﭨ(this.bco)) {
        throw new IllegalStateException("unsupported coordinate system");
      }
      ECCurve localECCurve = ECCurve.this.pg();
      if (localECCurve == ECCurve.this) {
        throw new IllegalStateException("implementation returned current curve");
      }
      localECCurve.bco = this.bco;
      localECCurve.bcp = this.bcp;
      localECCurve.bcq = this.bcq;
      return localECCurve;
    }
    
    public Config ˊ(ECEndomorphism paramECEndomorphism)
    {
      this.bcp = paramECEndomorphism;
      return this;
    }
    
    public Config ﮢ(int paramInt)
    {
      this.bco = paramInt;
      return this;
    }
  }
  
  public static class F2m
    extends ECCurve.AbstractF2m
  {
    private int aOe;
    private int aOf;
    private int aOg;
    private int avL;
    private ECPoint.F2m bcs;
    private byte bct = 0;
    private BigInteger[] bcu = null;
    
    public F2m(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      this(paramInt1, paramInt2, paramInt3, paramInt4, paramBigInteger1, paramBigInteger2, null, null);
    }
    
    public F2m(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4)
    {
      super(paramInt2, paramInt3, paramInt4);
      this.avL = paramInt1;
      this.aOe = paramInt2;
      this.aOf = paramInt3;
      this.aOg = paramInt4;
      this.bcm = paramBigInteger3;
      this.bcn = paramBigInteger4;
      this.bcs = new ECPoint.F2m(this, null, null);
      this.bck = ι(paramBigInteger1);
      this.bcl = ι(paramBigInteger2);
      this.bco = 6;
    }
    
    protected F2m(int paramInt1, int paramInt2, int paramInt3, int paramInt4, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      super(paramInt2, paramInt3, paramInt4);
      this.avL = paramInt1;
      this.aOe = paramInt2;
      this.aOf = paramInt3;
      this.aOg = paramInt4;
      this.bcm = paramBigInteger1;
      this.bcn = paramBigInteger2;
      this.bcs = new ECPoint.F2m(this, null, null);
      this.bck = paramECFieldElement1;
      this.bcl = paramECFieldElement2;
      this.bco = 6;
    }
    
    public F2m(int paramInt1, int paramInt2, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4)
    {
      this(paramInt1, paramInt2, 0, 0, paramBigInteger1, paramBigInteger2, paramBigInteger3, paramBigInteger4);
    }
    
    private ECFieldElement ˎ(ECFieldElement paramECFieldElement)
    {
      if (paramECFieldElement.isZero()) {
        return paramECFieldElement;
      }
      ECFieldElement localECFieldElement3 = ι(ECConstants.ZERO);
      Random localRandom = new Random();
      ECFieldElement localECFieldElement1;
      do
      {
        ECFieldElement localECFieldElement4 = ι(new BigInteger(this.avL, localRandom));
        localECFieldElement1 = localECFieldElement3;
        ECFieldElement localECFieldElement2 = paramECFieldElement;
        int i = 1;
        while (i <= this.avL - 1)
        {
          localECFieldElement2 = localECFieldElement2.px();
          localECFieldElement1 = localECFieldElement1.px().ˏ(localECFieldElement2.ʻ(localECFieldElement4));
          localECFieldElement2 = localECFieldElement2.ˏ(paramECFieldElement);
          i += 1;
        }
        if (!localECFieldElement2.isZero()) {
          return null;
        }
      } while (localECFieldElement1.px().ˏ(localECFieldElement1).isZero());
      return localECFieldElement1;
    }
    
    public int getFieldSize()
    {
      return this.avL;
    }
    
    public int getM()
    {
      return this.avL;
    }
    
    public int gt()
    {
      return this.aOe;
    }
    
    public int gu()
    {
      return this.aOf;
    }
    
    public int gv()
    {
      return this.aOg;
    }
    
    protected ECCurve pg()
    {
      return new F2m(this.avL, this.aOe, this.aOf, this.aOg, this.bck, this.bcl, this.bcm, this.bcn);
    }
    
    protected ECMultiplier ph()
    {
      if (pr()) {
        return new WTauNafMultiplier();
      }
      return super.ph();
    }
    
    public ECPoint pi()
    {
      return this.bcs;
    }
    
    public boolean pr()
    {
      return (this.bcm != null) && (this.bcn != null) && (this.bcl.pA()) && ((this.bck.isZero()) || (this.bck.pA()));
    }
    
    byte ps()
    {
      try
      {
        if (this.bct == 0) {
          this.bct = Tnaf.ˊ(this);
        }
        byte b = this.bct;
        return b;
      }
      finally {}
    }
    
    BigInteger[] pt()
    {
      try
      {
        if (this.bcu == null) {
          this.bcu = Tnaf.ˋ(this);
        }
        BigInteger[] arrayOfBigInteger = this.bcu;
        return arrayOfBigInteger;
      }
      finally {}
    }
    
    public boolean pu()
    {
      return (this.aOf == 0) && (this.aOg == 0);
    }
    
    protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
    {
      return new ECPoint.F2m(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
    }
    
    protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
    {
      return new ECPoint.F2m(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
    }
    
    protected ECPoint ˋ(int paramInt, BigInteger paramBigInteger)
    {
      ECFieldElement localECFieldElement2 = ι(paramBigInteger);
      paramBigInteger = null;
      if (localECFieldElement2.isZero())
      {
        paramBigInteger = this.bcl.pz();
      }
      else
      {
        ECFieldElement localECFieldElement1 = ˎ(localECFieldElement2.px().py().ʻ(this.bcl).ˏ(this.bck).ˏ(localECFieldElement2));
        if (localECFieldElement1 != null)
        {
          boolean bool2 = localECFieldElement1.pB();
          boolean bool1;
          if (paramInt == 1) {
            bool1 = true;
          } else {
            bool1 = false;
          }
          paramBigInteger = localECFieldElement1;
          if (bool2 != bool1) {
            paramBigInteger = localECFieldElement1.pv();
          }
          switch (pn())
          {
          default: 
            break;
          case 5: 
          case 6: 
            paramBigInteger = paramBigInteger.ˏ(localECFieldElement2);
            break;
          }
          paramBigInteger = paramBigInteger.ʻ(localECFieldElement2);
        }
      }
      if (paramBigInteger == null) {
        throw new IllegalArgumentException("Invalid point compression");
      }
      return ˊ(localECFieldElement2, paramBigInteger, true);
    }
    
    public ECPoint ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, boolean paramBoolean)
    {
      ECFieldElement localECFieldElement = ι(paramBigInteger1);
      paramBigInteger2 = ι(paramBigInteger2);
      switch (pn())
      {
      default: 
        paramBigInteger1 = paramBigInteger2;
        break;
      case 5: 
      case 6: 
        if (localECFieldElement.isZero())
        {
          paramBigInteger1 = paramBigInteger2;
          if (!paramBigInteger2.px().equals(pl())) {
            throw new IllegalArgumentException();
          }
        }
        else
        {
          paramBigInteger1 = paramBigInteger2.ʼ(localECFieldElement).ˏ(localECFieldElement);
        }
        break;
      }
      return ˊ(localECFieldElement, paramBigInteger1, paramBoolean);
    }
    
    public ECFieldElement ι(BigInteger paramBigInteger)
    {
      return new ECFieldElement.F2m(this.avL, this.aOe, this.aOf, this.aOg, paramBigInteger);
    }
    
    public boolean ﭨ(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        break;
      case 0: 
      case 1: 
      case 6: 
        return true;
      }
      return false;
    }
  }
  
  public static class Fp
    extends ECCurve.AbstractFp
  {
    BigInteger aFA;
    BigInteger bcv;
    ECPoint.Fp bcw;
    
    public Fp(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
    {
      this(paramBigInteger1, paramBigInteger2, paramBigInteger3, null, null);
    }
    
    public Fp(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, BigInteger paramBigInteger5)
    {
      super();
      this.aFA = paramBigInteger1;
      this.bcv = ECFieldElement.Fp.ʾ(paramBigInteger1);
      this.bcw = new ECPoint.Fp(this, null, null);
      this.bck = ι(paramBigInteger2);
      this.bcl = ι(paramBigInteger3);
      this.bcm = paramBigInteger4;
      this.bcn = paramBigInteger5;
      this.bco = 4;
    }
    
    protected Fp(BigInteger paramBigInteger1, BigInteger paramBigInteger2, ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, BigInteger paramBigInteger3, BigInteger paramBigInteger4)
    {
      super();
      this.aFA = paramBigInteger1;
      this.bcv = paramBigInteger2;
      this.bcw = new ECPoint.Fp(this, null, null);
      this.bck = paramECFieldElement1;
      this.bcl = paramECFieldElement2;
      this.bcm = paramBigInteger3;
      this.bcn = paramBigInteger4;
      this.bco = 4;
    }
    
    public int getFieldSize()
    {
      return this.aFA.bitLength();
    }
    
    protected ECCurve pg()
    {
      return new Fp(this.aFA, this.bcv, this.bck, this.bcl, this.bcm, this.bcn);
    }
    
    public ECPoint pi()
    {
      return this.bcw;
    }
    
    protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
    {
      return new ECPoint.Fp(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
    }
    
    protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
    {
      return new ECPoint.Fp(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
    }
    
    public ECPoint ˏ(ECPoint paramECPoint)
    {
      if ((this != paramECPoint.iv()) && (pn() == 2) && (!paramECPoint.pR())) {
        switch (paramECPoint.iv().pn())
        {
        default: 
          break;
        case 2: 
        case 3: 
        case 4: 
          ECFieldElement localECFieldElement1 = ι(paramECPoint.bcB.toBigInteger());
          ECFieldElement localECFieldElement2 = ι(paramECPoint.bcC.toBigInteger());
          ECFieldElement localECFieldElement3 = ι(paramECPoint.bcD[0].toBigInteger());
          boolean bool = paramECPoint.aWJ;
          return new ECPoint.Fp(this, localECFieldElement1, localECFieldElement2, new ECFieldElement[] { localECFieldElement3 }, bool);
        }
      }
      return super.ˏ(paramECPoint);
    }
    
    public ECFieldElement ι(BigInteger paramBigInteger)
    {
      return new ECFieldElement.Fp(this.aFA, this.bcv, paramBigInteger);
    }
    
    public boolean ﭨ(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        break;
      case 0: 
      case 1: 
      case 2: 
      case 4: 
        return true;
      }
      return false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ECCurve
 * JD-Core Version:    0.7.0.1
 */