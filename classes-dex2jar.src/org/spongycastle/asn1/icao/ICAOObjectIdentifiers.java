package org.spongycastle.asn1.icao;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

public abstract interface ICAOObjectIdentifiers
{
  public static final ASN1ObjectIdentifier alV = new ASN1ObjectIdentifier("2.23.136");
  public static final ASN1ObjectIdentifier alW = alV.ﾆ("1");
  public static final ASN1ObjectIdentifier alX = alW.ﾆ("1");
  public static final ASN1ObjectIdentifier alY = alX.ﾆ("1");
  public static final ASN1ObjectIdentifier alZ = alX.ﾆ("2");
  public static final ASN1ObjectIdentifier ama = alX.ﾆ("3");
  public static final ASN1ObjectIdentifier amb = alX.ﾆ("4");
  public static final ASN1ObjectIdentifier amc = alX.ﾆ("5");
  public static final ASN1ObjectIdentifier amd = alX.ﾆ("6");
  public static final ASN1ObjectIdentifier ame = amd.ﾆ("1");
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.icao.ICAOObjectIdentifiers
 * JD-Core Version:    0.7.0.1
 */