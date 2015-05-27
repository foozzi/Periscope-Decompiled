package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class ObjectDigestInfo
  extends ASN1Object
{
  ASN1Enumerated aAk;
  ASN1ObjectIdentifier aAl;
  DERBitString aAm;
  AlgorithmIdentifier aes;
  
  private ObjectDigestInfo(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() > 4) || (paramASN1Sequence.size() < 3)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aAk = ASN1Enumerated.ᵛ(paramASN1Sequence.ϲ(0));
    int i = 0;
    if (paramASN1Sequence.size() == 4)
    {
      this.aAl = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(1));
      i = 0 + 1;
    }
    this.aes = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(i + 1));
    this.aAm = DERBitString.ʸ(paramASN1Sequence.ϲ(i + 2));
  }
  
  public static ObjectDigestInfo ג(Object paramObject)
  {
    if ((paramObject instanceof ObjectDigestInfo)) {
      return (ObjectDigestInfo)paramObject;
    }
    if (paramObject != null) {
      return new ObjectDigestInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public static ObjectDigestInfo ـ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ג(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aAk);
    if (this.aAl != null) {
      localASN1EncodableVector.ˊ(this.aAl);
    }
    localASN1EncodableVector.ˊ(this.aes);
    localASN1EncodableVector.ˊ(this.aAm);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1Enumerated hM()
  {
    return this.aAk;
  }
  
  public ASN1ObjectIdentifier hN()
  {
    return this.aAl;
  }
  
  public AlgorithmIdentifier hO()
  {
    return this.aes;
  }
  
  public DERBitString hP()
  {
    return this.aAm;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.ObjectDigestInfo
 * JD-Core Version:    0.7.0.1
 */