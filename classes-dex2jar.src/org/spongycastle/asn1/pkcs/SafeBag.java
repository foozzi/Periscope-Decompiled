package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DLSequence;
import org.spongycastle.asn1.DLTaggedObject;

public class SafeBag
  extends ASN1Object
{
  private ASN1ObjectIdentifier atd;
  private ASN1Encodable ate;
  private ASN1Set atf;
  
  public SafeBag(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable, ASN1Set paramASN1Set)
  {
    this.atd = paramASN1ObjectIdentifier;
    this.ate = paramASN1Encodable;
    this.atf = paramASN1Set;
  }
  
  private SafeBag(ASN1Sequence paramASN1Sequence)
  {
    this.atd = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(0));
    this.ate = ((ASN1TaggedObject)paramASN1Sequence.ϲ(1)).eY();
    if (paramASN1Sequence.size() == 3) {
      this.atf = ((ASN1Set)paramASN1Sequence.ϲ(2));
    }
  }
  
  public static SafeBag Ι(Object paramObject)
  {
    if ((paramObject instanceof SafeBag)) {
      return (SafeBag)paramObject;
    }
    if (paramObject != null) {
      return new SafeBag(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.atd);
    localASN1EncodableVector.ˊ(new DLTaggedObject(true, 0, this.ate));
    if (this.atf != null) {
      localASN1EncodableVector.ˊ(this.atf);
    }
    return new DLSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier gl()
  {
    return this.atd;
  }
  
  public ASN1Encodable gm()
  {
    return this.ate;
  }
  
  public ASN1Set gn()
  {
    return this.atf;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.SafeBag
 * JD-Core Version:    0.7.0.1
 */