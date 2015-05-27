package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

public class SMIMECapability
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier arv = PKCSObjectIdentifiers.arv;
  public static final ASN1ObjectIdentifier arw = PKCSObjectIdentifiers.arw;
  public static final ASN1ObjectIdentifier arx = PKCSObjectIdentifiers.arx;
  public static final ASN1ObjectIdentifier auA = new ASN1ObjectIdentifier("1.3.14.3.2.7");
  public static final ASN1ObjectIdentifier auB = PKCSObjectIdentifiers.aqO;
  public static final ASN1ObjectIdentifier auC = PKCSObjectIdentifiers.aqP;
  public static final ASN1ObjectIdentifier auE = NISTObjectIdentifiers.aoj;
  public static final ASN1ObjectIdentifier auF = NISTObjectIdentifiers.aoq;
  public static final ASN1ObjectIdentifier auG = NISTObjectIdentifiers.aox;
  private ASN1ObjectIdentifier auH;
  private ASN1Encodable auI;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.auH);
    if (this.auI != null) {
      localASN1EncodableVector.ˊ(this.auI);
    }
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.smime.SMIMECapability
 * JD-Core Version:    0.7.0.1
 */