package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;

public class X9IntegerConverter
{
  public byte[] ˊ(BigInteger paramBigInteger, int paramInt)
  {
    paramBigInteger = paramBigInteger.toByteArray();
    byte[] arrayOfByte;
    if (paramInt < paramBigInteger.length)
    {
      arrayOfByte = new byte[paramInt];
      System.arraycopy(paramBigInteger, paramBigInteger.length - arrayOfByte.length, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    if (paramInt > paramBigInteger.length)
    {
      arrayOfByte = new byte[paramInt];
      System.arraycopy(paramBigInteger, 0, arrayOfByte, arrayOfByte.length - paramBigInteger.length, paramBigInteger.length);
      return arrayOfByte;
    }
    return paramBigInteger;
  }
  
  public int ˋ(ECFieldElement paramECFieldElement)
  {
    return (paramECFieldElement.getFieldSize() + 7) / 8;
  }
  
  public int ˏ(ECCurve paramECCurve)
  {
    return (paramECCurve.getFieldSize() + 7) / 8;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9IntegerConverter
 * JD-Core Version:    0.7.0.1
 */