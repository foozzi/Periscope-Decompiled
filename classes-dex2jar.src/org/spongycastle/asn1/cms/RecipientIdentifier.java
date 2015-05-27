package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class RecipientIdentifier
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1Encodable afp;
  
  public ASN1Primitive ez()
  {
    return this.afp.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.RecipientIdentifier
 * JD-Core Version:    0.7.0.1
 */