package org.spongycastle.asn1.ua;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

public abstract class DSTU4145PointEncoder
{
  private static ECFieldElement ˊ(ECCurve paramECCurve, ECFieldElement paramECFieldElement)
  {
    if (paramECFieldElement.isZero()) {
      return paramECFieldElement;
    }
    ECFieldElement localECFieldElement3 = paramECCurve.ι(ECConstants.ZERO);
    Random localRandom = new Random();
    int j = paramECFieldElement.getFieldSize();
    ECFieldElement localECFieldElement1;
    do
    {
      ECFieldElement localECFieldElement4 = paramECCurve.ι(new BigInteger(j, localRandom));
      localECFieldElement1 = localECFieldElement3;
      ECFieldElement localECFieldElement2 = paramECFieldElement;
      int i = 1;
      while (i <= j - 1)
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
  
  private static ECFieldElement ˊ(ECFieldElement paramECFieldElement)
  {
    ECFieldElement localECFieldElement = paramECFieldElement;
    int i = 1;
    while (i < paramECFieldElement.getFieldSize())
    {
      localECFieldElement = localECFieldElement.px().ˏ(paramECFieldElement);
      i += 1;
    }
    return localECFieldElement;
  }
  
  public static ECPoint ˊ(ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    ECFieldElement localECFieldElement2 = paramECCurve.ι(BigInteger.valueOf(paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0x1));
    paramArrayOfByte = paramECCurve.ι(new BigInteger(1, paramArrayOfByte));
    Object localObject = paramArrayOfByte;
    if (!ˊ(paramArrayOfByte).equals(paramECCurve.pk())) {
      localObject = paramArrayOfByte.pv();
    }
    paramArrayOfByte = null;
    if (((ECFieldElement)localObject).isZero())
    {
      paramArrayOfByte = paramECCurve.pl().pz();
    }
    else
    {
      ECFieldElement localECFieldElement1 = ˊ(paramECCurve, ((ECFieldElement)localObject).px().py().ʻ(paramECCurve.pl()).ˏ(paramECCurve.pk()).ˏ((ECFieldElement)localObject));
      if (localECFieldElement1 != null)
      {
        paramArrayOfByte = localECFieldElement1;
        if (!ˊ(localECFieldElement1).equals(localECFieldElement2)) {
          paramArrayOfByte = localECFieldElement1.pv();
        }
        paramArrayOfByte = ((ECFieldElement)localObject).ʻ(paramArrayOfByte);
      }
    }
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("Invalid point compression");
    }
    return paramECCurve.ᐝ(((ECFieldElement)localObject).toBigInteger(), paramArrayOfByte.toBigInteger());
  }
  
  public static byte[] ˊ(ECPoint paramECPoint)
  {
    paramECPoint = paramECPoint.pQ();
    ECFieldElement localECFieldElement = paramECPoint.pH();
    byte[] arrayOfByte = localECFieldElement.getEncoded();
    if (!localECFieldElement.isZero())
    {
      if (ˊ(paramECPoint.pI().ʼ(localECFieldElement)).pA())
      {
        i = arrayOfByte.length - 1;
        arrayOfByte[i] = ((byte)(arrayOfByte[i] | 0x1));
        return arrayOfByte;
      }
      int i = arrayOfByte.length - 1;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] & 0xFE));
    }
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ua.DSTU4145PointEncoder
 * JD-Core Version:    0.7.0.1
 */