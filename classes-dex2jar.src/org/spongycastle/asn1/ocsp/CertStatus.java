package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERTaggedObject;

public class CertStatus
  extends ASN1Object
  implements ASN1Choice
{
  private int aaC = 0;
  private ASN1Encodable agh = DERNull.abj;
  
  public ASN1Primitive ez()
  {
    return new DERTaggedObject(false, this.aaC, this.agh);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.CertStatus
 * JD-Core Version:    0.7.0.1
 */