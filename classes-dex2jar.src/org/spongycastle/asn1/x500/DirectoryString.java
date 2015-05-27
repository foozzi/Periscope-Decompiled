package org.spongycastle.asn1.x500;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;

public class DirectoryString
  extends ASN1Object
  implements ASN1Choice, ASN1String
{
  private ASN1String awe;
  
  public ASN1Primitive ez()
  {
    return ((ASN1Encodable)this.awe).ez();
  }
  
  public String getString()
  {
    return this.awe.getString();
  }
  
  public String toString()
  {
    return this.awe.getString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.DirectoryString
 * JD-Core Version:    0.7.0.1
 */