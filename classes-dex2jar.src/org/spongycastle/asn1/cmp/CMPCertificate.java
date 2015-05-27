package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AttributeCertificate;
import org.spongycastle.asn1.x509.Certificate;

public class CMPCertificate
  extends ASN1Object
  implements ASN1Choice
{
  private Certificate acd;
  private AttributeCertificate ace;
  
  public ASN1Primitive ez()
  {
    if (this.ace != null) {
      return new DERTaggedObject(true, 1, this.ace);
    }
    return this.acd.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CMPCertificate
 * JD-Core Version:    0.7.0.1
 */