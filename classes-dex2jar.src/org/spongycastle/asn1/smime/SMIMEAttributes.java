package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

public abstract interface SMIMEAttributes
{
  public static final ASN1ObjectIdentifier aux = PKCSObjectIdentifiers.arm;
  public static final ASN1ObjectIdentifier auy = PKCSObjectIdentifiers.arS;
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.smime.SMIMEAttributes
 * JD-Core Version:    0.7.0.1
 */