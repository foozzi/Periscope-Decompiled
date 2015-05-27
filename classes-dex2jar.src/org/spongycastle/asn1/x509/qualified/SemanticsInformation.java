package org.spongycastle.asn1.x509.qualified;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.GeneralName;

public class SemanticsInformation
  extends ASN1Object
{
  private ASN1ObjectIdentifier aCx;
  private GeneralName[] aCy;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    if (this.aCx != null) {
      localASN1EncodableVector1.ˊ(this.aCx);
    }
    if (this.aCy != null)
    {
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      int i = 0;
      while (i < this.aCy.length)
      {
        localASN1EncodableVector2.ˊ(this.aCy[i]);
        i += 1;
      }
      localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    }
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.qualified.SemanticsInformation
 * JD-Core Version:    0.7.0.1
 */