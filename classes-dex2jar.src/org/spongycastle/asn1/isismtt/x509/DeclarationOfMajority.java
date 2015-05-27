package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1TaggedObject;

public class DeclarationOfMajority
  extends ASN1Object
  implements ASN1Choice
{
  private ASN1TaggedObject amN;
  
  public ASN1Primitive ez()
  {
    return this.amN;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.DeclarationOfMajority
 * JD-Core Version:    0.7.0.1
 */