package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERIA5String;

public class TimeStampedData
  extends ASN1Object
{
  private ASN1Integer aek;
  private DERIA5String aga;
  private MetaData agb;
  private ASN1OctetString agc;
  private Evidence agd;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    if (this.aga != null) {
      localASN1EncodableVector.ˊ(this.aga);
    }
    if (this.agb != null) {
      localASN1EncodableVector.ˊ(this.agb);
    }
    if (this.agc != null) {
      localASN1EncodableVector.ˊ(this.agc);
    }
    localASN1EncodableVector.ˊ(this.agd);
    return new BERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.TimeStampedData
 * JD-Core Version:    0.7.0.1
 */