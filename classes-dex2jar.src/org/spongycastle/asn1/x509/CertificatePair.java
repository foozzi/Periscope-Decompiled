package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class CertificatePair
  extends ASN1Object
{
  private Certificate ayy;
  private Certificate ayz;
  
  private CertificatePair(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() != 1) && (paramASN1Sequence.size() != 2)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      ASN1TaggedObject localASN1TaggedObject = ASN1TaggedObject.ʵ(paramASN1Sequence.nextElement());
      if (localASN1TaggedObject.eW() == 0) {
        this.ayy = Certificate.ˈ(localASN1TaggedObject, true);
      } else if (localASN1TaggedObject.eW() == 1) {
        this.ayz = Certificate.ˈ(localASN1TaggedObject, true);
      } else {
        throw new IllegalArgumentException("Bad tag number: " + localASN1TaggedObject.eW());
      }
    }
  }
  
  public CertificatePair(Certificate paramCertificate1, Certificate paramCertificate2)
  {
    this.ayy = paramCertificate1;
    this.ayz = paramCertificate2;
  }
  
  public static CertificatePair ﭔ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof CertificatePair))) {
      return (CertificatePair)paramObject;
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new CertificatePair((ASN1Sequence)paramObject);
    }
    throw new IllegalArgumentException("illegal object in getInstance: " + paramObject.getClass().getName());
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ayy != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(0, this.ayy));
    }
    if (this.ayz != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(1, this.ayz));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public Certificate hq()
  {
    return this.ayy;
  }
  
  public Certificate hr()
  {
    return this.ayz;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CertificatePair
 * JD-Core Version:    0.7.0.1
 */