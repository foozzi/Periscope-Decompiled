package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

public class OCSPResponseStatus
  extends ASN1Object
{
  private ASN1Enumerated aiA;
  
  private OCSPResponseStatus(ASN1Enumerated paramASN1Enumerated)
  {
    this.aiA = paramASN1Enumerated;
  }
  
  public static OCSPResponseStatus ᐢ(Object paramObject)
  {
    if ((paramObject instanceof OCSPResponseStatus)) {
      return (OCSPResponseStatus)paramObject;
    }
    if (paramObject != null) {
      return new OCSPResponseStatus(ASN1Enumerated.ᵛ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.aiA;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.OCSPResponseStatus
 * JD-Core Version:    0.7.0.1
 */