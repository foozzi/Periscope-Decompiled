package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extension;

public class CertEtcToken
  extends ASN1Object
  implements ASN1Choice
{
  private static final boolean[] ahM = { 0, 1, 0, 1, 0, 1, 0, 0, 1 };
  private int aaC;
  private ASN1Encodable agh;
  private Extension ahN;
  
  public ASN1Primitive ez()
  {
    if (this.ahN == null) {
      return new DERTaggedObject(ahM[this.aaC], this.aaC, this.agh);
    }
    return this.ahN.ez();
  }
  
  public String toString()
  {
    return "CertEtcToken {\n" + this.agh + "}\n";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.CertEtcToken
 * JD-Core Version:    0.7.0.1
 */