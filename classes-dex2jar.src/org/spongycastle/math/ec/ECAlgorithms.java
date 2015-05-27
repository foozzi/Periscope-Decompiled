package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.math.ec.endo.GLVEndomorphism;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.PolynomialExtensionField;

public class ECAlgorithms
{
  public static boolean ʻ(ECCurve paramECCurve)
  {
    return paramECCurve.pj().qr() == 1;
  }
  
  public static ECPoint ˊ(ECCurve paramECCurve, ECPoint paramECPoint)
  {
    if (!paramECCurve.ʼ(paramECPoint.iv())) {
      throw new IllegalArgumentException("Point must be on the same curve");
    }
    return paramECCurve.ˏ(paramECPoint);
  }
  
  public static ECPoint ˊ(ECPoint paramECPoint1, BigInteger paramBigInteger1, ECPoint paramECPoint2, BigInteger paramBigInteger2)
  {
    Object localObject = paramECPoint1.iv();
    paramECPoint2 = ˊ((ECCurve)localObject, paramECPoint2);
    if (((localObject instanceof ECCurve.F2m)) && (((ECCurve.F2m)localObject).pr())) {
      return ˎ(paramECPoint1.ˌ(paramBigInteger1).ʼ(paramECPoint2.ˌ(paramBigInteger2)));
    }
    localObject = ((ECCurve)localObject).po();
    if ((localObject instanceof GLVEndomorphism))
    {
      localObject = (GLVEndomorphism)localObject;
      return ˎ(ˊ(new ECPoint[] { paramECPoint1, paramECPoint2 }, new BigInteger[] { paramBigInteger1, paramBigInteger2 }, (GLVEndomorphism)localObject));
    }
    return ˎ(ˋ(paramECPoint1, paramBigInteger1, paramECPoint2, paramBigInteger2));
  }
  
  static ECPoint ˊ(ECPoint paramECPoint, BigInteger paramBigInteger1, ECPointMap paramECPointMap, BigInteger paramBigInteger2)
  {
    int i;
    if (paramBigInteger1.signum() < 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramBigInteger2.signum() < 0) {
      j = 1;
    } else {
      j = 0;
    }
    BigInteger localBigInteger1 = paramBigInteger1.abs();
    BigInteger localBigInteger2 = paramBigInteger2.abs();
    int k = Math.max(2, Math.min(16, WNafUtil.ﾌ(Math.max(localBigInteger1.bitLength(), localBigInteger2.bitLength()))));
    paramBigInteger1 = WNafUtil.ˊ(paramECPoint, k, true, paramECPointMap);
    paramECPointMap = WNafUtil.ʾ(paramECPoint);
    paramBigInteger2 = WNafUtil.ʾ(paramBigInteger1);
    if (i != 0) {
      paramECPoint = paramECPointMap.qg();
    } else {
      paramECPoint = paramECPointMap.pY();
    }
    if (j != 0) {
      paramBigInteger1 = paramBigInteger2.qg();
    } else {
      paramBigInteger1 = paramBigInteger2.pY();
    }
    if (i != 0) {
      paramECPointMap = paramECPointMap.pY();
    } else {
      paramECPointMap = paramECPointMap.qg();
    }
    if (j != 0) {
      paramBigInteger2 = paramBigInteger2.pY();
    } else {
      paramBigInteger2 = paramBigInteger2.qg();
    }
    return ˊ(paramECPoint, paramECPointMap, WNafUtil.ˏ(k, localBigInteger1), paramBigInteger1, paramBigInteger2, WNafUtil.ˏ(k, localBigInteger2));
  }
  
  static ECPoint ˊ(ECPoint[] paramArrayOfECPoint, ECPointMap paramECPointMap, BigInteger[] paramArrayOfBigInteger)
  {
    int j = paramArrayOfECPoint.length;
    int i = j << 1;
    boolean[] arrayOfBoolean = new boolean[i];
    WNafPreCompInfo[] arrayOfWNafPreCompInfo = new WNafPreCompInfo[i];
    byte[][] arrayOfByte = new byte[i][];
    i = 0;
    while (i < j)
    {
      int k = i << 1;
      int m = k + 1;
      BigInteger localBigInteger1 = paramArrayOfBigInteger[k];
      int i1;
      if (localBigInteger1.signum() < 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      arrayOfBoolean[k] = i1;
      localBigInteger1 = localBigInteger1.abs();
      BigInteger localBigInteger2 = paramArrayOfBigInteger[m];
      if (localBigInteger2.signum() < 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      arrayOfBoolean[m] = i1;
      localBigInteger2 = localBigInteger2.abs();
      int n = Math.max(2, Math.min(16, WNafUtil.ﾌ(Math.max(localBigInteger1.bitLength(), localBigInteger2.bitLength()))));
      ECPoint localECPoint1 = paramArrayOfECPoint[i];
      ECPoint localECPoint2 = WNafUtil.ˊ(localECPoint1, n, true, paramECPointMap);
      arrayOfWNafPreCompInfo[k] = WNafUtil.ʾ(localECPoint1);
      arrayOfWNafPreCompInfo[m] = WNafUtil.ʾ(localECPoint2);
      arrayOfByte[k] = WNafUtil.ˏ(n, localBigInteger1);
      arrayOfByte[m] = WNafUtil.ˏ(n, localBigInteger2);
      i += 1;
    }
    return ˊ(arrayOfBoolean, arrayOfWNafPreCompInfo, arrayOfByte);
  }
  
  static ECPoint ˊ(ECPoint[] paramArrayOfECPoint, BigInteger[] paramArrayOfBigInteger)
  {
    int j = paramArrayOfECPoint.length;
    boolean[] arrayOfBoolean = new boolean[j];
    WNafPreCompInfo[] arrayOfWNafPreCompInfo = new WNafPreCompInfo[j];
    byte[][] arrayOfByte = new byte[j][];
    int i = 0;
    while (i < j)
    {
      BigInteger localBigInteger = paramArrayOfBigInteger[i];
      int m;
      if (localBigInteger.signum() < 0) {
        m = 1;
      } else {
        m = 0;
      }
      arrayOfBoolean[i] = m;
      localBigInteger = localBigInteger.abs();
      int k = Math.max(2, Math.min(16, WNafUtil.ﾌ(localBigInteger.bitLength())));
      arrayOfWNafPreCompInfo[i] = WNafUtil.ˊ(paramArrayOfECPoint[i], k, true);
      arrayOfByte[i] = WNafUtil.ˏ(k, localBigInteger);
      i += 1;
    }
    return ˊ(arrayOfBoolean, arrayOfWNafPreCompInfo, arrayOfByte);
  }
  
  static ECPoint ˊ(ECPoint[] paramArrayOfECPoint, BigInteger[] paramArrayOfBigInteger, GLVEndomorphism paramGLVEndomorphism)
  {
    Object localObject1 = paramArrayOfECPoint[0].iv().getOrder();
    int k = paramArrayOfECPoint.length;
    BigInteger[] arrayOfBigInteger = new BigInteger[k << 1];
    int i = 0;
    int j = 0;
    Object localObject2;
    int m;
    while (i < k)
    {
      localObject2 = paramGLVEndomorphism.ﾞ(paramArrayOfBigInteger[i].mod((BigInteger)localObject1));
      m = j + 1;
      arrayOfBigInteger[j] = localObject2[0];
      j = m + 1;
      arrayOfBigInteger[m] = localObject2[1];
      i += 1;
    }
    paramArrayOfBigInteger = paramGLVEndomorphism.qk();
    if (paramGLVEndomorphism.ql()) {
      return ˊ(paramArrayOfECPoint, paramArrayOfBigInteger, arrayOfBigInteger);
    }
    paramGLVEndomorphism = new ECPoint[k << 1];
    i = 0;
    j = 0;
    while (i < k)
    {
      localObject1 = paramArrayOfECPoint[i];
      localObject2 = paramArrayOfBigInteger.ͺ((ECPoint)localObject1);
      m = j + 1;
      paramGLVEndomorphism[j] = localObject1;
      j = m + 1;
      paramGLVEndomorphism[m] = localObject2;
      i += 1;
    }
    return ˊ(paramGLVEndomorphism, arrayOfBigInteger);
  }
  
  private static ECPoint ˊ(ECPoint[] paramArrayOfECPoint1, ECPoint[] paramArrayOfECPoint2, byte[] paramArrayOfByte1, ECPoint[] paramArrayOfECPoint3, ECPoint[] paramArrayOfECPoint4, byte[] paramArrayOfByte2)
  {
    int j = Math.max(paramArrayOfByte1.length, paramArrayOfByte2.length);
    ECPoint localECPoint2 = paramArrayOfECPoint1[0].iv().pi();
    ECPoint localECPoint1 = localECPoint2;
    int i = 0;
    int k = j - 1;
    while (k >= 0)
    {
      if (k < paramArrayOfByte1.length) {
        j = paramArrayOfByte1[k];
      } else {
        j = 0;
      }
      int m;
      if (k < paramArrayOfByte2.length) {
        m = paramArrayOfByte2[k];
      } else {
        m = 0;
      }
      if ((j | m) == 0)
      {
        i += 1;
      }
      else
      {
        Object localObject2 = localECPoint2;
        Object localObject1 = localObject2;
        if (j != 0)
        {
          int n = Math.abs(j);
          if (j < 0) {
            localObject1 = paramArrayOfECPoint2;
          } else {
            localObject1 = paramArrayOfECPoint1;
          }
          localObject1 = ((ECPoint)localObject2).ʼ(localObject1[(n >>> 1)]);
        }
        localObject2 = localObject1;
        if (m != 0)
        {
          j = Math.abs(m);
          if (m < 0) {
            localObject2 = paramArrayOfECPoint4;
          } else {
            localObject2 = paramArrayOfECPoint3;
          }
          localObject2 = ((ECPoint)localObject1).ʼ(localObject2[(j >>> 1)]);
        }
        localObject1 = localECPoint1;
        j = i;
        if (i > 0)
        {
          localObject1 = localECPoint1.ﺬ(i);
          j = 0;
        }
        localECPoint1 = ((ECPoint)localObject1).ʽ((ECPoint)localObject2);
        i = j;
      }
      k -= 1;
    }
    paramArrayOfECPoint1 = localECPoint1;
    if (i > 0) {
      paramArrayOfECPoint1 = localECPoint1.ﺬ(i);
    }
    return paramArrayOfECPoint1;
  }
  
  private static ECPoint ˊ(boolean[] paramArrayOfBoolean, WNafPreCompInfo[] paramArrayOfWNafPreCompInfo, byte[][] paramArrayOfByte)
  {
    int i = 0;
    int n = paramArrayOfByte.length;
    int j = 0;
    while (j < n)
    {
      i = Math.max(i, paramArrayOfByte[j].length);
      j += 1;
    }
    ECPoint localECPoint2 = paramArrayOfWNafPreCompInfo[0].pY()[0].iv().pi();
    ECPoint localECPoint1 = localECPoint2;
    j = 0;
    int k = i - 1;
    i = j;
    while (k >= 0)
    {
      Object localObject1 = localECPoint2;
      j = 0;
      Object localObject2;
      while (j < n)
      {
        localObject2 = paramArrayOfByte[j];
        int m;
        if (k < localObject2.length) {
          m = localObject2[k];
        } else {
          m = 0;
        }
        localObject2 = localObject1;
        if (m != 0)
        {
          int i1 = Math.abs(m);
          localObject2 = paramArrayOfWNafPreCompInfo[j];
          int i2;
          if (m < 0) {
            i2 = 1;
          } else {
            i2 = 0;
          }
          if (i2 == paramArrayOfBoolean[j]) {
            localObject2 = ((WNafPreCompInfo)localObject2).pY();
          } else {
            localObject2 = ((WNafPreCompInfo)localObject2).qg();
          }
          localObject2 = ((ECPoint)localObject1).ʼ(localObject2[(i1 >>> 1)]);
        }
        j += 1;
        localObject1 = localObject2;
      }
      if (localObject1 == localECPoint2)
      {
        i += 1;
      }
      else
      {
        localObject2 = localECPoint1;
        j = i;
        if (i > 0)
        {
          localObject2 = localECPoint1.ﺬ(i);
          j = 0;
        }
        localECPoint1 = ((ECPoint)localObject2).ʽ((ECPoint)localObject1);
        i = j;
      }
      k -= 1;
    }
    paramArrayOfBoolean = localECPoint1;
    if (i > 0) {
      paramArrayOfBoolean = localECPoint1.ﺬ(i);
    }
    return paramArrayOfBoolean;
  }
  
  public static void ˊ(ECFieldElement[] paramArrayOfECFieldElement, int paramInt1, int paramInt2)
  {
    ECFieldElement[] arrayOfECFieldElement = new ECFieldElement[paramInt2];
    arrayOfECFieldElement[0] = paramArrayOfECFieldElement[paramInt1];
    int i = 0;
    for (;;)
    {
      i += 1;
      if (i >= paramInt2) {
        break;
      }
      arrayOfECFieldElement[i] = arrayOfECFieldElement[(i - 1)].ʻ(paramArrayOfECFieldElement[(paramInt1 + i)]);
    }
    paramInt2 = i - 1;
    ECFieldElement localECFieldElement2;
    for (ECFieldElement localECFieldElement1 = arrayOfECFieldElement[paramInt2].py();; localECFieldElement1 = localECFieldElement1.ʻ(localECFieldElement2))
    {
      i = paramInt2;
      if (i <= 0) {
        break;
      }
      paramInt2 = i - 1;
      i = paramInt1 + i;
      localECFieldElement2 = paramArrayOfECFieldElement[i];
      paramArrayOfECFieldElement[i] = arrayOfECFieldElement[paramInt2].ʻ(localECFieldElement1);
    }
    paramArrayOfECFieldElement[paramInt1] = localECFieldElement1;
  }
  
  static ECPoint ˋ(ECPoint paramECPoint1, BigInteger paramBigInteger1, ECPoint paramECPoint2, BigInteger paramBigInteger2)
  {
    int i;
    if (paramBigInteger1.signum() < 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if (paramBigInteger2.signum() < 0) {
      j = 1;
    } else {
      j = 0;
    }
    BigInteger localBigInteger1 = paramBigInteger1.abs();
    BigInteger localBigInteger2 = paramBigInteger2.abs();
    int k = Math.max(2, Math.min(16, WNafUtil.ﾌ(localBigInteger1.bitLength())));
    int m = Math.max(2, Math.min(16, WNafUtil.ﾌ(localBigInteger2.bitLength())));
    WNafPreCompInfo localWNafPreCompInfo = WNafUtil.ˊ(paramECPoint1, k, true);
    paramBigInteger2 = WNafUtil.ˊ(paramECPoint2, m, true);
    if (i != 0) {
      paramECPoint1 = localWNafPreCompInfo.qg();
    } else {
      paramECPoint1 = localWNafPreCompInfo.pY();
    }
    if (j != 0) {
      paramBigInteger1 = paramBigInteger2.qg();
    } else {
      paramBigInteger1 = paramBigInteger2.pY();
    }
    if (i != 0) {
      paramECPoint2 = localWNafPreCompInfo.pY();
    } else {
      paramECPoint2 = localWNafPreCompInfo.qg();
    }
    if (j != 0) {
      paramBigInteger2 = paramBigInteger2.pY();
    } else {
      paramBigInteger2 = paramBigInteger2.qg();
    }
    return ˊ(paramECPoint1, paramECPoint2, WNafUtil.ˏ(k, localBigInteger1), paramBigInteger1, paramBigInteger2, WNafUtil.ˏ(m, localBigInteger2));
  }
  
  public static ECPoint ˎ(ECPoint paramECPoint)
  {
    if (!paramECPoint.isValid()) {
      throw new IllegalArgumentException("Invalid point");
    }
    return paramECPoint;
  }
  
  public static ECPoint ˏ(ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    BigInteger localBigInteger = paramBigInteger.abs();
    ECPoint localECPoint2 = paramECPoint.iv().pi();
    int j = localBigInteger.bitLength();
    ECPoint localECPoint1 = localECPoint2;
    if (j > 0)
    {
      localECPoint1 = localECPoint2;
      if (localBigInteger.testBit(0)) {
        localECPoint1 = paramECPoint;
      }
      int i = 1;
      localECPoint2 = paramECPoint;
      for (paramECPoint = localECPoint1;; paramECPoint = localECPoint1)
      {
        localECPoint1 = paramECPoint;
        if (i >= j) {
          break;
        }
        localECPoint2 = localECPoint2.pU();
        localECPoint1 = paramECPoint;
        if (localBigInteger.testBit(i)) {
          localECPoint1 = paramECPoint.ʼ(localECPoint2);
        }
        i += 1;
      }
    }
    if (paramBigInteger.signum() < 0) {
      return localECPoint1.pT();
    }
    return localECPoint1;
  }
  
  public static boolean ᐝ(ECCurve paramECCurve)
  {
    paramECCurve = paramECCurve.pj();
    return (paramECCurve.qr() > 1) && (paramECCurve.qq().equals(ECConstants.aKc)) && ((paramECCurve instanceof PolynomialExtensionField));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.ECAlgorithms
 * JD-Core Version:    0.7.0.1
 */