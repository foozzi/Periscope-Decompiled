package org.spongycastle.asn1;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;

public abstract class ASN1OctetString
  extends ASN1Primitive
  implements ASN1OctetStringParser
{
  byte[] aas;
  
  public ASN1OctetString(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("string cannot be null");
    }
    this.aas = paramArrayOfByte;
  }
  
  public static ASN1OctetString ˏ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    paramASN1TaggedObject = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((paramASN1TaggedObject instanceof ASN1OctetString))) {
      return ﹸ(paramASN1TaggedObject);
    }
    return BEROctetString.ˊ(ASN1Sequence.ﹾ(paramASN1TaggedObject));
  }
  
  public static ASN1OctetString ﹸ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1OctetString))) {
      return (ASN1OctetString)paramObject;
    }
    if ((paramObject instanceof byte[])) {
      try
      {
        paramObject = ﹸ(ASN1Primitive.ՙ((byte[])paramObject));
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct OCTET STRING from byte[]: " + paramObject.getMessage());
      }
    }
    if ((paramObject instanceof ASN1Encodable))
    {
      ASN1Primitive localASN1Primitive = ((ASN1Encodable)paramObject).ez();
      if ((localASN1Primitive instanceof ASN1OctetString)) {
        return (ASN1OctetString)localASN1Primitive;
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public InputStream eL()
  {
    return new ByteArrayInputStream(this.aas);
  }
  
  public byte[] eM()
  {
    return this.aas;
  }
  
  public ASN1Primitive eN()
  {
    return ez();
  }
  
  ASN1Primitive eO()
  {
    return new DEROctetString(this.aas);
  }
  
  ASN1Primitive eP()
  {
    return new DEROctetString(this.aas);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(eM());
  }
  
  public String toString()
  {
    return "#" + new String(Hex.ײ(this.aas));
  }
  
  abstract void ˊ(ASN1OutputStream paramASN1OutputStream);
  
  boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if (!(paramASN1Primitive instanceof ASN1OctetString)) {
      return false;
    }
    paramASN1Primitive = (ASN1OctetString)paramASN1Primitive;
    return Arrays.ﹺ(this.aas, paramASN1Primitive.aas);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1OctetString
 * JD-Core Version:    0.7.0.1
 */