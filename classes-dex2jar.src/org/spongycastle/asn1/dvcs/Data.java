package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.DigestInfo;

public class Data
  extends ASN1Object
  implements ASN1Choice
{
  private DigestInfo ahP;
  private ASN1Sequence ahU;
  private ASN1OctetString air;
  
  public ASN1Primitive ez()
  {
    if (this.air != null) {
      return this.air.ez();
    }
    if (this.ahP != null) {
      return this.ahP.ez();
    }
    return new DERTaggedObject(false, 0, this.ahU);
  }
  
  public String toString()
  {
    if (this.air != null) {
      return "Data {\n" + this.air + "}\n";
    }
    if (this.ahP != null) {
      return "Data {\n" + this.ahP + "}\n";
    }
    return "Data {\n" + this.ahU + "}\n";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.Data
 * JD-Core Version:    0.7.0.1
 */