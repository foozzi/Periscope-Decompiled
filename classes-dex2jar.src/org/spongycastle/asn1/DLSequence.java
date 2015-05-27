package org.spongycastle.asn1;

import java.util.Enumeration;

public class DLSequence
  extends ASN1Sequence
{
  private int abm = -1;
  
  public DLSequence() {}
  
  public DLSequence(ASN1Encodable paramASN1Encodable)
  {
    super(paramASN1Encodable);
  }
  
  public DLSequence(ASN1EncodableVector paramASN1EncodableVector)
  {
    super(paramASN1EncodableVector);
  }
  
  private int fk()
  {
    if (this.abm < 0)
    {
      int i = 0;
      Enumeration localEnumeration = eT();
      while (localEnumeration.hasMoreElements()) {
        i += ((ASN1Encodable)localEnumeration.nextElement()).ez().eP().ey();
      }
      this.abm = i;
    }
    return this.abm;
  }
  
  int ey()
  {
    int i = fk();
    return StreamUtil.х(i) + 1 + i;
  }
  
  void ˊ(ASN1OutputStream paramASN1OutputStream)
  {
    ASN1OutputStream localASN1OutputStream = paramASN1OutputStream.eR();
    int i = fk();
    paramASN1OutputStream.write(48);
    paramASN1OutputStream.Ί(i);
    paramASN1OutputStream = eT();
    while (paramASN1OutputStream.hasMoreElements()) {
      localASN1OutputStream.ˋ((ASN1Encodable)paramASN1OutputStream.nextElement());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DLSequence
 * JD-Core Version:    0.7.0.1
 */