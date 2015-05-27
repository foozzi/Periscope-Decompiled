package org.spongycastle.asn1;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;

public class ASN1Enumerated
  extends ASN1Primitive
{
  private static ASN1Enumerated[] aak = new ASN1Enumerated[12];
  byte[] bytes;
  
  public ASN1Enumerated(int paramInt)
  {
    this.bytes = BigInteger.valueOf(paramInt).toByteArray();
  }
  
  public ASN1Enumerated(byte[] paramArrayOfByte)
  {
    this.bytes = paramArrayOfByte;
  }
  
  public static ASN1Enumerated ᵛ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1Enumerated))) {
      return (ASN1Enumerated)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = (ASN1Enumerated)ՙ((byte[])paramObject);
        return paramObject;
      }
      catch (Exception paramObject)
      {
        throw new IllegalArgumentException("encoding error in getInstance: " + paramObject.toString());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  static ASN1Enumerated ﾞ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length > 1) {
      return new ASN1Enumerated(Arrays.І(paramArrayOfByte));
    }
    if (paramArrayOfByte.length == 0) {
      throw new IllegalArgumentException("ENUMERATED has zero length");
    }
    int i = paramArrayOfByte[0] & 0xFF;
    if (i >= aak.length) {
      return new ASN1Enumerated(Arrays.І(paramArrayOfByte));
    }
    Object localObject2 = aak[i];
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = aak;
      localObject1 = new ASN1Enumerated(Arrays.І(paramArrayOfByte));
      localObject2[i] = localObject1;
    }
    return localObject1;
  }
  
  public BigInteger eA()
  {
    return new BigInteger(this.bytes);
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
    return Arrays.hashCode(this.bytes);
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(10, this.bytes);
  }
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1Enumerated)) {
      return false;
    }
    paramASN1Primitive = (ASN1Enumerated)paramASN1Primitive;
    return Arrays.ﹺ(this.bytes, paramASN1Primitive.bytes);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Enumerated
 * JD-Core Version:    0.7.0.1
 */