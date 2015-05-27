package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.cms.ContentInfo;

public class DVCSTime
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1GeneralizedTime aip;
  private ContentInfo aiq;
  
  public ASN1Primitive ez()
  {
    if (this.aip != null) {
      return this.aip;
    }
    if (this.aiq != null) {
      return this.aiq.ez();
    }
    return null;
  }
  
  public String toString()
  {
    if (this.aip != null) {
      return this.aip.toString();
    }
    if (this.aiq != null) {
      return this.aiq.toString();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.DVCSTime
 * JD-Core Version:    0.7.0.1
 */