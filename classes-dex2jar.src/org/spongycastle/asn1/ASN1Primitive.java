package org.spongycastle.asn1;

import java.io.IOException;

public abstract class ASN1Primitive
  extends ASN1Object
{
  public static ASN1Primitive ՙ(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = new ASN1InputStream(paramArrayOfByte);
    try
    {
      paramArrayOfByte = paramArrayOfByte.eH();
      return paramArrayOfByte;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("cannot recognise object in stream");
    }
  }
  
  ASN1Primitive eO()
  {
    return this;
  }
  
  ASN1Primitive eP()
  {
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    return ((paramObject instanceof ASN1Encodable)) && (ˊ(((ASN1Encodable)paramObject).ez()));
  }
  
  abstract boolean ex();
  
  abstract int ey();
  
  public ASN1Primitive ez()
  {
    return this;
  }
  
  public abstract int hashCode();
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  abstract boolean ˊ(ASN1Primitive paramASN1Primitive);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Primitive
 * JD-Core Version:    0.7.0.1
 */