package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

public class X509Extension
{
  public static final ASN1ObjectIdentifier ayH = new ASN1ObjectIdentifier("2.5.29.9");
  public static final ASN1ObjectIdentifier ayI = new ASN1ObjectIdentifier("2.5.29.14");
  public static final ASN1ObjectIdentifier ayJ = new ASN1ObjectIdentifier("2.5.29.15");
  public static final ASN1ObjectIdentifier ayK = new ASN1ObjectIdentifier("2.5.29.16");
  public static final ASN1ObjectIdentifier ayL = new ASN1ObjectIdentifier("2.5.29.17");
  public static final ASN1ObjectIdentifier ayM = new ASN1ObjectIdentifier("2.5.29.18");
  public static final ASN1ObjectIdentifier ayN = new ASN1ObjectIdentifier("2.5.29.19");
  public static final ASN1ObjectIdentifier ayO = new ASN1ObjectIdentifier("2.5.29.20");
  public static final ASN1ObjectIdentifier ayP = new ASN1ObjectIdentifier("2.5.29.21");
  public static final ASN1ObjectIdentifier ayQ = new ASN1ObjectIdentifier("2.5.29.23");
  public static final ASN1ObjectIdentifier ayR = new ASN1ObjectIdentifier("2.5.29.24");
  public static final ASN1ObjectIdentifier ayS = new ASN1ObjectIdentifier("2.5.29.27");
  public static final ASN1ObjectIdentifier ayT = new ASN1ObjectIdentifier("2.5.29.28");
  public static final ASN1ObjectIdentifier ayU = new ASN1ObjectIdentifier("2.5.29.29");
  public static final ASN1ObjectIdentifier ayV = new ASN1ObjectIdentifier("2.5.29.30");
  public static final ASN1ObjectIdentifier ayW = new ASN1ObjectIdentifier("2.5.29.31");
  public static final ASN1ObjectIdentifier ayX = new ASN1ObjectIdentifier("2.5.29.32");
  public static final ASN1ObjectIdentifier ayY = new ASN1ObjectIdentifier("2.5.29.33");
  public static final ASN1ObjectIdentifier ayZ = new ASN1ObjectIdentifier("2.5.29.35");
  public static final ASN1ObjectIdentifier aza = new ASN1ObjectIdentifier("2.5.29.36");
  public static final ASN1ObjectIdentifier azb = new ASN1ObjectIdentifier("2.5.29.37");
  public static final ASN1ObjectIdentifier azc = new ASN1ObjectIdentifier("2.5.29.46");
  public static final ASN1ObjectIdentifier azd = new ASN1ObjectIdentifier("2.5.29.54");
  public static final ASN1ObjectIdentifier aze = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.1");
  public static final ASN1ObjectIdentifier azf = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.11");
  public static final ASN1ObjectIdentifier azg = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.12");
  public static final ASN1ObjectIdentifier azh = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.2");
  public static final ASN1ObjectIdentifier azi = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.3");
  public static final ASN1ObjectIdentifier azj = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.1.4");
  public static final ASN1ObjectIdentifier azk = new ASN1ObjectIdentifier("2.5.29.56");
  public static final ASN1ObjectIdentifier azl = new ASN1ObjectIdentifier("2.5.29.55");
  ASN1OctetString akY;
  boolean azn;
  
  public X509Extension(ASN1Boolean paramASN1Boolean, ASN1OctetString paramASN1OctetString)
  {
    this.azn = paramASN1Boolean.ew();
    this.akY = paramASN1OctetString;
  }
  
  public X509Extension(boolean paramBoolean, ASN1OctetString paramASN1OctetString)
  {
    this.azn = paramBoolean;
    this.akY = paramASN1OctetString;
  }
  
  public static ASN1Primitive ˊ(X509Extension paramX509Extension)
  {
    try
    {
      paramX509Extension = ASN1Primitive.ՙ(paramX509Extension.ii().eM());
      return paramX509Extension;
    }
    catch (IOException paramX509Extension)
    {
      throw new IllegalArgumentException("can't convert extension: " + paramX509Extension);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof X509Extension)) {
      return false;
    }
    paramObject = (X509Extension)paramObject;
    return (paramObject.ii().equals(ii())) && (paramObject.isCritical() == isCritical());
  }
  
  public int hashCode()
  {
    if (isCritical()) {
      return ii().hashCode();
    }
    return ii().hashCode() ^ 0xFFFFFFFF;
  }
  
  public ASN1OctetString ii()
  {
    return this.akY;
  }
  
  public boolean isCritical()
  {
    return this.azn;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509Extension
 * JD-Core Version:    0.7.0.1
 */