package org.spongycastle.asn1.x500.style;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;

public class BCStyle
  extends AbstractX500NameStyle
{
  public static final ASN1ObjectIdentifier awA;
  public static final ASN1ObjectIdentifier awB;
  public static final ASN1ObjectIdentifier awC;
  public static final ASN1ObjectIdentifier awD;
  public static final ASN1ObjectIdentifier awE;
  public static final ASN1ObjectIdentifier awF;
  public static final ASN1ObjectIdentifier awG;
  public static final ASN1ObjectIdentifier awH;
  public static final ASN1ObjectIdentifier awI;
  public static final ASN1ObjectIdentifier awJ;
  public static final ASN1ObjectIdentifier awK;
  public static final ASN1ObjectIdentifier awL;
  public static final ASN1ObjectIdentifier awM;
  public static final ASN1ObjectIdentifier awN;
  public static final ASN1ObjectIdentifier awO;
  public static final ASN1ObjectIdentifier awP;
  public static final ASN1ObjectIdentifier awQ;
  public static final ASN1ObjectIdentifier awR;
  public static final ASN1ObjectIdentifier awS;
  public static final ASN1ObjectIdentifier awT;
  public static final ASN1ObjectIdentifier awU;
  public static final ASN1ObjectIdentifier awV;
  public static final ASN1ObjectIdentifier awW;
  private static final Hashtable awX;
  private static final Hashtable awY;
  public static final X500NameStyle awn = new BCStyle();
  public static final ASN1ObjectIdentifier awo = new ASN1ObjectIdentifier("2.5.4.6");
  public static final ASN1ObjectIdentifier awp = new ASN1ObjectIdentifier("2.5.4.10");
  public static final ASN1ObjectIdentifier awq = new ASN1ObjectIdentifier("2.5.4.11");
  public static final ASN1ObjectIdentifier awr = new ASN1ObjectIdentifier("2.5.4.12");
  public static final ASN1ObjectIdentifier aws = new ASN1ObjectIdentifier("2.5.4.3");
  public static final ASN1ObjectIdentifier awt = new ASN1ObjectIdentifier("2.5.4.5");
  public static final ASN1ObjectIdentifier awu = new ASN1ObjectIdentifier("2.5.4.9");
  public static final ASN1ObjectIdentifier awv = awt;
  public static final ASN1ObjectIdentifier aww = new ASN1ObjectIdentifier("2.5.4.7");
  public static final ASN1ObjectIdentifier awx = new ASN1ObjectIdentifier("2.5.4.8");
  public static final ASN1ObjectIdentifier awy = new ASN1ObjectIdentifier("2.5.4.4");
  public static final ASN1ObjectIdentifier awz = new ASN1ObjectIdentifier("2.5.4.42");
  protected final Hashtable awZ = ͺ(awY);
  protected final Hashtable axa = ͺ(awX);
  
  static
  {
    awA = new ASN1ObjectIdentifier("2.5.4.43");
    awB = new ASN1ObjectIdentifier("2.5.4.44");
    awC = new ASN1ObjectIdentifier("2.5.4.45");
    awD = new ASN1ObjectIdentifier("2.5.4.15");
    awE = new ASN1ObjectIdentifier("2.5.4.17");
    awF = new ASN1ObjectIdentifier("2.5.4.46");
    awG = new ASN1ObjectIdentifier("2.5.4.65");
    awH = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.1");
    awI = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.2");
    awJ = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.3");
    awK = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.4");
    awL = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.5");
    awM = new ASN1ObjectIdentifier("1.3.36.8.3.14");
    awN = new ASN1ObjectIdentifier("2.5.4.16");
    awO = new ASN1ObjectIdentifier("2.5.4.54");
    awP = X509ObjectIdentifiers.aCb;
    awQ = X509ObjectIdentifiers.aCc;
    awR = PKCSObjectIdentifiers.arb;
    awS = PKCSObjectIdentifiers.arc;
    awT = PKCSObjectIdentifiers.ari;
    awU = awR;
    awV = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
    awW = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
    awX = new Hashtable();
    awY = new Hashtable();
    awX.put(awo, "C");
    awX.put(awp, "O");
    awX.put(awr, "T");
    awX.put(awq, "OU");
    awX.put(aws, "CN");
    awX.put(aww, "L");
    awX.put(awx, "ST");
    awX.put(awt, "SERIALNUMBER");
    awX.put(awR, "E");
    awX.put(awV, "DC");
    awX.put(awW, "UID");
    awX.put(awu, "STREET");
    awX.put(awy, "SURNAME");
    awX.put(awz, "GIVENNAME");
    awX.put(awA, "INITIALS");
    awX.put(awB, "GENERATION");
    awX.put(awT, "unstructuredAddress");
    awX.put(awS, "unstructuredName");
    awX.put(awC, "UniqueIdentifier");
    awX.put(awF, "DN");
    awX.put(awG, "Pseudonym");
    awX.put(awN, "PostalAddress");
    awX.put(awM, "NameAtBirth");
    awX.put(awK, "CountryOfCitizenship");
    awX.put(awL, "CountryOfResidence");
    awX.put(awJ, "Gender");
    awX.put(awI, "PlaceOfBirth");
    awX.put(awH, "DateOfBirth");
    awX.put(awE, "PostalCode");
    awX.put(awD, "BusinessCategory");
    awX.put(awP, "TelephoneNumber");
    awX.put(awQ, "Name");
    awY.put("c", awo);
    awY.put("o", awp);
    awY.put("t", awr);
    awY.put("ou", awq);
    awY.put("cn", aws);
    awY.put("l", aww);
    awY.put("st", awx);
    awY.put("sn", awt);
    awY.put("serialnumber", awt);
    awY.put("street", awu);
    awY.put("emailaddress", awU);
    awY.put("dc", awV);
    awY.put("e", awU);
    awY.put("uid", awW);
    awY.put("surname", awy);
    awY.put("givenname", awz);
    awY.put("initials", awA);
    awY.put("generation", awB);
    awY.put("unstructuredaddress", awT);
    awY.put("unstructuredname", awS);
    awY.put("uniqueidentifier", awC);
    awY.put("dn", awF);
    awY.put("pseudonym", awG);
    awY.put("postaladdress", awN);
    awY.put("nameofbirth", awM);
    awY.put("countryofcitizenship", awK);
    awY.put("countryofresidence", awL);
    awY.put("gender", awJ);
    awY.put("placeofbirth", awI);
    awY.put("dateofbirth", awH);
    awY.put("postalcode", awE);
    awY.put("businesscategory", awD);
    awY.put("telephonenumber", awP);
    awY.put("name", awQ);
  }
  
  public String ˋ(X500Name paramX500Name)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 1;
    paramX500Name = paramX500Name.gK();
    int i = 0;
    while (i < paramX500Name.length)
    {
      if (j != 0) {
        j = 0;
      } else {
        localStringBuffer.append(',');
      }
      IETFUtils.ˊ(localStringBuffer, paramX500Name[i], this.axa);
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  protected ASN1Encodable ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    if ((paramASN1ObjectIdentifier.equals(awR)) || (paramASN1ObjectIdentifier.equals(awV))) {
      return new DERIA5String(paramString);
    }
    if (paramASN1ObjectIdentifier.equals(awH)) {
      return new ASN1GeneralizedTime(paramString);
    }
    if ((paramASN1ObjectIdentifier.equals(awo)) || (paramASN1ObjectIdentifier.equals(awt)) || (paramASN1ObjectIdentifier.equals(awF)) || (paramASN1ObjectIdentifier.equals(awP))) {
      return new DERPrintableString(paramString);
    }
    return super.ˎ(paramASN1ObjectIdentifier, paramString);
  }
  
  public ASN1ObjectIdentifier נ(String paramString)
  {
    return IETFUtils.ˎ(paramString, this.awZ);
  }
  
  public RDN[] ר(String paramString)
  {
    return IETFUtils.ˊ(paramString, this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.BCStyle
 * JD-Core Version:    0.7.0.1
 */