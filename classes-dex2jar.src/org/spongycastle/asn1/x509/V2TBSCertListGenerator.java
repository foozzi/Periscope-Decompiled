package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

public class V2TBSCertListGenerator
{
  private static final ASN1Sequence[] aAV = new ASN1Sequence[11];
  private Time aAC = null;
  private ASN1EncodableVector aAU = new ASN1EncodableVector();
  private ASN1Integer aek = new ASN1Integer(1L);
  private Extensions ahV = null;
  
  static
  {
    aAV[0] = כ(0);
    aAV[1] = כ(1);
    aAV[2] = כ(2);
    aAV[3] = כ(3);
    aAV[4] = כ(4);
    aAV[5] = כ(5);
    aAV[6] = כ(6);
    aAV[7] = כ(7);
    aAV[8] = כ(8);
    aAV[9] = כ(9);
    aAV[10] = כ(10);
  }
  
  private static ASN1Sequence כ(int paramInt)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    CRLReason localCRLReason = CRLReason.ך(paramInt);
    try
    {
      localASN1EncodableVector.ˊ(Extension.ayP);
      localASN1EncodableVector.ˊ(new DEROctetString(localCRLReason.getEncoded()));
    }
    catch (IOException localIOException)
    {
      throw new IllegalArgumentException("error encoding reason: " + localIOException);
    }
    return new DERSequence(localIOException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.V2TBSCertListGenerator
 * JD-Core Version:    0.7.0.1
 */