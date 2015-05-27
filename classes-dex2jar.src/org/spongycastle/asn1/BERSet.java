package org.spongycastle.asn1;

import java.util.Enumeration;

public class BERSet
  extends ASN1Set
{
  public BERSet() {}
  
  public BERSet(ASN1Encodable paramASN1Encodable)
  {
    super(paramASN1Encodable);
  }
  
  public BERSet(ASN1EncodableVector paramASN1EncodableVector)
  {
    super(paramASN1EncodableVector, false);
  }
  
  public BERSet(ASN1Encodable[] paramArrayOfASN1Encodable)
  {
    super(paramArrayOfASN1Encodable, false);
  }
  
  int ey()
  {
    int i = 0;
    Enumeration localEnumeration = eT();
    while (localEnumeration.hasMoreElements()) {
      i += ((ASN1Encodable)localEnumeration.nextElement()).ez().ey();
    }
    return i + 2 + 2;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    paramASN1OutputStream.write(49);
    paramASN1OutputStream.write(128);
    Enumeration localEnumeration = eT();
    while (localEnumeration.hasMoreElements()) {
      paramASN1OutputStream.ˋ((ASN1Encodable)localEnumeration.nextElement());
    }
    paramASN1OutputStream.write(0);
    paramASN1OutputStream.write(0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERSet
 * JD-Core Version:    0.7.0.1
 */