package org.spongycastle.asn1;

import java.util.Vector;

public class ASN1EncodableVector
{
  Vector aaj = new Vector();
  
  public int size()
  {
    return this.aaj.size();
  }
  
  public ASN1Encodable ʱ(int paramInt)
  {
    return (ASN1Encodable)this.aaj.elementAt(paramInt);
  }
  
  public void ˊ(ASN1Encodable paramASN1Encodable)
  {
    this.aaj.addElement(paramASN1Encodable);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ASN1EncodableVector
 * JD-Core Version:    0.7.0.1
 */