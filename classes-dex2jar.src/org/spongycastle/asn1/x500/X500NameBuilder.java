package org.spongycastle.asn1.x500;

import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x500.style.BCStyle;

public class X500NameBuilder
{
  private X500NameStyle awl;
  private Vector awm = new Vector();
  
  public X500NameBuilder()
  {
    this(BCStyle.awn);
  }
  
  public X500NameBuilder(X500NameStyle paramX500NameStyle)
  {
    this.awl = paramX500NameStyle;
  }
  
  public X500Name gL()
  {
    RDN[] arrayOfRDN = new RDN[this.awm.size()];
    int i = 0;
    while (i != arrayOfRDN.length)
    {
      arrayOfRDN[i] = ((RDN)this.awm.elementAt(i));
      i += 1;
    }
    return new X500Name(this.awl, arrayOfRDN);
  }
  
  public X500NameBuilder ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    ˊ(paramASN1ObjectIdentifier, this.awl.ˋ(paramASN1ObjectIdentifier, paramString));
    return this;
  }
  
  public X500NameBuilder ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.awm.addElement(new RDN(paramASN1ObjectIdentifier, paramASN1Encodable));
    return this;
  }
  
  public X500NameBuilder ˊ(ASN1ObjectIdentifier[] paramArrayOfASN1ObjectIdentifier, String[] paramArrayOfString)
  {
    ASN1Encodable[] arrayOfASN1Encodable = new ASN1Encodable[paramArrayOfString.length];
    int i = 0;
    while (i != arrayOfASN1Encodable.length)
    {
      arrayOfASN1Encodable[i] = this.awl.ˋ(paramArrayOfASN1ObjectIdentifier[i], paramArrayOfString[i]);
      i += 1;
    }
    return ˊ(paramArrayOfASN1ObjectIdentifier, arrayOfASN1Encodable);
  }
  
  public X500NameBuilder ˊ(ASN1ObjectIdentifier[] paramArrayOfASN1ObjectIdentifier, ASN1Encodable[] paramArrayOfASN1Encodable)
  {
    AttributeTypeAndValue[] arrayOfAttributeTypeAndValue = new AttributeTypeAndValue[paramArrayOfASN1ObjectIdentifier.length];
    int i = 0;
    while (i != paramArrayOfASN1ObjectIdentifier.length)
    {
      arrayOfAttributeTypeAndValue[i] = new AttributeTypeAndValue(paramArrayOfASN1ObjectIdentifier[i], paramArrayOfASN1Encodable[i]);
      i += 1;
    }
    return ˊ(arrayOfAttributeTypeAndValue);
  }
  
  public X500NameBuilder ˊ(AttributeTypeAndValue[] paramArrayOfAttributeTypeAndValue)
  {
    this.awm.addElement(new RDN(paramArrayOfAttributeTypeAndValue));
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.X500NameBuilder
 * JD-Core Version:    0.7.0.1
 */