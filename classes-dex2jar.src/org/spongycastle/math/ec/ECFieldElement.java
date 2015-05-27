package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;

public abstract class ECFieldElement
  implements ECConstants
{
  public int bitLength()
  {
    return toBigInteger().bitLength();
  }
  
  public byte[] getEncoded()
  {
    return BigIntegers.ʻ((getFieldSize() + 7) / 8, toBigInteger());
  }
  
  public abstract int getFieldSize();
  
  public boolean isZero()
  {
    return toBigInteger().signum() == 0;
  }
  
  public boolean pA()
  {
    return bitLength() == 1;
  }
  
  public boolean pB()
  {
    return toBigInteger().testBit(0);
  }
  
  public abstract ECFieldElement pv();
  
  public abstract ECFieldElement pw();
  
  public abstract ECFieldElement px();
  
  public abstract ECFieldElement py();
  
  public abstract ECFieldElement pz();
  
  public abstract BigInteger toBigInteger();
  
  public String toString()
  {
    return toBigInteger().toString(16);
  }
  
  public abstract ECFieldElement ʻ(ECFieldElement paramECFieldElement);
  
  public abstract ECFieldElement ʼ(ECFieldElement paramECFieldElement);
  
  public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
  {
    return px().ˏ(paramECFieldElement1.ʻ(paramECFieldElement2));
  }
  
  public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
  {
    return ʻ(paramECFieldElement1).ᐝ(paramECFieldElement2.ʻ(paramECFieldElement3));
  }
  
  public ECFieldElement ˋ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
  {
    return ʻ(paramECFieldElement1).ˏ(paramECFieldElement2.ʻ(paramECFieldElement3));
  }
  
  public abstract ECFieldElement ˏ(ECFieldElement paramECFieldElement);
  
  public abstract ECFieldElement ᐝ(ECFieldElement paramECFieldElement);
  
  public static class F2m
    extends ECFieldElement
  {
    private int avL;
    private int bcx;
    private int[] bcy;
    private LongArray bcz;
    
    public F2m(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BigInteger paramBigInteger)
    {
      if ((paramInt3 == 0) && (paramInt4 == 0))
      {
        this.bcx = 2;
        this.bcy = new int[] { paramInt2 };
      }
      else
      {
        if (paramInt3 >= paramInt4) {
          throw new IllegalArgumentException("k2 must be smaller than k3");
        }
        if (paramInt3 <= 0) {
          throw new IllegalArgumentException("k2 must be larger than 0");
        }
        this.bcx = 3;
        this.bcy = new int[] { paramInt2, paramInt3, paramInt4 };
      }
      this.avL = paramInt1;
      this.bcz = new LongArray(paramBigInteger);
    }
    
    private F2m(int paramInt, int[] paramArrayOfInt, LongArray paramLongArray)
    {
      this.avL = paramInt;
      if (paramArrayOfInt.length == 1) {
        paramInt = 2;
      } else {
        paramInt = 3;
      }
      this.bcx = paramInt;
      this.bcy = paramArrayOfInt;
      this.bcz = paramLongArray;
    }
    
    public static void ˋ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      if ((!(paramECFieldElement1 instanceof F2m)) || (!(paramECFieldElement2 instanceof F2m))) {
        throw new IllegalArgumentException("Field elements are not both instances of ECFieldElement.F2m");
      }
      paramECFieldElement1 = (F2m)paramECFieldElement1;
      paramECFieldElement2 = (F2m)paramECFieldElement2;
      if (paramECFieldElement1.bcx != paramECFieldElement2.bcx) {
        throw new IllegalArgumentException("One of the F2m field elements has incorrect representation");
      }
      if ((paramECFieldElement1.avL != paramECFieldElement2.avL) || (!Arrays.ՙ(paramECFieldElement1.bcy, paramECFieldElement2.bcy))) {
        throw new IllegalArgumentException("Field elements are not elements of the same field F2m");
      }
    }
    
    public int bitLength()
    {
      return this.bcz.qa();
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof F2m)) {
        return false;
      }
      paramObject = (F2m)paramObject;
      return (this.avL == paramObject.avL) && (this.bcx == paramObject.bcx) && (Arrays.ՙ(this.bcy, paramObject.bcy)) && (this.bcz.equals(paramObject.bcz));
    }
    
    public int getFieldSize()
    {
      return this.avL;
    }
    
    public int hashCode()
    {
      return this.bcz.hashCode() ^ this.avL ^ Arrays.hashCode(this.bcy);
    }
    
    public boolean isZero()
    {
      return this.bcz.isZero();
    }
    
    public boolean pA()
    {
      return this.bcz.pA();
    }
    
    public boolean pB()
    {
      return this.bcz.pB();
    }
    
    public ECFieldElement pv()
    {
      return new F2m(this.avL, this.bcy, this.bcz.qb());
    }
    
    public ECFieldElement pw()
    {
      return this;
    }
    
    public ECFieldElement px()
    {
      return new F2m(this.avL, this.bcy, this.bcz.ˎ(this.avL, this.bcy));
    }
    
    public ECFieldElement py()
    {
      return new F2m(this.avL, this.bcy, this.bcz.ᐝ(this.avL, this.bcy));
    }
    
    public ECFieldElement pz()
    {
      LongArray localLongArray = this.bcz;
      if ((localLongArray.pA()) || (localLongArray.isZero())) {
        return this;
      }
      localLongArray = localLongArray.ˏ(this.avL - 1, this.avL, this.bcy);
      return new F2m(this.avL, this.bcy, localLongArray);
    }
    
    public BigInteger toBigInteger()
    {
      return this.bcz.toBigInteger();
    }
    
    public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
    {
      return new F2m(this.avL, this.bcy, this.bcz.ˊ(((F2m)paramECFieldElement).bcz, this.avL, this.bcy));
    }
    
    public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
    {
      return ʻ(paramECFieldElement.py());
    }
    
    public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      LongArray localLongArray1 = this.bcz;
      paramECFieldElement1 = ((F2m)paramECFieldElement1).bcz;
      LongArray localLongArray2 = ((F2m)paramECFieldElement2).bcz;
      paramECFieldElement2 = localLongArray1.ˏ(this.avL, this.bcy);
      localLongArray2 = paramECFieldElement1.ˋ(localLongArray2, this.avL, this.bcy);
      paramECFieldElement1 = paramECFieldElement2;
      if (paramECFieldElement2 == localLongArray1) {
        paramECFieldElement1 = (LongArray)paramECFieldElement2.clone();
      }
      paramECFieldElement1.ˊ(localLongArray2, 0);
      paramECFieldElement1.ˋ(this.avL, this.bcy);
      return new F2m(this.avL, this.bcy, paramECFieldElement1);
    }
    
    public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
    {
      return ˋ(paramECFieldElement1, paramECFieldElement2, paramECFieldElement3);
    }
    
    public ECFieldElement ˋ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
    {
      LongArray localLongArray1 = this.bcz;
      LongArray localLongArray2 = ((F2m)paramECFieldElement1).bcz;
      paramECFieldElement1 = ((F2m)paramECFieldElement2).bcz;
      paramECFieldElement3 = ((F2m)paramECFieldElement3).bcz;
      paramECFieldElement2 = localLongArray1.ˋ(localLongArray2, this.avL, this.bcy);
      paramECFieldElement3 = paramECFieldElement1.ˋ(paramECFieldElement3, this.avL, this.bcy);
      if (paramECFieldElement2 != localLongArray1)
      {
        paramECFieldElement1 = paramECFieldElement2;
        if (paramECFieldElement2 != localLongArray2) {}
      }
      else
      {
        paramECFieldElement1 = (LongArray)paramECFieldElement2.clone();
      }
      paramECFieldElement1.ˊ(paramECFieldElement3, 0);
      paramECFieldElement1.ˋ(this.avL, this.bcy);
      return new F2m(this.avL, this.bcy, paramECFieldElement1);
    }
    
    public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
    {
      LongArray localLongArray = (LongArray)this.bcz.clone();
      localLongArray.ˊ(((F2m)paramECFieldElement).bcz, 0);
      return new F2m(this.avL, this.bcy, localLongArray);
    }
    
    public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
    {
      return ˏ(paramECFieldElement);
    }
  }
  
  public static class Fp
    extends ECFieldElement
  {
    BigInteger aFA;
    BigInteger aFO;
    BigInteger bcv;
    
    public Fp(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      this(paramBigInteger1, ʾ(paramBigInteger1), paramBigInteger2);
    }
    
    Fp(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
    {
      if ((paramBigInteger3 == null) || (paramBigInteger3.signum() < 0) || (paramBigInteger3.compareTo(paramBigInteger1) >= 0)) {
        throw new IllegalArgumentException("x value invalid in Fp field element");
      }
      this.aFA = paramBigInteger1;
      this.bcv = paramBigInteger2;
      this.aFO = paramBigInteger3;
    }
    
    private ECFieldElement ʽ(ECFieldElement paramECFieldElement)
    {
      if (paramECFieldElement.px().equals(this)) {
        return paramECFieldElement;
      }
      return null;
    }
    
    static BigInteger ʾ(BigInteger paramBigInteger)
    {
      int i = paramBigInteger.bitLength();
      if ((i >= 96) && (paramBigInteger.shiftRight(i - 64).longValue() == -1L)) {
        return ONE.shiftLeft(i).subtract(paramBigInteger);
      }
      return null;
    }
    
    private BigInteger[] ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
    {
      int i = paramBigInteger3.bitLength();
      int j = paramBigInteger3.getLowestSetBit();
      BigInteger localBigInteger4 = ECConstants.ONE;
      BigInteger localBigInteger3 = ECConstants.aKc;
      BigInteger localBigInteger2 = paramBigInteger1;
      BigInteger localBigInteger5 = ECConstants.ONE;
      BigInteger localBigInteger1 = ECConstants.ONE;
      i -= 1;
      while (i >= j + 1)
      {
        localBigInteger5 = ʼ(localBigInteger5, localBigInteger1);
        if (paramBigInteger3.testBit(i))
        {
          localBigInteger1 = ʼ(localBigInteger5, paramBigInteger2);
          localBigInteger4 = ʼ(localBigInteger4, localBigInteger2);
          localBigInteger3 = ˉ(localBigInteger2.multiply(localBigInteger3).subtract(paramBigInteger1.multiply(localBigInteger5)));
          localBigInteger2 = ˉ(localBigInteger2.multiply(localBigInteger2).subtract(localBigInteger1.shiftLeft(1)));
        }
        else
        {
          localBigInteger1 = localBigInteger5;
          localBigInteger4 = ˉ(localBigInteger4.multiply(localBigInteger3).subtract(localBigInteger5));
          localBigInteger2 = ˉ(localBigInteger2.multiply(localBigInteger3).subtract(paramBigInteger1.multiply(localBigInteger5)));
          localBigInteger3 = ˉ(localBigInteger3.multiply(localBigInteger3).subtract(localBigInteger5.shiftLeft(1)));
        }
        i -= 1;
      }
      localBigInteger1 = ʼ(localBigInteger5, localBigInteger1);
      localBigInteger5 = ʼ(localBigInteger1, paramBigInteger2);
      paramBigInteger3 = ˉ(localBigInteger4.multiply(localBigInteger3).subtract(localBigInteger1));
      paramBigInteger2 = ˉ(localBigInteger2.multiply(localBigInteger3).subtract(paramBigInteger1.multiply(localBigInteger1)));
      paramBigInteger1 = ʼ(localBigInteger1, localBigInteger5);
      i = 1;
      while (i <= j)
      {
        paramBigInteger3 = ʼ(paramBigInteger3, paramBigInteger2);
        paramBigInteger2 = ˉ(paramBigInteger2.multiply(paramBigInteger2).subtract(paramBigInteger1.shiftLeft(1)));
        paramBigInteger1 = ʼ(paramBigInteger1, paramBigInteger1);
        i += 1;
      }
      return new BigInteger[] { paramBigInteger3, paramBigInteger2 };
    }
    
    public boolean equals(Object paramObject)
    {
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof Fp)) {
        return false;
      }
      paramObject = (Fp)paramObject;
      return (this.aFA.equals(paramObject.aFA)) && (this.aFO.equals(paramObject.aFO));
    }
    
    public int getFieldSize()
    {
      return this.aFA.bitLength();
    }
    
    public int hashCode()
    {
      return this.aFA.hashCode() ^ this.aFO.hashCode();
    }
    
    protected BigInteger modInverse(BigInteger paramBigInteger)
    {
      int i = getFieldSize();
      int j = i + 31 >> 5;
      int[] arrayOfInt1 = Nat.ᐝ(i, this.aFA);
      paramBigInteger = Nat.ᐝ(i, paramBigInteger);
      int[] arrayOfInt2 = Nat.ċ(j);
      Mod.ͺ(arrayOfInt1, paramBigInteger, arrayOfInt2);
      return Nat.ˉ(j, arrayOfInt2);
    }
    
    public ECFieldElement pv()
    {
      BigInteger localBigInteger2 = this.aFO.add(ECConstants.ONE);
      BigInteger localBigInteger1 = localBigInteger2;
      if (localBigInteger2.compareTo(this.aFA) == 0) {
        localBigInteger1 = ECConstants.ZERO;
      }
      return new Fp(this.aFA, this.bcv, localBigInteger1);
    }
    
    public ECFieldElement pw()
    {
      if (this.aFO.signum() == 0) {
        return this;
      }
      return new Fp(this.aFA, this.bcv, this.aFA.subtract(this.aFO));
    }
    
    public ECFieldElement px()
    {
      return new Fp(this.aFA, this.bcv, ʼ(this.aFO, this.aFO));
    }
    
    public ECFieldElement py()
    {
      return new Fp(this.aFA, this.bcv, modInverse(this.aFO));
    }
    
    public ECFieldElement pz()
    {
      if ((isZero()) || (pA())) {
        return this;
      }
      if (!this.aFA.testBit(0)) {
        throw new RuntimeException("not done yet");
      }
      if (this.aFA.testBit(1))
      {
        localBigInteger1 = this.aFA.shiftRight(2).add(ECConstants.ONE);
        return ʽ(new Fp(this.aFA, this.bcv, this.aFO.modPow(localBigInteger1, this.aFA)));
      }
      if (this.aFA.testBit(2))
      {
        localBigInteger1 = this.aFO.modPow(this.aFA.shiftRight(3), this.aFA);
        localBigInteger2 = ʼ(localBigInteger1, this.aFO);
        if (ʼ(localBigInteger2, localBigInteger1).equals(ECConstants.ONE)) {
          return ʽ(new Fp(this.aFA, this.bcv, localBigInteger2));
        }
        localBigInteger1 = ʼ(localBigInteger2, ECConstants.aKc.modPow(this.aFA.shiftRight(2), this.aFA));
        return ʽ(new Fp(this.aFA, this.bcv, localBigInteger1));
      }
      BigInteger localBigInteger1 = this.aFA.shiftRight(1);
      if (!this.aFO.modPow(localBigInteger1, this.aFA).equals(ECConstants.ONE)) {
        return null;
      }
      BigInteger localBigInteger2 = this.aFO;
      BigInteger localBigInteger3 = ʿ(ʿ(localBigInteger2));
      BigInteger localBigInteger4 = localBigInteger1.add(ECConstants.ONE);
      BigInteger localBigInteger5 = this.aFA.subtract(ECConstants.ONE);
      Random localRandom = new Random();
      BigInteger localBigInteger6;
      do
      {
        do
        {
          localBigInteger6 = new BigInteger(this.aFA.bitLength(), localRandom);
        } while ((localBigInteger6.compareTo(this.aFA) >= 0) || (!ˉ(localBigInteger6.multiply(localBigInteger6).subtract(localBigInteger3)).modPow(localBigInteger1, this.aFA).equals(localBigInteger5)));
        Object localObject = ˋ(localBigInteger6, localBigInteger2, localBigInteger4);
        localBigInteger6 = localObject[0];
        localObject = localObject[1];
        if (ʼ((BigInteger)localObject, (BigInteger)localObject).equals(localBigInteger3)) {
          return new Fp(this.aFA, this.bcv, ˈ((BigInteger)localObject));
        }
      } while ((localBigInteger6.equals(ECConstants.ONE)) || (localBigInteger6.equals(localBigInteger5)));
      return null;
    }
    
    public BigInteger toBigInteger()
    {
      return this.aFO;
    }
    
    protected BigInteger ʻ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      paramBigInteger2 = paramBigInteger1.add(paramBigInteger2);
      paramBigInteger1 = paramBigInteger2;
      if (paramBigInteger2.compareTo(this.aFA) >= 0) {
        paramBigInteger1 = paramBigInteger2.subtract(this.aFA);
      }
      return paramBigInteger1;
    }
    
    public ECFieldElement ʻ(ECFieldElement paramECFieldElement)
    {
      return new Fp(this.aFA, this.bcv, ʼ(this.aFO, paramECFieldElement.toBigInteger()));
    }
    
    protected BigInteger ʼ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      return ˉ(paramBigInteger1.multiply(paramBigInteger2));
    }
    
    public ECFieldElement ʼ(ECFieldElement paramECFieldElement)
    {
      return new Fp(this.aFA, this.bcv, ʼ(this.aFO, modInverse(paramECFieldElement.toBigInteger())));
    }
    
    protected BigInteger ʽ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      paramBigInteger2 = paramBigInteger1.subtract(paramBigInteger2);
      paramBigInteger1 = paramBigInteger2;
      if (paramBigInteger2.signum() < 0) {
        paramBigInteger1 = paramBigInteger2.add(this.aFA);
      }
      return paramBigInteger1;
    }
    
    protected BigInteger ʿ(BigInteger paramBigInteger)
    {
      BigInteger localBigInteger = paramBigInteger.shiftLeft(1);
      paramBigInteger = localBigInteger;
      if (localBigInteger.compareTo(this.aFA) >= 0) {
        paramBigInteger = localBigInteger.subtract(this.aFA);
      }
      return paramBigInteger;
    }
    
    protected BigInteger ˈ(BigInteger paramBigInteger)
    {
      BigInteger localBigInteger = paramBigInteger;
      if (paramBigInteger.testBit(0)) {
        localBigInteger = this.aFA.subtract(paramBigInteger);
      }
      return localBigInteger.shiftRight(1);
    }
    
    protected BigInteger ˉ(BigInteger paramBigInteger)
    {
      if (this.bcv != null)
      {
        int i;
        if (paramBigInteger.signum() < 0) {
          i = 1;
        } else {
          i = 0;
        }
        BigInteger localBigInteger1 = paramBigInteger;
        if (i != 0) {
          localBigInteger1 = paramBigInteger.abs();
        }
        int j = this.aFA.bitLength();
        boolean bool = this.bcv.equals(ECConstants.ONE);
        BigInteger localBigInteger2;
        for (paramBigInteger = localBigInteger1;; paramBigInteger = paramBigInteger.add(localBigInteger2))
        {
          localBigInteger1 = paramBigInteger;
          if (paramBigInteger.bitLength() <= j + 1) {
            break;
          }
          localBigInteger1 = paramBigInteger.shiftRight(j);
          localBigInteger2 = paramBigInteger.subtract(localBigInteger1.shiftLeft(j));
          paramBigInteger = localBigInteger1;
          if (!bool) {
            paramBigInteger = localBigInteger1.multiply(this.bcv);
          }
        }
        while (localBigInteger1.compareTo(this.aFA) >= 0) {
          localBigInteger1 = localBigInteger1.subtract(this.aFA);
        }
        paramBigInteger = localBigInteger1;
        if (i != 0)
        {
          paramBigInteger = localBigInteger1;
          if (localBigInteger1.signum() != 0) {
            paramBigInteger = this.aFA.subtract(localBigInteger1);
          }
        }
        return paramBigInteger;
      }
      return paramBigInteger.mod(this.aFA);
    }
    
    public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2)
    {
      BigInteger localBigInteger = this.aFO;
      paramECFieldElement1 = paramECFieldElement1.toBigInteger();
      paramECFieldElement2 = paramECFieldElement2.toBigInteger();
      localBigInteger = localBigInteger.multiply(localBigInteger);
      paramECFieldElement1 = paramECFieldElement1.multiply(paramECFieldElement2);
      return new Fp(this.aFA, this.bcv, ˉ(localBigInteger.add(paramECFieldElement1)));
    }
    
    public ECFieldElement ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
    {
      BigInteger localBigInteger = this.aFO;
      paramECFieldElement1 = paramECFieldElement1.toBigInteger();
      paramECFieldElement2 = paramECFieldElement2.toBigInteger();
      paramECFieldElement3 = paramECFieldElement3.toBigInteger();
      paramECFieldElement1 = localBigInteger.multiply(paramECFieldElement1);
      paramECFieldElement2 = paramECFieldElement2.multiply(paramECFieldElement3);
      return new Fp(this.aFA, this.bcv, ˉ(paramECFieldElement1.subtract(paramECFieldElement2)));
    }
    
    public ECFieldElement ˋ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement paramECFieldElement3)
    {
      BigInteger localBigInteger = this.aFO;
      paramECFieldElement1 = paramECFieldElement1.toBigInteger();
      paramECFieldElement2 = paramECFieldElement2.toBigInteger();
      paramECFieldElement3 = paramECFieldElement3.toBigInteger();
      paramECFieldElement1 = localBigInteger.multiply(paramECFieldElement1);
      paramECFieldElement2 = paramECFieldElement2.multiply(paramECFieldElement3);
      return new Fp(this.aFA, this.bcv, ˉ(paramECFieldElement1.add(paramECFieldElement2)));
    }
    
    public ECFieldElement ˏ(ECFieldElement paramECFieldElement)
    {
      return new Fp(this.aFA, this.bcv, ʻ(this.aFO, paramECFieldElement.toBigInteger()));
    }
    
    public ECFieldElement ᐝ(ECFieldElement paramECFieldElement)
    {
      return new Fp(this.aFA, this.bcv, ʽ(this.aFO, paramECFieldElement.toBigInteger()));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ECFieldElement
 * JD-Core Version:    0.7.0.1
 */