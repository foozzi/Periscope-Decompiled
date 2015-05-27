package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class PBMParameter
  extends ASN1Object
{
  private AlgorithmIdentifier acW;
  private ASN1OctetString adk;
  private ASN1Integer adl;
  private AlgorithmIdentifier adm;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.adk);
    localASN1EncodableVector.ˊ(this.acW);
    localASN1EncodableVector.ˊ(this.adl);
    localASN1EncodableVector.ˊ(this.adm);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PBMParameter
 * JD-Core Version:    0.7.0.1
 */