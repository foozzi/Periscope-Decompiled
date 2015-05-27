package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERUTF8String;

public class MetaData
  extends ASN1Object
{
  private ASN1Boolean afl;
  private DERUTF8String afm;
  private DERIA5String afn;
  private Attributes afo;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.afl);
    if (this.afm != null) {
      localASN1EncodableVector.ˊ(this.afm);
    }
    if (this.afn != null) {
      localASN1EncodableVector.ˊ(this.afn);
    }
    if (this.afo != null) {
      localASN1EncodableVector.ˊ(this.afo);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.MetaData
 * JD-Core Version:    0.7.0.1
 */