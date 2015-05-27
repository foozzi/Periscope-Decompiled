package org.spongycastle.asn1.x509.qualified;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class MonetaryValue
  extends ASN1Object
{
  private Iso4217CurrencyCode aCs;
  private ASN1Integer amP;
  private ASN1Integer amQ;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCs);
    localASN1EncodableVector.ˊ(this.amP);
    localASN1EncodableVector.ˊ(this.amQ);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.qualified.MonetaryValue
 * JD-Core Version:    0.7.0.1
 */