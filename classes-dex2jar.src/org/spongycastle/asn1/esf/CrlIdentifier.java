package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1UTCTime;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.X500Name;

public class CrlIdentifier
  extends ASN1Object
{
  private X500Name ajY;
  private ASN1UTCTime ajZ;
  private ASN1Integer aka;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ajY.ez());
    localASN1EncodableVector.ˊ(this.ajZ);
    if (this.aka != null) {
      localASN1EncodableVector.ˊ(this.aka);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.esf.CrlIdentifier
 * JD-Core Version:    0.7.0.1
 */