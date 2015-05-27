package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;

public class Target
  extends ASN1Object
  implements ASN1Choice
{
  private GeneralName aAO;
  private GeneralName aAP;
  
  private Target(ASN1TaggedObject paramASN1TaggedObject)
  {
    switch (paramASN1TaggedObject.eW())
    {
    default: 
      break;
    case 0: 
      this.aAO = GeneralName.ˌ(paramASN1TaggedObject, true);
      return;
    case 1: 
      this.aAP = GeneralName.ˌ(paramASN1TaggedObject, true);
      return;
    }
    throw new IllegalArgumentException("unknown tag: " + paramASN1TaggedObject.eW());
  }
  
  public static Target ܝ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof Target))) {
      return (Target)paramObject;
    }
    if ((paramObject instanceof ASN1TaggedObject)) {
      return new Target((ASN1TaggedObject)paramObject);
    }
    throw new IllegalArgumentException("unknown object in factory: " + paramObject.getClass());
  }
  
  public ASN1Primitive ez()
  {
    if (this.aAO != null) {
      return new DERTaggedObject(true, 0, this.aAO);
    }
    return new DERTaggedObject(true, 1, this.aAP);
  }
  
  public GeneralName ic()
  {
    return this.aAP;
  }
  
  public GeneralName ie()
  {
    return this.aAO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Target
 * JD-Core Version:    0.7.0.1
 */