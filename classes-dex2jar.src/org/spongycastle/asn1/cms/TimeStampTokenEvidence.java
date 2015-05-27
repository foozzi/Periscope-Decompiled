package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class TimeStampTokenEvidence
  extends ASN1Object
{
  private TimeStampAndCRL[] afZ;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    int i = 0;
    while (i != this.afZ.length)
    {
      localASN1EncodableVector.ˊ(this.afZ[i]);
      i += 1;
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.TimeStampTokenEvidence
 * JD-Core Version:    0.7.0.1
 */