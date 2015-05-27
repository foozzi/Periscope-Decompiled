package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class IssuerSerial
  extends ASN1Object
{
  GeneralNames azB;
  ASN1Integer azC;
  DERBitString azD;
  
  private IssuerSerial(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() != 2) && (paramASN1Sequence.size() != 3)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.azB = GeneralNames.＿(paramASN1Sequence.ϲ(0));
    this.azC = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1));
    if (paramASN1Sequence.size() == 3) {
      this.azD = DERBitString.ʸ(paramASN1Sequence.ϲ(2));
    }
  }
  
  public static IssuerSerial Ɩ(Object paramObject)
  {
    if ((paramObject instanceof IssuerSerial)) {
      return (IssuerSerial)paramObject;
    }
    if (paramObject != null) {
      return new IssuerSerial(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public static IssuerSerial ˑ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return Ɩ(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.azB);
    localASN1EncodableVector.ˊ(this.azC);
    if (this.azD != null) {
      localASN1EncodableVector.ˊ(this.azD);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public GeneralNames hD()
  {
    return this.azB;
  }
  
  public ASN1Integer hE()
  {
    return this.azC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.IssuerSerial
 * JD-Core Version:    0.7.0.1
 */