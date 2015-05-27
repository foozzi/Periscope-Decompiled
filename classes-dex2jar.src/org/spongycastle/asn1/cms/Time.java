package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class Time
  extends ASN1Object
  implements ASN1Choice
{
  ASN1Primitive afW;
  
  public ASN1Primitive ez()
  {
    return this.afW;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.Time
 * JD-Core Version:    0.7.0.1
 */