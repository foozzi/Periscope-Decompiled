package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;

public class DisplayText
  extends ASN1Object
  implements ASN1Choice
{
  ASN1String ayC;
  
  public ASN1Primitive ez()
  {
    return (ASN1Primitive)this.ayC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.DisplayText
 * JD-Core Version:    0.7.0.1
 */