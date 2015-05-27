package org.spongycastle.asn1.pkcs;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.DLSequence;

public class ContentInfo
  extends ASN1Object
  implements PKCSObjectIdentifiers
{
  private ASN1Encodable aeQ;
  private ASN1ObjectIdentifier aew;
  private boolean apR = true;
  
  public ContentInfo(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aew = paramASN1ObjectIdentifier;
    this.aeQ = paramASN1Encodable;
  }
  
  private ContentInfo(ASN1Sequence paramASN1Sequence)
  {
    Enumeration localEnumeration = paramASN1Sequence.eT();
    this.aew = ((ASN1ObjectIdentifier)localEnumeration.nextElement());
    if (localEnumeration.hasMoreElements()) {
      this.aeQ = ((ASN1TaggedObject)localEnumeration.nextElement()).eY();
    }
    this.apR = (paramASN1Sequence instanceof BERSequence);
  }
  
  public static ContentInfo ᔋ(Object paramObject)
  {
    if ((paramObject instanceof ContentInfo)) {
      return (ContentInfo)paramObject;
    }
    if (paramObject != null) {
      return new ContentInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aew);
    if (this.aeQ != null) {
      localASN1EncodableVector.ˊ(new BERTaggedObject(true, 0, this.aeQ));
    }
    if (this.apR) {
      return new BERSequence(localASN1EncodableVector);
    }
    return new DLSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier fF()
  {
    return this.aew;
  }
  
  public ASN1Encodable fG()
  {
    return this.aeQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.ContentInfo
 * JD-Core Version:    0.7.0.1
 */