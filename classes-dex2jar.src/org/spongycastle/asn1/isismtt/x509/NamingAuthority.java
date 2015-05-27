package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.spongycastle.asn1.x500.DirectoryString;

public class NamingAuthority
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier amR = new ASN1ObjectIdentifier(ISISMTTObjectIdentifiers.amy + ".1");
  private ASN1ObjectIdentifier amS;
  private String amT;
  private DirectoryString amU;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.amS != null) {
      localASN1EncodableVector.ˊ(this.amS);
    }
    if (this.amT != null) {
      localASN1EncodableVector.ˊ(new DERIA5String(this.amT, true));
    }
    if (this.amU != null) {
      localASN1EncodableVector.ˊ(this.amU);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.NamingAuthority
 * JD-Core Version:    0.7.0.1
 */