package org.spongycastle.math.ec;

import java.math.BigInteger;

class Tnaf
{
  private static final BigInteger bcT = ECConstants.ONE.negate();
  private static final BigInteger bcU = ECConstants.aKc.negate();
  private static final BigInteger bcV = ECConstants.bch.negate();
  public static final ZTauElement[] bcW = { null, new ZTauElement(ECConstants.ONE, ECConstants.ZERO), null, new ZTauElement(bcV, bcT), null, new ZTauElement(bcT, bcT), null, new ZTauElement(ECConstants.ONE, bcT), null };
  public static final byte[][] bcX;
  public static final ZTauElement[] bcY;
  public static final byte[][] bcZ;
  
  static
  {
    byte[] arrayOfByte1 = { -1, 0, 0, 1 };
    bcX = new byte[][] { null, { 1 }, null, { -1, 0, 1 }, null, { 1, 0, 1 }, null, arrayOfByte1 };
    bcY = new ZTauElement[] { null, new ZTauElement(ECConstants.ONE, ECConstants.ZERO), null, new ZTauElement(bcV, ECConstants.ONE), null, new ZTauElement(bcT, ECConstants.ONE), null, new ZTauElement(ECConstants.ONE, ECConstants.ONE), null };
    arrayOfByte1 = new byte[] { -1, 0, 1 };
    byte[] arrayOfByte2 = { 1, 0, 1 };
    byte[] arrayOfByte3 = { -1, 0, 0, -1 };
    bcZ = new byte[][] { null, { 1 }, null, arrayOfByte1, null, arrayOfByte2, null, arrayOfByte3 };
  }
  
  public static byte ˊ(ECCurve.F2m paramF2m)
  {
    if (!paramF2m.pr()) {
      throw new IllegalArgumentException("No Koblitz curve (ABC), TNAF multiplication not possible");
    }
    if (paramF2m.pk().isZero()) {
      return -1;
    }
    return 1;
  }
  
  public static BigInteger ˊ(byte paramByte, ZTauElement paramZTauElement)
  {
    BigInteger localBigInteger1 = paramZTauElement.aFP.multiply(paramZTauElement.aFP);
    BigInteger localBigInteger2 = paramZTauElement.aFP.multiply(paramZTauElement.aJD);
    paramZTauElement = paramZTauElement.aJD.multiply(paramZTauElement.aJD).shiftLeft(1);
    if (paramByte == 1) {
      return localBigInteger1.add(localBigInteger2).add(paramZTauElement);
    }
    if (paramByte == -1) {
      return localBigInteger1.subtract(localBigInteger2).add(paramZTauElement);
    }
    throw new IllegalArgumentException("mu must be 1 or -1");
  }
  
  public static ECPoint.F2m ˊ(ECPoint.F2m paramF2m, byte[] paramArrayOfByte)
  {
    Object localObject = (ECPoint.F2m)((ECCurve.F2m)paramF2m.iv()).pi();
    int i = paramArrayOfByte.length - 1;
    while (i >= 0)
    {
      ECPoint.F2m localF2m = ˎ((ECPoint.F2m)localObject);
      if (paramArrayOfByte[i] == 1)
      {
        localObject = localF2m.ˊ(paramF2m);
      }
      else
      {
        localObject = localF2m;
        if (paramArrayOfByte[i] == -1) {
          localObject = localF2m.ˋ(paramF2m);
        }
      }
      i -= 1;
    }
    return localObject;
  }
  
  public static SimpleBigDecimal ˊ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, byte paramByte, int paramInt1, int paramInt2)
  {
    int i = (paramInt1 + 5) / 2 + paramInt2;
    paramBigInteger1 = paramBigInteger2.multiply(paramBigInteger1.shiftRight(paramInt1 - i - 2 + paramByte));
    paramBigInteger3 = paramBigInteger1.add(paramBigInteger3.multiply(paramBigInteger1.shiftRight(paramInt1)));
    paramBigInteger2 = paramBigInteger3.shiftRight(i - paramInt2);
    paramBigInteger1 = paramBigInteger2;
    if (paramBigInteger3.testBit(i - paramInt2 - 1)) {
      paramBigInteger1 = paramBigInteger2.add(ECConstants.ONE);
    }
    return new SimpleBigDecimal(paramBigInteger1, paramInt2);
  }
  
  public static ZTauElement ˊ(BigInteger paramBigInteger, int paramInt, byte paramByte1, BigInteger[] paramArrayOfBigInteger, byte paramByte2, byte paramByte3)
  {
    BigInteger localBigInteger;
    if (paramByte2 == 1) {
      localBigInteger = paramArrayOfBigInteger[0].add(paramArrayOfBigInteger[1]);
    } else {
      localBigInteger = paramArrayOfBigInteger[0].subtract(paramArrayOfBigInteger[1]);
    }
    Object localObject = ˊ(paramByte2, paramInt, true)[1];
    localObject = ˊ(ˊ(paramBigInteger, paramArrayOfBigInteger[0], (BigInteger)localObject, paramByte1, paramInt, paramByte3), ˊ(paramBigInteger, paramArrayOfBigInteger[1], (BigInteger)localObject, paramByte1, paramInt, paramByte3), paramByte2);
    return new ZTauElement(paramBigInteger.subtract(localBigInteger.multiply(((ZTauElement)localObject).aFP)).subtract(BigInteger.valueOf(2L).multiply(paramArrayOfBigInteger[1]).multiply(((ZTauElement)localObject).aJD)), paramArrayOfBigInteger[1].multiply(((ZTauElement)localObject).aFP).subtract(paramArrayOfBigInteger[0].multiply(((ZTauElement)localObject).aJD)));
  }
  
  public static ZTauElement ˊ(SimpleBigDecimal paramSimpleBigDecimal1, SimpleBigDecimal paramSimpleBigDecimal2, byte paramByte)
  {
    int i = paramSimpleBigDecimal1.qf();
    if (paramSimpleBigDecimal2.qf() != i) {
      throw new IllegalArgumentException("lambda0 and lambda1 do not have same scale");
    }
    if ((paramByte != 1) && (paramByte != -1)) {
      throw new IllegalArgumentException("mu must be 1 or -1");
    }
    BigInteger localBigInteger1 = paramSimpleBigDecimal1.qe();
    BigInteger localBigInteger2 = paramSimpleBigDecimal2.qe();
    SimpleBigDecimal localSimpleBigDecimal1 = paramSimpleBigDecimal1.ˍ(localBigInteger1);
    paramSimpleBigDecimal2 = paramSimpleBigDecimal2.ˍ(localBigInteger2);
    paramSimpleBigDecimal1 = localSimpleBigDecimal1.ˋ(localSimpleBigDecimal1);
    if (paramByte == 1) {
      paramSimpleBigDecimal1 = paramSimpleBigDecimal1.ˋ(paramSimpleBigDecimal2);
    } else {
      paramSimpleBigDecimal1 = paramSimpleBigDecimal1.ˎ(paramSimpleBigDecimal2);
    }
    SimpleBigDecimal localSimpleBigDecimal3 = paramSimpleBigDecimal2.ˋ(paramSimpleBigDecimal2).ˋ(paramSimpleBigDecimal2);
    SimpleBigDecimal localSimpleBigDecimal2 = localSimpleBigDecimal3.ˋ(paramSimpleBigDecimal2);
    if (paramByte == 1)
    {
      paramSimpleBigDecimal2 = localSimpleBigDecimal1.ˎ(localSimpleBigDecimal3);
      localSimpleBigDecimal1 = localSimpleBigDecimal1.ˋ(localSimpleBigDecimal2);
    }
    else
    {
      paramSimpleBigDecimal2 = localSimpleBigDecimal1.ˋ(localSimpleBigDecimal3);
      localSimpleBigDecimal1 = localSimpleBigDecimal1.ˎ(localSimpleBigDecimal2);
    }
    int k = 0;
    i = 0;
    int j;
    if (paramSimpleBigDecimal1.compareTo(ECConstants.ONE) >= 0)
    {
      if (paramSimpleBigDecimal2.compareTo(bcT) < 0)
      {
        i = paramByte;
        j = k;
      }
      else
      {
        j = 1;
      }
    }
    else
    {
      j = k;
      if (localSimpleBigDecimal1.compareTo(ECConstants.aKc) >= 0)
      {
        i = paramByte;
        j = k;
      }
    }
    if (paramSimpleBigDecimal1.compareTo(bcT) < 0)
    {
      if (paramSimpleBigDecimal2.compareTo(ECConstants.ONE) >= 0)
      {
        i = (byte)-paramByte;
        k = j;
      }
      else
      {
        k = -1;
      }
    }
    else
    {
      k = j;
      if (localSimpleBigDecimal1.compareTo(bcU) < 0)
      {
        i = (byte)-paramByte;
        k = j;
      }
    }
    return new ZTauElement(localBigInteger1.add(BigInteger.valueOf(k)), localBigInteger2.add(BigInteger.valueOf(i)));
  }
  
  public static byte[] ˊ(byte paramByte1, ZTauElement paramZTauElement, byte paramByte2, BigInteger paramBigInteger1, BigInteger paramBigInteger2, ZTauElement[] paramArrayOfZTauElement)
  {
    if ((paramByte1 != 1) && (paramByte1 != -1)) {
      throw new IllegalArgumentException("mu must be 1 or -1");
    }
    int j = ˊ(paramByte1, paramZTauElement).bitLength();
    if (j > 30) {
      paramByte2 = j + 4 + paramByte2;
    } else {
      paramByte2 += 34;
    }
    byte[] arrayOfByte = new byte[paramByte2];
    BigInteger localBigInteger3 = paramBigInteger1.shiftRight(1);
    BigInteger localBigInteger1 = paramZTauElement.aFP;
    paramZTauElement = paramZTauElement.aJD;
    paramByte2 = 0;
    while ((!localBigInteger1.equals(ECConstants.ZERO)) || (!paramZTauElement.equals(ECConstants.ZERO)))
    {
      BigInteger localBigInteger2;
      if (localBigInteger1.testBit(0))
      {
        localBigInteger2 = localBigInteger1.add(paramZTauElement.multiply(paramBigInteger2)).mod(paramBigInteger1);
        int i;
        if (localBigInteger2.compareTo(localBigInteger3) >= 0) {
          i = (byte)localBigInteger2.subtract(paramBigInteger1).intValue();
        } else {
          i = (byte)localBigInteger2.intValue();
        }
        arrayOfByte[paramByte2] = i;
        j = 1;
        int k = i;
        if (i < 0)
        {
          j = 0;
          k = (byte)-i;
        }
        if (j != 0)
        {
          localBigInteger1 = localBigInteger1.subtract(paramArrayOfZTauElement[k].aFP);
          paramZTauElement = paramZTauElement.subtract(paramArrayOfZTauElement[k].aJD);
        }
        else
        {
          localBigInteger1 = localBigInteger1.add(paramArrayOfZTauElement[k].aFP);
          paramZTauElement = paramZTauElement.add(paramArrayOfZTauElement[k].aJD);
        }
        localBigInteger2 = localBigInteger1;
      }
      else
      {
        arrayOfByte[paramByte2] = 0;
        localBigInteger2 = localBigInteger1;
      }
      if (paramByte1 == 1) {
        localBigInteger1 = paramZTauElement.add(localBigInteger2.shiftRight(1));
      } else {
        localBigInteger1 = paramZTauElement.subtract(localBigInteger2.shiftRight(1));
      }
      paramZTauElement = localBigInteger2.shiftRight(1).negate();
      paramByte2 += 1;
    }
    return arrayOfByte;
  }
  
  public static BigInteger[] ˊ(byte paramByte, int paramInt, boolean paramBoolean)
  {
    if ((paramByte != 1) && (paramByte != -1)) {
      throw new IllegalArgumentException("mu must be 1 or -1");
    }
    Object localObject2;
    Object localObject1;
    if (paramBoolean)
    {
      localObject2 = ECConstants.aKc;
      localObject1 = BigInteger.valueOf(paramByte);
    }
    else
    {
      localObject2 = ECConstants.ZERO;
      localObject1 = ECConstants.ONE;
    }
    int i = 1;
    while (i < paramInt)
    {
      if (paramByte == 1) {
        localObject3 = localObject1;
      } else {
        localObject3 = ((BigInteger)localObject1).negate();
      }
      Object localObject3 = ((BigInteger)localObject3).subtract(((BigInteger)localObject2).shiftLeft(1));
      i += 1;
      localObject2 = localObject1;
      localObject1 = localObject3;
    }
    return new BigInteger[] { localObject2, localObject1 };
  }
  
  public static ECPoint.F2m[] ˊ(ECPoint.F2m paramF2m, byte paramByte)
  {
    ECPoint.F2m[] arrayOfF2m = new ECPoint.F2m[16];
    arrayOfF2m[1] = paramF2m;
    byte[][] arrayOfByte;
    if (paramByte == 0) {
      arrayOfByte = bcX;
    } else {
      arrayOfByte = bcZ;
    }
    byte b = arrayOfByte.length;
    paramByte = 3;
    while (paramByte < b)
    {
      arrayOfF2m[paramByte] = ˊ(paramF2m, arrayOfByte[paramByte]);
      paramByte += 2;
    }
    paramF2m.iv().ˊ(arrayOfF2m);
    return arrayOfF2m;
  }
  
  public static BigInteger[] ˋ(ECCurve.F2m paramF2m)
  {
    if (!paramF2m.pr()) {
      throw new IllegalArgumentException("si is defined for Koblitz curves only");
    }
    int i = paramF2m.getM();
    int j = paramF2m.pk().toBigInteger().intValue();
    byte b = paramF2m.ps();
    int k = ˑ(paramF2m.pm());
    paramF2m = ˊ(b, i + 3 - j, false);
    if (b == 1)
    {
      paramF2m[0] = paramF2m[0].negate();
      paramF2m[1] = paramF2m[1].negate();
    }
    return new BigInteger[] { ECConstants.ONE.add(paramF2m[1]).shiftRight(k), ECConstants.ONE.add(paramF2m[0]).shiftRight(k).negate() };
  }
  
  public static ECPoint.F2m ˎ(ECPoint.F2m paramF2m)
  {
    return paramF2m.pW();
  }
  
  public static BigInteger ˏ(byte paramByte, int paramInt)
  {
    if (paramInt == 4)
    {
      if (paramByte == 1) {
        return BigInteger.valueOf(6L);
      }
      return BigInteger.valueOf(10L);
    }
    BigInteger[] arrayOfBigInteger = ˊ(paramByte, paramInt, false);
    BigInteger localBigInteger1 = ECConstants.ZERO.setBit(paramInt);
    BigInteger localBigInteger2 = arrayOfBigInteger[1].modInverse(localBigInteger1);
    return ECConstants.aKc.multiply(arrayOfBigInteger[0]).multiply(localBigInteger2).mod(localBigInteger1);
  }
  
  protected static int ˑ(BigInteger paramBigInteger)
  {
    if (paramBigInteger != null)
    {
      if (paramBigInteger.equals(ECConstants.aKc)) {
        return 1;
      }
      if (paramBigInteger.equals(ECConstants.bci)) {
        return 2;
      }
    }
    throw new IllegalArgumentException("h (Cofactor) must be 2 or 4");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.Tnaf
 * JD-Core Version:    0.7.0.1
 */