package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class AuthorityInformationAccess
  extends ASN1Object
{
  private AccessDescription[] ayk;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    int i = 0;
    while (i != this.ayk.length)
    {
      localASN1EncodableVector.ˊ(this.ayk[i]);
      i += 1;
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public String toString()
  {
    return "AuthorityInformationAccess: Oid(" + this.ayk[0].gM().getId() + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AuthorityInformationAccess
 * JD-Core Version:    0.7.0.1
 */