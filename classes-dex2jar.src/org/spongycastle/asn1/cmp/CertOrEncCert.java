package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.crmf.EncryptedValue;

public class CertOrEncCert
  extends ASN1Object
  implements ASN1Choice
{
  private CMPCertificate acJ;
  private EncryptedValue acK;
  
  public ASN1Primitive ez()
  {
    if (this.acJ != null) {
      return new DERTaggedObject(true, 0, this.acJ);
    }
    return new DERTaggedObject(true, 1, this.acK);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.CertOrEncCert
 * JD-Core Version:    0.7.0.1
 */