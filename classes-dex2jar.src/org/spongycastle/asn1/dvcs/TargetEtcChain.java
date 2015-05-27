package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class TargetEtcChain
  extends ASN1Object
{
  private CertEtcToken aiB;
  private ASN1Sequence aiC;
  private PathProcInput aiD;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiB);
    if (this.aiC != null) {
      localASN1EncodableVector.ˊ(this.aiC);
    }
    if (this.aiD != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.aiD));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("TargetEtcChain {\n");
    localStringBuffer.append("target: " + this.aiB + "\n");
    if (this.aiC != null) {
      localStringBuffer.append("chain: " + this.aiC + "\n");
    }
    if (this.aiD != null) {
      localStringBuffer.append("pathProcInput: " + this.aiD + "\n");
    }
    localStringBuffer.append("}\n");
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.TargetEtcChain
 * JD-Core Version:    0.7.0.1
 */