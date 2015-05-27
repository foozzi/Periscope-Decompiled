package org.spongycastle.asn1.x509.qualified;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class BiometricData
  extends ASN1Object
{
  private TypeOfBiometricData aCl;
  private ASN1OctetString aCm;
  private DERIA5String aCn;
  private AlgorithmIdentifier akB;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCl);
    localASN1EncodableVector.ˊ(this.akB);
    localASN1EncodableVector.ˊ(this.aCm);
    if (this.aCn != null) {
      localASN1EncodableVector.ˊ(this.aCn);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.qualified.BiometricData
 * JD-Core Version:    0.7.0.1
 */