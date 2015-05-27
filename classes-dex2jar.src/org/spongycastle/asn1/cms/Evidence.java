package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

public class Evidence
  extends ASN1Object
  implements ASN1Choice
{
  private TimeStampTokenEvidence aeW;
  
  public ASN1Primitive ez()
  {
    if (this.aeW != null) {
      return new DERTaggedObject(false, 0, this.aeW);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.Evidence
 * JD-Core Version:    0.7.0.1
 */