package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

public class CertReqMessages
  extends ASN1Object
{
  private ASN1Sequence acI;
  
  public ASN1Primitive ez()
  {
    return this.acI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.crmf.CertReqMessages
 * JD-Core Version:    0.7.0.1
 */