package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class CertRequest
  extends ASN1Object
{
  private ASN1Integer acN;
  private CertTemplate ags;
  private Controls agt;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.acN);
    localASN1EncodableVector.ˊ(this.ags);
    if (this.agt != null) {
      localASN1EncodableVector.ˊ(this.agt);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.CertRequest
 * JD-Core Version:    0.7.0.1
 */