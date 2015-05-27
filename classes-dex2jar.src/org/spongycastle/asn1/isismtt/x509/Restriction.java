package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x500.DirectoryString;

public class Restriction
  extends ASN1Object
{
  private DirectoryString anv;
  
  public ASN1Primitive ez()
  {
    return this.anv.ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.isismtt.x509.Restriction
 * JD-Core Version:    0.7.0.1
 */