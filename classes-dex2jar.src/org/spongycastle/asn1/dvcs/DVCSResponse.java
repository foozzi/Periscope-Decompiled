package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

public class DVCSResponse
  extends ASN1Object
  implements ASN1Choice
{
  private DVCSCertInfo ain;
  private DVCSErrorNotice aio;
  
  public ASN1Primitive ez()
  {
    if (this.ain != null) {
      return this.ain.ez();
    }
    return new DERTaggedObject(0, this.aio);
  }
  
  public String toString()
  {
    if (this.ain != null) {
      return "DVCSResponse {\ndvCertInfo: " + this.ain.toString() + "}\n";
    }
    if (this.aio != null) {
      return "DVCSResponse {\ndvErrorNote: " + this.aio.toString() + "}\n";
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.DVCSResponse
 * JD-Core Version:    0.7.0.1
 */