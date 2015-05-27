package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

public class SMIMECapabilities
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier arv = PKCSObjectIdentifiers.arv;
  public static final ASN1ObjectIdentifier arw = PKCSObjectIdentifiers.arw;
  public static final ASN1ObjectIdentifier auA = new ASN1ObjectIdentifier("1.3.14.3.2.7");
  public static final ASN1ObjectIdentifier auB = PKCSObjectIdentifiers.aqO;
  public static final ASN1ObjectIdentifier auC = PKCSObjectIdentifiers.aqP;
  public static final ASN1ObjectIdentifier auz = PKCSObjectIdentifiers.arx;
  private ASN1Sequence auD;
  
  public ASN1Primitive ez()
  {
    return this.auD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.smime.SMIMECapabilities
 * JD-Core Version:    0.7.0.1
 */