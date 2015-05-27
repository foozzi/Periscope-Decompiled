package org.spongycastle.asn1.x500;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

public abstract interface X500NameStyle
{
  public abstract int ˊ(X500Name paramX500Name);
  
  public abstract boolean ˊ(X500Name paramX500Name1, X500Name paramX500Name2);
  
  public abstract String ˋ(X500Name paramX500Name);
  
  public abstract ASN1Encodable ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString);
  
  public abstract ASN1ObjectIdentifier נ(String paramString);
  
  public abstract RDN[] ר(String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.X500NameStyle
 * JD-Core Version:    0.7.0.1
 */