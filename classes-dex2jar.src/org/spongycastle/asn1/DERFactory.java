package org.spongycastle.asn1;

class DERFactory
{
  static final ASN1Sequence abh = new DERSequence();
  static final ASN1Set abi = new DERSet();
  
  static ASN1Sequence ˋ(ASN1EncodableVector paramASN1EncodableVector)
  {
    if (paramASN1EncodableVector.size() < 1) {
      return abh;
    }
    return new DLSequence(paramASN1EncodableVector);
  }
  
  static ASN1Set ˎ(ASN1EncodableVector paramASN1EncodableVector)
  {
    if (paramASN1EncodableVector.size() < 1) {
      return abi;
    }
    return new DLSet(paramASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DERFactory
 * JD-Core Version:    0.7.0.1
 */