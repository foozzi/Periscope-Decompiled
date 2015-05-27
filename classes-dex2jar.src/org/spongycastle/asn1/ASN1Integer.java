package org.spongycastle.asn1;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;

public class ASN1Integer
  extends ASN1Primitive
{
  byte[] bytes;
  
  public ASN1Integer(long paramLong)
  {
    this.bytes = BigInteger.valueOf(paramLong).toByteArray();
  }
  
  public ASN1Integer(BigInteger paramBigInteger)
  {
    this.bytes = paramBigInteger.toByteArray();
  }
  
  public ASN1Integer(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, true);
  }
  
  ASN1Integer(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramArrayOfByte = Arrays.І(paramArrayOfByte);
    }
    this.bytes = paramArrayOfByte;
  }
  
  public static ASN1Integer ˋ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    ASN1Primitive localASN1Primitive = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((localASN1Primitive instanceof ASN1Integer))) {
      return ﯨ(localASN1Primitive);
    }
    return new ASN1Integer(ASN1OctetString.ﹸ(paramASN1TaggedObject.eY()).eM());
  }
  
  public static ASN1Integer ﯨ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1Integer))) {
      return (ASN1Integer)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = (ASN1Integer)ՙ((byte[])paramObject);
        return paramObject;
      }
      catch (Exception paramObject)
      {
        throw new IllegalArgumentException("encoding error in getInstance: " + paramObject.toString());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public BigInteger eA()
  {
    return new BigInteger(this.bytes);
  }
  
  public BigInteger eI()
  {
    return new BigInteger(1, this.bytes);
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return StreamUtil.х(this.bytes.length) + 1 + this.bytes.length;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i = 0;
    while (i != this.bytes.length)
    {
      j ^= (this.bytes[i] & 0xFF) << i % 4;
      i += 1;
    }
    return j;
  }
  
  public String toString()
  {
    return eA().toString();
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(2, this.bytes);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1Integer)) {
      return false;
    }
    paramASN1Primitive = (ASN1Integer)paramASN1Primitive;
    return Arrays.ﹺ(this.bytes, paramASN1Primitive.bytes);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Integer
 * JD-Core Version:    0.7.0.1
 */