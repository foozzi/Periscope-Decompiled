package org.spongycastle.asn1;

import java.util.Enumeration;

public class DERSequence
  extends ASN1Sequence
{
  private int abm = -1;
  
  public DERSequence() {}
  
  public DERSequence(ASN1Encodable paramASN1Encodable)
  {
    super(paramASN1Encodable);
  }
  
  public DERSequence(ASN1EncodableVector paramASN1EncodableVector)
  {
    super(paramASN1EncodableVector);
  }
  
  public DERSequence(ASN1Encodable[] paramArrayOfASN1Encodable)
  {
    super(paramArrayOfASN1Encodable);
  }
  
  private int fk()
  {
    if (this.abm < 0)
    {
      int i = 0;
      Enumeration localEnumeration = eT();
      while (localEnumeration.hasMoreElements()) {
        i += ((ASN1Encodable)localEnumeration.nextElement()).ez().eO().ey();
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
    ASN1OutputStream localASN1OutputStream = paramASN1OutputStream.eQ();
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
 * Qualified Name:     org.spongycastle.asn1.DERSequence
 * JD-Core Version:    0.7.0.1
 */