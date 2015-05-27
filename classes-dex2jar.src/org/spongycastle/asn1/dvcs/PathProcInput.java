package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.PolicyInformation;

public class PathProcInput
  extends ASN1Object
{
  private PolicyInformation[] ais;
  private boolean ait;
  private boolean aiu;
  private boolean aiv;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i != this.ais.length)
    {
      localASN1EncodableVector2.ˊ(this.ais[i]);
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    if (this.ait) {
      localASN1EncodableVector1.ˊ(new ASN1Boolean(this.ait));
    }
    if (this.aiu) {
      localASN1EncodableVector1.ˊ(new DERTaggedObject(false, 0, new ASN1Boolean(this.aiu)));
    }
    if (this.aiv) {
      localASN1EncodableVector1.ˊ(new DERTaggedObject(false, 1, new ASN1Boolean(this.aiv)));
    }
    return new DERSequence(localASN1EncodableVector1);
  }
  
  public String toString()
  {
    return "PathProcInput: {\nacceptablePolicySet: " + this.ais + "\n" + "inhibitPolicyMapping: " + this.ait + "\n" + "explicitPolicyReqd: " + this.aiu + "\n" + "inhibitAnyPolicy: " + this.aiv + "\n" + "}\n";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.PathProcInput
 * JD-Core Version:    0.7.0.1
 */