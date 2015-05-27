package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

public class RC2CBCParameter
  extends ASN1Object
{
  ASN1Integer aek;
  ASN1OctetString ahD;
  
  public RC2CBCParameter(int paramInt, byte[] paramArrayOfByte)
  {
    this.aek = new ASN1Integer(paramInt);
    this.ahD = new DEROctetString(paramArrayOfByte);
  }
  
  private RC2CBCParameter(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 1)
    {
      this.aek = null;
      this.ahD = ((ASN1OctetString)paramASN1Sequence.ϲ(0));
      return;
    }
    this.aek = ((ASN1Integer)paramASN1Sequence.ϲ(0));
    this.ahD = ((ASN1OctetString)paramASN1Sequence.ϲ(1));
  }
  
  public RC2CBCParameter(byte[] paramArrayOfByte)
  {
    this.aek = null;
    this.ahD = new DEROctetString(paramArrayOfByte);
  }
  
  public static RC2CBCParameter ﹻ(Object paramObject)
  {
    if ((paramObject instanceof RC2CBCParameter)) {
      return (RC2CBCParameter)paramObject;
    }
    if (paramObject != null) {
      return new RC2CBCParameter(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aek != null) {
      localASN1EncodableVector.ˊ(this.aek);
    }
    localASN1EncodableVector.ˊ(this.ahD);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger fZ()
  {
    if (this.aek == null) {
      return null;
    }
    return this.aek.eA();
  }
  
  public byte[] getIV()
  {
    return this.ahD.eM();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.RC2CBCParameter
 * JD-Core Version:    0.7.0.1
 */