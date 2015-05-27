package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class AccessDescription
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier axU = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.48.2");
  public static final ASN1ObjectIdentifier axV = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.48.1");
  ASN1ObjectIdentifier axW;
  GeneralName axX;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.axW);
    localASN1EncodableVector.ˊ(this.axX);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier gM()
  {
    return this.axW;
  }
  
  public String toString()
  {
    return "AccessDescription: Oid(" + this.axW.getId() + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AccessDescription
 * JD-Core Version:    0.7.0.1
 */