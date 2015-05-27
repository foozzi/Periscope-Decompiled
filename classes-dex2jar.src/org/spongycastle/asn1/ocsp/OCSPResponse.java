package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class OCSPResponse
  extends ASN1Object
{
  OCSPResponseStatus apf;
  ResponseBytes apg;
  
  private OCSPResponse(ASN1Sequence paramASN1Sequence)
  {
    this.apf = OCSPResponseStatus.ᐢ(paramASN1Sequence.ϲ(0));
    if (paramASN1Sequence.size() == 2) {
      this.apg = ResponseBytes.ι((ASN1TaggedObject)paramASN1Sequence.ϲ(1), true);
    }
  }
  
  public static OCSPResponse ৲(Object paramObject)
  {
    if ((paramObject instanceof OCSPResponse)) {
      return (OCSPResponse)paramObject;
    }
    if (paramObject != null) {
      return new OCSPResponse(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.apf);
    if (this.apg != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.apg));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.OCSPResponse
 * JD-Core Version:    0.7.0.1
 */