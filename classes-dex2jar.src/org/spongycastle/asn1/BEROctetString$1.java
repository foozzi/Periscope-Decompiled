package org.spongycastle.asn1;

import java.util.Enumeration;

class BEROctetString$1
  implements Enumeration
{
  int aaN = 0;
  
  BEROctetString$1(BEROctetString paramBEROctetString) {}
  
  public boolean hasMoreElements()
  {
    return this.aaN < BEROctetString.ˊ(this.aaO).length;
  }
  
  public Object nextElement()
  {
    ASN1OctetString[] arrayOfASN1OctetString = BEROctetString.ˊ(this.aaO);
    int i = this.aaN;
    this.aaN = (i + 1);
    return arrayOfASN1OctetString[i];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BEROctetString.1
 * JD-Core Version:    0.7.0.1
 */