package org.spongycastle.asn1;

import java.util.Enumeration;

public class BERSequence
  extends ASN1Sequence
{
  public BERSequence() {}
  
  public BERSequence(ASN1Encodable paramASN1Encodable)
  {
    super(paramASN1Encodable);
  }
  
  public BERSequence(ASN1EncodableVector paramASN1EncodableVector)
  {
    super(paramASN1EncodableVector);
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
    paramASN1OutputStream.write(48);
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
 * Qualified Name:     org.spongycastle.asn1.BERSequence
 * JD-Core Version:    0.7.0.1
 */