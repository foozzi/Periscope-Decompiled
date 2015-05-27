package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;

public class KeyUsage
  extends ASN1Object
{
  private DERBitString aAf;
  
  public KeyUsage(int paramInt)
  {
    this.aAf = new DERBitString(paramInt);
  }
  
  private KeyUsage(DERBitString paramDERBitString)
  {
    this.aAf = paramDERBitString;
  }
  
  public static KeyUsage ʶ(Object paramObject)
  {
    if ((paramObject instanceof KeyUsage)) {
      return (KeyUsage)paramObject;
    }
    if (paramObject != null) {
      return new KeyUsage(DERBitString.ʸ(paramObject));
    }
    return null;
  }
  
  public static KeyUsage ˊ(Extensions paramExtensions)
  {
    return ʶ(paramExtensions.ʼ(Extension.ayJ));
  }
  
  public ASN1Primitive ez()
  {
    return this.aAf;
  }
  
  public byte[] getBytes()
  {
    return this.aAf.getBytes();
  }
  
  public String toString()
  {
    byte[] arrayOfByte = this.aAf.getBytes();
    if (arrayOfByte.length == 1) {
      return "KeyUsage: 0x" + Integer.toHexString(arrayOfByte[0] & 0xFF);
    }
    return "KeyUsage: 0x" + Integer.toHexString((arrayOfByte[1] & 0xFF) << 8 | arrayOfByte[0] & 0xFF);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.KeyUsage
 * JD-Core Version:    0.7.0.1
 */