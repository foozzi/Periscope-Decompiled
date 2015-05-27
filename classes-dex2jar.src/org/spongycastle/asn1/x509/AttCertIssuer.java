package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERTaggedObject;

public class AttCertIssuer
  extends ASN1Object
  implements ASN1Choice
{
  ASN1Encodable aaF;
  ASN1Primitive axZ;
  
  public AttCertIssuer(GeneralNames paramGeneralNames)
  {
    this.aaF = paramGeneralNames;
    this.axZ = this.aaF.ez();
  }
  
  public AttCertIssuer(V2Form paramV2Form)
  {
    this.aaF = paramV2Form;
    this.axZ = new DERTaggedObject(false, 0, this.aaF);
  }
  
  public static AttCertIssuer ᓫ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof AttCertIssuer))) {
      return (AttCertIssuer)paramObject;
    }
    if ((paramObject instanceof V2Form)) {
      return new AttCertIssuer(V2Form.ᓒ(paramObject));
    }
    if ((paramObject instanceof GeneralNames)) {
      return new AttCertIssuer((GeneralNames)paramObject);
    }
    if ((paramObject instanceof ASN1TaggedObject)) {
      return new AttCertIssuer(V2Form.ᐧ((ASN1TaggedObject)paramObject, false));
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new AttCertIssuer(GeneralNames.＿(paramObject));
    }
    throw new IllegalArgumentException("unknown object in factory: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    return this.axZ;
  }
  
  public ASN1Encodable gN()
  {
    return this.aaF;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AttCertIssuer
 * JD-Core Version:    0.7.0.1
 */