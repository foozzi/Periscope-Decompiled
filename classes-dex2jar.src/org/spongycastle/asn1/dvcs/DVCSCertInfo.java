package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.cmp.PKIStatusInfo;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.PolicyInformation;

public class DVCSCertInfo
  extends ASN1Object
{
  private ASN1Integer aeY;
  private DVCSRequestInformation ahO;
  private DigestInfo ahP;
  private DVCSTime ahQ;
  private PKIStatusInfo ahR;
  private PolicyInformation ahS;
  private ASN1Set ahT;
  private ASN1Sequence ahU;
  private Extensions ahV;
  private int version;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.version != 1) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.version));
    }
    localASN1EncodableVector.ˊ(this.ahO);
    localASN1EncodableVector.ˊ(this.ahP);
    localASN1EncodableVector.ˊ(this.aeY);
    localASN1EncodableVector.ˊ(this.ahQ);
    if (this.ahR != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ahR));
    }
    if (this.ahS != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.ahS));
    }
    if (this.ahT != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 2, this.ahT));
    }
    if (this.ahU != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 3, this.ahU));
    }
    if (this.ahV != null) {
      localASN1EncodableVector.ˊ(this.ahV);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("DVCSCertInfo {\n");
    if (this.version != 1) {
      localStringBuffer.append("version: " + this.version + "\n");
    }
    localStringBuffer.append("dvReqInfo: " + this.ahO + "\n");
    localStringBuffer.append("messageImprint: " + this.ahP + "\n");
    localStringBuffer.append("serialNumber: " + this.aeY + "\n");
    localStringBuffer.append("responseTime: " + this.ahQ + "\n");
    if (this.ahR != null) {
      localStringBuffer.append("dvStatus: " + this.ahR + "\n");
    }
    if (this.ahS != null) {
      localStringBuffer.append("policy: " + this.ahS + "\n");
    }
    if (this.ahT != null) {
      localStringBuffer.append("reqSignature: " + this.ahT + "\n");
    }
    if (this.ahU != null) {
      localStringBuffer.append("certs: " + this.ahU + "\n");
    }
    if (this.ahV != null) {
      localStringBuffer.append("extensions: " + this.ahV + "\n");
    }
    localStringBuffer.append("}\n");
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.dvcs.DVCSCertInfo
 * JD-Core Version:    0.7.0.1
 */