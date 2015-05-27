package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class CertificatePolicies
  extends ASN1Object
{
  private final PolicyInformation[] ayA;
  
  public ASN1Primitive ez()
  {
    return new DERSequence(this.ayA);
  }
  
  public String toString()
  {
    String str1 = null;
    int i = 0;
    while (i < this.ayA.length)
    {
      String str2 = str1;
      if (str1 != null) {
        str2 = str1 + ", ";
      }
      str1 = str2 + this.ayA[i];
      i += 1;
    }
    return "CertificatePolicies: " + str1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CertificatePolicies
 * JD-Core Version:    0.7.0.1
 */