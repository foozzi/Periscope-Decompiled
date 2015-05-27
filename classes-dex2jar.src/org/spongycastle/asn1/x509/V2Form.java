package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class V2Form
  extends ASN1Object
{
  GeneralNames aAT;
  IssuerSerial azw;
  ObjectDigestInfo azy;
  
  public V2Form(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() > 3) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    int i = 0;
    if (!(paramASN1Sequence.ϲ(0) instanceof ASN1TaggedObject))
    {
      i = 0 + 1;
      this.aAT = GeneralNames.＿(paramASN1Sequence.ϲ(0));
    }
    while (i != paramASN1Sequence.size())
    {
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(i));
      if (localASN1TaggedObject.eW() == 0) {
        this.azw = IssuerSerial.ˑ(localASN1TaggedObject, false);
      } else if (localASN1TaggedObject.eW() == 1) {
        this.azy = ObjectDigestInfo.ـ(localASN1TaggedObject, false);
      } else {
        throw new IllegalArgumentException("Bad tag number: " + localASN1TaggedObject.eW());
      }
      i += 1;
    }
  }
  
  public static V2Form ᐧ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ᓒ(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public static V2Form ᓒ(Object paramObject)
  {
    if ((paramObject instanceof V2Form)) {
      return (V2Form)paramObject;
    }
    if (paramObject != null) {
      return new V2Form(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aAT != null) {
      localASN1EncodableVector.ˊ(this.aAT);
    }
    if (this.azw != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.azw));
    }
    if (this.azy != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.azy));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public IssuerSerial getBaseCertificateID()
  {
    return this.azw;
  }
  
  public GeneralNames ih()
  {
    return this.aAT;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.V2Form
 * JD-Core Version:    0.7.0.1
 */