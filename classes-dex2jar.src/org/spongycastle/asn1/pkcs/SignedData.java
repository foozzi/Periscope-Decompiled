package org.spongycastle.asn1.pkcs;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class SignedData
  extends ASN1Object
  implements PKCSObjectIdentifiers
{
  private ASN1Integer aek;
  private ASN1Set afK;
  private ASN1Set afM;
  private ASN1Set afN;
  private ASN1Set afr;
  private ContentInfo asI;
  
  public SignedData(ASN1Integer paramASN1Integer, ASN1Set paramASN1Set1, ContentInfo paramContentInfo, ASN1Set paramASN1Set2, ASN1Set paramASN1Set3, ASN1Set paramASN1Set4)
  {
    this.aek = paramASN1Integer;
    this.afK = paramASN1Set1;
    this.asI = paramContentInfo;
    this.afM = paramASN1Set2;
    this.afr = paramASN1Set3;
    this.afN = paramASN1Set4;
  }
  
  public SignedData(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.aek = ((ASN1Integer)paramASN1Sequence.nextElement());
    this.afK = ((ASN1Set)paramASN1Sequence.nextElement());
    this.asI = ContentInfo.ᔋ(paramASN1Sequence.nextElement());
    while (paramASN1Sequence.hasMoreElements())
    {
      Object localObject = (ASN1Primitive)paramASN1Sequence.nextElement();
      if ((localObject instanceof ASN1TaggedObject))
      {
        localObject = (ASN1TaggedObject)localObject;
        switch (((ASN1TaggedObject)localObject).eW())
        {
        default: 
          break;
        case 0: 
          this.afM = ASN1Set.ʻ((ASN1TaggedObject)localObject, false);
          break;
        case 1: 
          this.afr = ASN1Set.ʻ((ASN1TaggedObject)localObject, false);
          break;
        }
        throw new IllegalArgumentException("unknown tag value " + ((ASN1TaggedObject)localObject).eW());
      }
      else
      {
        this.afN = ((ASN1Set)localObject);
      }
    }
  }
  
  public static SignedData І(Object paramObject)
  {
    if ((paramObject instanceof SignedData)) {
      return (SignedData)paramObject;
    }
    if (paramObject != null) {
      return new SignedData(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aek);
    localASN1EncodableVector.ˊ(this.afK);
    localASN1EncodableVector.ˊ(this.asI);
    if (this.afM != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.afM));
    }
    if (this.afr != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.afr));
    }
    localASN1EncodableVector.ˊ(this.afN);
    return new BERSequence(localASN1EncodableVector);
  }
  
  public ASN1Set go()
  {
    return this.afM;
  }
  
  public ASN1Set gp()
  {
    return this.afr;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.SignedData
 * JD-Core Version:    0.7.0.1
 */