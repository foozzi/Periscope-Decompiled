package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

public abstract interface CMSAttributes
{
  public static final ASN1ObjectIdentifier aeA = PKCSObjectIdentifiers.arP;
  public static final ASN1ObjectIdentifier aew = PKCSObjectIdentifiers.ard;
  public static final ASN1ObjectIdentifier aex = PKCSObjectIdentifiers.are;
  public static final ASN1ObjectIdentifier aey = PKCSObjectIdentifiers.arf;
  public static final ASN1ObjectIdentifier aez = PKCSObjectIdentifiers.arg;
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.CMSAttributes
 * JD-Core Version:    0.7.0.1
 */