package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

public class KeyAgreeRecipientIdentifier
  extends ASN1Object
  implements ASN1Choice
{
  private IssuerAndSerialNumber aff;
  private RecipientKeyIdentifier afg;
  
  public ASN1Primitive ez()
  {
    if (this.aff != null) {
      return this.aff.ez();
    }
    return new DERTaggedObject(false, 0, this.afg);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.KeyAgreeRecipientIdentifier
 * JD-Core Version:    0.7.0.1
 */