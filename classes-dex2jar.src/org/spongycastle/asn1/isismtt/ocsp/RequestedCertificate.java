package org.spongycastle.asn1.isismtt.ocsp;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Certificate;

public class RequestedCertificate
  extends ASN1Object
  implements ASN1Choice
{
  private Certificate amF;
  private byte[] amG;
  private byte[] amH;
  
  public ASN1Primitive ez()
  {
    if (this.amG != null) {
      return new DERTaggedObject(0, new DEROctetString(this.amG));
    }
    if (this.amH != null) {
      return new DERTaggedObject(1, new DEROctetString(this.amH));
    }
    return this.amF.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.ocsp.RequestedCertificate
 * JD-Core Version:    0.7.0.1
 */