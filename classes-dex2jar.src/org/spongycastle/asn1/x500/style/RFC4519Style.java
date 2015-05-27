package org.spongycastle.asn1.x500.style;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

public class RFC4519Style
  extends AbstractX500NameStyle
{
  private static final Hashtable awX;
  private static final Hashtable awY;
  public static final X500NameStyle awn = new RFC4519Style();
  public static final ASN1ObjectIdentifier axA;
  public static final ASN1ObjectIdentifier axB;
  public static final ASN1ObjectIdentifier axC;
  public static final ASN1ObjectIdentifier axD;
  public static final ASN1ObjectIdentifier axE;
  public static final ASN1ObjectIdentifier axF;
  public static final ASN1ObjectIdentifier axG;
  public static final ASN1ObjectIdentifier axH;
  public static final ASN1ObjectIdentifier axI;
  public static final ASN1ObjectIdentifier axJ;
  public static final ASN1ObjectIdentifier axK;
  public static final ASN1ObjectIdentifier axL;
  public static final ASN1ObjectIdentifier axM;
  public static final ASN1ObjectIdentifier axN;
  public static final ASN1ObjectIdentifier axO;
  public static final ASN1ObjectIdentifier axP;
  public static final ASN1ObjectIdentifier axQ;
  public static final ASN1ObjectIdentifier axR;
  public static final ASN1ObjectIdentifier axb = new ASN1ObjectIdentifier("2.5.4.15");
  public static final ASN1ObjectIdentifier axc = new ASN1ObjectIdentifier("2.5.4.6");
  public static final ASN1ObjectIdentifier axd = new ASN1ObjectIdentifier("2.5.4.3");
  public static final ASN1ObjectIdentifier axe = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
  public static final ASN1ObjectIdentifier axf = new ASN1ObjectIdentifier("2.5.4.13");
  public static final ASN1ObjectIdentifier axg = new ASN1ObjectIdentifier("2.5.4.27");
  public static final ASN1ObjectIdentifier axh = new ASN1ObjectIdentifier("2.5.4.49");
  public static final ASN1ObjectIdentifier axi = new ASN1ObjectIdentifier("2.5.4.46");
  public static final ASN1ObjectIdentifier axj = new ASN1ObjectIdentifier("2.5.4.47");
  public static final ASN1ObjectIdentifier axk = new ASN1ObjectIdentifier("2.5.4.23");
  public static final ASN1ObjectIdentifier axl = new ASN1ObjectIdentifier("2.5.4.44");
  public static final ASN1ObjectIdentifier axm = new ASN1ObjectIdentifier("2.5.4.42");
  public static final ASN1ObjectIdentifier axn = new ASN1ObjectIdentifier("2.5.4.51");
  public static final ASN1ObjectIdentifier axo = new ASN1ObjectIdentifier("2.5.4.43");
  public static final ASN1ObjectIdentifier axp = new ASN1ObjectIdentifier("2.5.4.25");
  public static final ASN1ObjectIdentifier axq = new ASN1ObjectIdentifier("2.5.4.7");
  public static final ASN1ObjectIdentifier axr = new ASN1ObjectIdentifier("2.5.4.31");
  public static final ASN1ObjectIdentifier axs = new ASN1ObjectIdentifier("2.5.4.41");
  public static final ASN1ObjectIdentifier axt = new ASN1ObjectIdentifier("2.5.4.10");
  public static final ASN1ObjectIdentifier axu = new ASN1ObjectIdentifier("2.5.4.11");
  public static final ASN1ObjectIdentifier axv = new ASN1ObjectIdentifier("2.5.4.32");
  public static final ASN1ObjectIdentifier axw = new ASN1ObjectIdentifier("2.5.4.19");
  public static final ASN1ObjectIdentifier axx = new ASN1ObjectIdentifier("2.5.4.16");
  public static final ASN1ObjectIdentifier axy = new ASN1ObjectIdentifier("2.5.4.17");
  public static final ASN1ObjectIdentifier axz = new ASN1ObjectIdentifier("2.5.4.18");
  protected final Hashtable awZ = ͺ(awY);
  protected final Hashtable axa = ͺ(awX);
  
  static
  {
    axA = new ASN1ObjectIdentifier("2.5.4.28");
    axB = new ASN1ObjectIdentifier("2.5.4.26");
    axC = new ASN1ObjectIdentifier("2.5.4.33");
    axD = new ASN1ObjectIdentifier("2.5.4.14");
    axE = new ASN1ObjectIdentifier("2.5.4.34");
    axF = new ASN1ObjectIdentifier("2.5.4.5");
    axG = new ASN1ObjectIdentifier("2.5.4.4");
    axH = new ASN1ObjectIdentifier("2.5.4.8");
    axI = new ASN1ObjectIdentifier("2.5.4.9");
    axJ = new ASN1ObjectIdentifier("2.5.4.20");
    axK = new ASN1ObjectIdentifier("2.5.4.22");
    axL = new ASN1ObjectIdentifier("2.5.4.21");
    axM = new ASN1ObjectIdentifier("2.5.4.12");
    axN = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
    axO = new ASN1ObjectIdentifier("2.5.4.50");
    axP = new ASN1ObjectIdentifier("2.5.4.35");
    axQ = new ASN1ObjectIdentifier("2.5.4.24");
    axR = new ASN1ObjectIdentifier("2.5.4.45");
    awX = new Hashtable();
    awY = new Hashtable();
    awX.put(axb, "businessCategory");
    awX.put(axc, "c");
    awX.put(axd, "cn");
    awX.put(axe, "dc");
    awX.put(axf, "description");
    awX.put(axg, "destinationIndicator");
    awX.put(axh, "distinguishedName");
    awX.put(axi, "dnQualifier");
    awX.put(axj, "enhancedSearchGuide");
    awX.put(axk, "facsimileTelephoneNumber");
    awX.put(axl, "generationQualifier");
    awX.put(axm, "givenName");
    awX.put(axn, "houseIdentifier");
    awX.put(axo, "initials");
    awX.put(axp, "internationalISDNNumber");
    awX.put(axq, "l");
    awX.put(axr, "member");
    awX.put(axs, "name");
    awX.put(axt, "o");
    awX.put(axu, "ou");
    awX.put(axv, "owner");
    awX.put(axw, "physicalDeliveryOfficeName");
    awX.put(axx, "postalAddress");
    awX.put(axy, "postalCode");
    awX.put(axz, "postOfficeBox");
    awX.put(axA, "preferredDeliveryMethod");
    awX.put(axB, "registeredAddress");
    awX.put(axC, "roleOccupant");
    awX.put(axD, "searchGuide");
    awX.put(axE, "seeAlso");
    awX.put(axF, "serialNumber");
    awX.put(axG, "sn");
    awX.put(axH, "st");
    awX.put(axI, "street");
    awX.put(axJ, "telephoneNumber");
    awX.put(axK, "teletexTerminalIdentifier");
    awX.put(axL, "telexNumber");
    awX.put(axM, "title");
    awX.put(axN, "uid");
    awX.put(axO, "uniqueMember");
    awX.put(axP, "userPassword");
    awX.put(axQ, "x121Address");
    awX.put(axR, "x500UniqueIdentifier");
    awY.put("businesscategory", axb);
    awY.put("c", axc);
    awY.put("cn", axd);
    awY.put("dc", axe);
    awY.put("description", axf);
    awY.put("destinationindicator", axg);
    awY.put("distinguishedname", axh);
    awY.put("dnqualifier", axi);
    awY.put("enhancedsearchguide", axj);
    awY.put("facsimiletelephonenumber", axk);
    awY.put("generationqualifier", axl);
    awY.put("givenname", axm);
    awY.put("houseidentifier", axn);
    awY.put("initials", axo);
    awY.put("internationalisdnnumber", axp);
    awY.put("l", axq);
    awY.put("member", axr);
    awY.put("name", axs);
    awY.put("o", axt);
    awY.put("ou", axu);
    awY.put("owner", axv);
    awY.put("physicaldeliveryofficename", axw);
    awY.put("postaladdress", axx);
    awY.put("postalcode", axy);
    awY.put("postofficebox", axz);
    awY.put("preferreddeliverymethod", axA);
    awY.put("registeredaddress", axB);
    awY.put("roleoccupant", axC);
    awY.put("searchguide", axD);
    awY.put("seealso", axE);
    awY.put("serialnumber", axF);
    awY.put("sn", axG);
    awY.put("st", axH);
    awY.put("street", axI);
    awY.put("telephonenumber", axJ);
    awY.put("teletexterminalidentifier", axK);
    awY.put("telexnumber", axL);
    awY.put("title", axM);
    awY.put("uid", axN);
    awY.put("uniquemember", axO);
    awY.put("userpassword", axP);
    awY.put("x121address", axQ);
    awY.put("x500uniqueidentifier", axR);
  }
  
  public String ˋ(X500Name paramX500Name)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int j = 1;
    paramX500Name = paramX500Name.gK();
    int i = paramX500Name.length - 1;
    while (i >= 0)
    {
      if (j != 0) {
        j = 0;
      } else {
        localStringBuffer.append(',');
      }
      IETFUtils.ˊ(localStringBuffer, paramX500Name[i], this.axa);
      i -= 1;
    }
    return localStringBuffer.toString();
  }
  
  protected ASN1Encodable ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    if (paramASN1ObjectIdentifier.equals(axe)) {
      return new DERIA5String(paramString);
    }
    if ((paramASN1ObjectIdentifier.equals(axc)) || (paramASN1ObjectIdentifier.equals(axF)) || (paramASN1ObjectIdentifier.equals(axi)) || (paramASN1ObjectIdentifier.equals(axJ))) {
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
    paramString = IETFUtils.ˊ(paramString, this);
    RDN[] arrayOfRDN = new RDN[paramString.length];
    int i = 0;
    while (i != paramString.length)
    {
      arrayOfRDN[(arrayOfRDN.length - i - 1)] = paramString[i];
      i += 1;
    }
    return arrayOfRDN;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.RFC4519Style
 * JD-Core Version:    0.7.0.1
 */