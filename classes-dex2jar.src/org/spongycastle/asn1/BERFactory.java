package org.spongycastle.asn1;

class BERFactory
{
  static final BERSequence aaI = new BERSequence();
  static final BERSet aaJ = new BERSet();
  
  static BERSequence ˊ(ASN1EncodableVector paramASN1EncodableVector)
  {
    if (paramASN1EncodableVector.size() < 1) {
      return aaI;
    }
    return new BERSequence(paramASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.BERFactory
 * JD-Core Version:    0.7.0.1
 */