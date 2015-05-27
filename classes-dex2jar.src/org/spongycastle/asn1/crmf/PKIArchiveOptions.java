package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

public class PKIArchiveOptions
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1Encodable agh;
  
  public ASN1Primitive ez()
  {
    if ((this.agh instanceof EncryptedKey)) {
      return new DERTaggedObject(true, 0, this.agh);
    }
    if ((this.agh instanceof ASN1OctetString)) {
      return new DERTaggedObject(false, 1, this.agh);
    }
    return new DERTaggedObject(false, 2, this.agh);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.PKIArchiveOptions
 * JD-Core Version:    0.7.0.1
 */