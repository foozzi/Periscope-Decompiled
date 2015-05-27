package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class Holder
  extends ASN1Object
{
  IssuerSerial azw;
  GeneralNames azx;
  ObjectDigestInfo azy;
  private int version = 1;
  
  private Holder(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() > 3) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    int i = 0;
    while (i != paramASN1Sequence.size())
    {
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.ϲ(i));
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.azw = IssuerSerial.ˑ(localASN1TaggedObject, false);
        break;
      case 1: 
        this.azx = GeneralNames.ˍ(localASN1TaggedObject, false);
        break;
      case 2: 
        this.azy = ObjectDigestInfo.ـ(localASN1TaggedObject, false);
        break;
      }
      throw new IllegalArgumentException("unknown tag in Holder");
      i += 1;
    }
    this.version = 1;
  }
  
  private Holder(ASN1TaggedObject paramASN1TaggedObject)
  {
    switch (paramASN1TaggedObject.eW())
    {
    default: 
      break;
    case 0: 
      this.azw = IssuerSerial.ˑ(paramASN1TaggedObject, true);
      break;
    case 1: 
      this.azx = GeneralNames.ˍ(paramASN1TaggedObject, true);
      break;
    }
    throw new IllegalArgumentException("unknown tag in Holder");
    this.version = 0;
  }
  
  public static Holder İ(Object paramObject)
  {
    if ((paramObject instanceof Holder)) {
      return (Holder)paramObject;
    }
    if ((paramObject instanceof ASN1TaggedObject)) {
      return new Holder(ASN1TaggedObject.ʵ(paramObject));
    }
    if (paramObject != null) {
      return new Holder(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    if (this.version == 1)
    {
      ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
      if (this.azw != null) {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.azw));
      }
      if (this.azx != null) {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.azx));
      }
      if (this.azy != null) {
        localASN1EncodableVector.ˊ(new DERTaggedObject(false, 2, this.azy));
      }
      return new DERSequence(localASN1EncodableVector);
    }
    if (this.azx != null) {
      return new DERTaggedObject(true, 1, this.azx);
    }
    return new DERTaggedObject(true, 0, this.azw);
  }
  
  public IssuerSerial getBaseCertificateID()
  {
    return this.azw;
  }
  
  public GeneralNames getEntityName()
  {
    return this.azx;
  }
  
  public ObjectDigestInfo getObjectDigestInfo()
  {
    return this.azy;
  }
  
  public int getVersion()
  {
    return this.version;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Holder
 * JD-Core Version:    0.7.0.1
 */