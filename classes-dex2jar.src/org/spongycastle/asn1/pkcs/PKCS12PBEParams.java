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

public class PKCS12PBEParams
  extends ASN1Object
{
  ASN1OctetString ahD;
  ASN1Integer aqi;
  
  private PKCS12PBEParams(ASN1Sequence paramASN1Sequence)
  {
    this.ahD = ((ASN1OctetString)paramASN1Sequence.ϲ(0));
    this.aqi = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1));
  }
  
  public PKCS12PBEParams(byte[] paramArrayOfByte, int paramInt)
  {
    this.ahD = new DEROctetString(paramArrayOfByte);
    this.aqi = new ASN1Integer(paramInt);
  }
  
  public static PKCS12PBEParams וֹ(Object paramObject)
  {
    if ((paramObject instanceof PKCS12PBEParams)) {
      return (PKCS12PBEParams)paramObject;
    }
    if (paramObject != null) {
      return new PKCS12PBEParams(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahD);
    localASN1EncodableVector.ˊ(this.aqi);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger fT()
  {
    return this.aqi.eA();
  }
  
  public byte[] getIV()
  {
    return this.ahD.eM();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.PKCS12PBEParams
 * JD-Core Version:    0.7.0.1
 */