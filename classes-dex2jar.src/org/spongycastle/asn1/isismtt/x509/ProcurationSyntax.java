package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x500.DirectoryString;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.IssuerSerial;

public class ProcurationSyntax
  extends ASN1Object
{
  private String Sg;
  private DirectoryString amV;
  private GeneralName amW;
  private IssuerSerial amX;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.Sg != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, new DERPrintableString(this.Sg, true)));
    }
    if (this.amV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.amV));
    }
    if (this.amW != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 3, this.amW));
    } else {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 3, this.amX));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.ProcurationSyntax
 * JD-Core Version:    0.7.0.1
 */