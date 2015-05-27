package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x500.DirectoryString;

public class AdditionalInformationSyntax
  extends ASN1Object
{
  private DirectoryString amI;
  
  public ASN1Primitive ez()
  {
    return this.amI.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.AdditionalInformationSyntax
 * JD-Core Version:    0.7.0.1
 */