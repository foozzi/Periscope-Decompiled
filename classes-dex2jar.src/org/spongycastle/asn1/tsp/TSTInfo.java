package org.spongycastle.asn1.tsp;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;

public class TSTInfo
  extends ASN1Object
{
  private ASN1Integer aeY;
  private ASN1Integer aek;
  private Extensions ahV;
  private ASN1GeneralizedTime aip;
  private ASN1ObjectIdentifier avD;
  private MessageImprint avE;
  private Accuracy avF;
  private ASN1Boolean avG;
  private ASN1Integer avH;
  private GeneralName avI;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.avD);
    localASN1EncodableVector.ˊ(this.avE);
    localASN1EncodableVector.ˊ(this.aeY);
    localASN1EncodableVector.ˊ(this.aip);
    if (this.avF != null) {
      localASN1EncodableVector.ˊ(this.avF);
    }
    if ((this.avG != null) && (this.avG.ew())) {
      localASN1EncodableVector.ˊ(this.avG);
    }
    if (this.avH != null) {
      localASN1EncodableVector.ˊ(this.avH);
    }
    if (this.avI != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.avI));
    }
    if (this.ahV != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.ahV));
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.tsp.TSTInfo
 * JD-Core Version:    0.7.0.1
 */