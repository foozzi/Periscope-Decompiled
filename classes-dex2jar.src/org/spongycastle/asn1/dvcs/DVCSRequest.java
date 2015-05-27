package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.GeneralName;

public class DVCSRequest
  extends ASN1Object
{
  private GeneralName ahX;
  private DVCSRequestInformation aie;
  private Data aif;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aie);
    localASN1EncodableVector.ˊ(this.aif);
    if (this.ahX != null) {
      localASN1EncodableVector.ˊ(this.ahX);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("DVCSRequest {\nrequestInformation: ").append(this.aie).append("\n").append("data: ").append(this.aif).append("\n");
    String str;
    if (this.ahX != null) {
      str = "transactionIdentifier: " + this.ahX + "\n";
    } else {
      str = "";
    }
    return str + "}\n";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.DVCSRequest
 * JD-Core Version:    0.7.0.1
 */