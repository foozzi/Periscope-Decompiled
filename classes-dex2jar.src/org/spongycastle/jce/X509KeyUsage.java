package org.spongycastle.jce;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.KeyUsage;

public class X509KeyUsage
  extends ASN1Object
{
  private int aZM;
  
  public ASN1Primitive ez()
  {
    return new KeyUsage(this.aZM).ez();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.X509KeyUsage
 * JD-Core Version:    0.7.0.1
 */