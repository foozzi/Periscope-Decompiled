package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

public abstract interface X509ObjectIdentifiers
{
  public static final ASN1ObjectIdentifier aBV = new ASN1ObjectIdentifier("2.5.4.3");
  public static final ASN1ObjectIdentifier aBW = new ASN1ObjectIdentifier("2.5.4.6");
  public static final ASN1ObjectIdentifier aBX = new ASN1ObjectIdentifier("2.5.4.7");
  public static final ASN1ObjectIdentifier aBY = new ASN1ObjectIdentifier("2.5.4.8");
  public static final ASN1ObjectIdentifier aBZ = new ASN1ObjectIdentifier("2.5.4.10");
  public static final ASN1ObjectIdentifier aCa = new ASN1ObjectIdentifier("2.5.4.11");
  public static final ASN1ObjectIdentifier aCb = new ASN1ObjectIdentifier("2.5.4.20");
  public static final ASN1ObjectIdentifier aCc = new ASN1ObjectIdentifier("2.5.4.41");
  public static final ASN1ObjectIdentifier aCd = new ASN1ObjectIdentifier("1.3.14.3.2.26");
  public static final ASN1ObjectIdentifier aCe;
  public static final ASN1ObjectIdentifier aCf;
  public static final ASN1ObjectIdentifier aCg;
  public static final ASN1ObjectIdentifier aCh;
  public static final ASN1ObjectIdentifier aCi;
  public static final ASN1ObjectIdentifier aCj = axV;
  public static final ASN1ObjectIdentifier aCk = axU;
  public static final ASN1ObjectIdentifier agi;
  public static final ASN1ObjectIdentifier auZ = new ASN1ObjectIdentifier("1.3.36.3.2.1");
  public static final ASN1ObjectIdentifier axU;
  public static final ASN1ObjectIdentifier axV;
  
  static
  {
    aCe = new ASN1ObjectIdentifier("1.3.36.3.3.1.2");
    aCf = new ASN1ObjectIdentifier("2.5.8.1.1");
    agi = new ASN1ObjectIdentifier("1.3.6.1.5.5.7");
    aCg = agi.ﾆ("1");
    aCh = new ASN1ObjectIdentifier("2.5.29");
    aCi = agi.ﾆ("48");
    axU = aCi.ﾆ("2");
    axV = aCi.ﾆ("1");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509ObjectIdentifiers
 * JD-Core Version:    0.7.0.1
 */