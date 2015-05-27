package org.spongycastle.asn1.eac;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERTaggedObject;

public class UnsignedInteger
  extends ASN1Object
{
  private int aaC;
  private BigInteger ajM;
  
  public UnsignedInteger(int paramInt, BigInteger paramBigInteger)
  {
    this.aaC = paramInt;
    this.ajM = paramBigInteger;
  }
  
  private byte[] fB()
  {
    byte[] arrayOfByte1 = this.ajM.toByteArray();
    if (arrayOfByte1[0] == 0)
    {
      byte[] arrayOfByte2 = new byte[arrayOfByte1.length - 1];
      System.arraycopy(arrayOfByte1, 1, arrayOfByte2, 0, arrayOfByte2.length);
      return arrayOfByte2;
    }
    return arrayOfByte1;
  }
  
  public ASN1Primitive ez()
  {
    return new DERTaggedObject(false, this.aaC, new DEROctetString(fB()));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.UnsignedInteger
 * JD-Core Version:    0.7.0.1
 */