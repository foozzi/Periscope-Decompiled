package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.cms.EnvelopedData;

public class EncryptedKey
  extends ASN1Object
  implements ASN1Choice
{
  private EnvelopedData agx;
  private EncryptedValue agy;
  
  public ASN1Primitive ez()
  {
    if (this.agy != null) {
      return this.agy.ez();
    }
    return new DERTaggedObject(false, 0, this.agx);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.EncryptedKey
 * JD-Core Version:    0.7.0.1
 */