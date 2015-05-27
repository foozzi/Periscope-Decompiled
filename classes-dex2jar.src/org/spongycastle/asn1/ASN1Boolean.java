package org.spongycastle.asn1;

import java.io.IOException;
import org.spongycastle.util.Arrays;

public class ASN1Boolean
  extends ASN1Primitive
{
  private static final byte[] aae = { -1 };
  private static final byte[] aaf = { 0 };
  public static final ASN1Boolean aah = new ASN1Boolean(false);
  public static final ASN1Boolean aai = new ASN1Boolean(true);
  private byte[] aag;
  
  public ASN1Boolean(boolean paramBoolean)
  {
    byte[] arrayOfByte;
    if (paramBoolean) {
      arrayOfByte = aae;
    } else {
      arrayOfByte = aaf;
    }
    this.aag = arrayOfByte;
  }
  
  ASN1Boolean(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 1) {
      throw new IllegalArgumentException("byte value should have 1 byte in it");
    }
    if (paramArrayOfByte[0] == 0)
    {
      this.aag = aaf;
      return;
    }
    if ((paramArrayOfByte[0] & 0xFF) == 255)
    {
      this.aag = aae;
      return;
    }
    this.aag = Arrays.І(paramArrayOfByte);
  }
  
  public static ASN1Boolean ˊ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    paramASN1TaggedObject = paramASN1TaggedObject.eY();
    if ((paramBoolean) || ((paramASN1TaggedObject instanceof ASN1Boolean))) {
      return ᵙ(paramASN1TaggedObject);
    }
    return ﹳ(((ASN1OctetString)paramASN1TaggedObject).eM());
  }
  
  public static ASN1Boolean ᕑ(boolean paramBoolean)
  {
    if (paramBoolean) {
      return aai;
    }
    return aah;
  }
  
  public static ASN1Boolean ᵙ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ASN1Boolean))) {
      return (ASN1Boolean)paramObject;
    }
    if ((paramObject instanceof byte[]))
    {
      paramObject = (byte[])paramObject;
      try
      {
        paramObject = (ASN1Boolean)ՙ(paramObject);
        return paramObject;
      }
      catch (IOException paramObject)
      {
        throw new IllegalArgumentException("failed to construct boolean from byte[]: " + paramObject.getMessage());
      }
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  static ASN1Boolean ﹳ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 1) {
      throw new IllegalArgumentException("BOOLEAN value should have 1 byte in it");
    }
    if (paramArrayOfByte[0] == 0) {
      return aah;
    }
    if ((paramArrayOfByte[0] & 0xFF) == 255) {
      return aai;
    }
    return new ASN1Boolean(paramArrayOfByte);
  }
  
  public boolean ew()
  {
    return this.aag[0] != 0;
  }
  
  boolean ex()
  {
    return false;
  }
  
  int ey()
  {
    return 3;
  }
  
  public int hashCode()
  {
    return this.aag[0];
  }
  
  public String toString()
  {
    if (this.aag[0] != 0) {
      return "TRUE";
    }
    return "FALSE";
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.ˊ(1, this.aag);
  }
  
  protected boolean ˊ(ASN1Primitive paramASN1Primitive)
  {
    if ((paramASN1Primitive instanceof ASN1Boolean)) {
      return this.aag[0] == ((ASN1Boolean)paramASN1Primitive).aag[0];
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1Boolean
 * JD-Core Version:    0.7.0.1
 */