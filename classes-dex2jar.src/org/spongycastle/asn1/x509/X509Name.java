package org.spongycastle.asn1.x509;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.DERUniversalString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

public class X509Name
  extends ASN1Object
{
  private static final Boolean FALSE;
  private static final Boolean TRUE;
  public static boolean aBO;
  public static final Hashtable aBP;
  public static final Hashtable aBQ;
  public static final Hashtable aBR;
  public static final Hashtable aBS;
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
  public static final Hashtable awX;
  public static final Hashtable awY;
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
  private X509NameEntryConverter aBT = null;
  private Vector aBU = new Vector();
  private ASN1Sequence agu;
  private boolean awh;
  private int awi;
  private Vector azA = new Vector();
  private Vector azp = new Vector();
  
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
    aBO = false;
    awX = new Hashtable();
    aBP = new Hashtable();
    aBQ = new Hashtable();
    awY = new Hashtable();
    aBR = awX;
    aBS = awY;
    TRUE = new Boolean(true);
    FALSE = new Boolean(false);
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
    aBP.put(awo, "C");
    aBP.put(awp, "O");
    aBP.put(awq, "OU");
    aBP.put(aws, "CN");
    aBP.put(aww, "L");
    aBP.put(awx, "ST");
    aBP.put(awu, "STREET");
    aBP.put(awV, "DC");
    aBP.put(awW, "UID");
    aBQ.put(awo, "C");
    aBQ.put(awp, "O");
    aBQ.put(awq, "OU");
    aBQ.put(aws, "CN");
    aBQ.put(aww, "L");
    aBQ.put(awx, "ST");
    aBQ.put(awu, "STREET");
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
  
  protected X509Name() {}
  
  public X509Name(ASN1Sequence paramASN1Sequence)
  {
    this.agu = paramASN1Sequence;
    Enumeration localEnumeration = paramASN1Sequence.eT();
    while (localEnumeration.hasMoreElements())
    {
      ASN1Set localASN1Set = ASN1Set.ɩ(((ASN1Encodable)localEnumeration.nextElement()).ez());
      int i = 0;
      while (i < localASN1Set.size())
      {
        paramASN1Sequence = ASN1Sequence.ﹾ(localASN1Set.ϲ(i).ez());
        if (paramASN1Sequence.size() != 2) {
          throw new IllegalArgumentException("badly sized pair");
        }
        this.azp.addElement(ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0)));
        paramASN1Sequence = paramASN1Sequence.ϲ(1);
        if (((paramASN1Sequence instanceof ASN1String)) && (!(paramASN1Sequence instanceof DERUniversalString)))
        {
          paramASN1Sequence = ((ASN1String)paramASN1Sequence).getString();
          if ((paramASN1Sequence.length() > 0) && (paramASN1Sequence.charAt(0) == '#')) {
            this.azA.addElement("\\" + paramASN1Sequence);
          } else {
            this.azA.addElement(paramASN1Sequence);
          }
        }
        else
        {
          try
          {
            this.azA.addElement("#" + ᴵ(Hex.ײ(paramASN1Sequence.ez().getEncoded("DER"))));
          }
          catch (IOException paramASN1Sequence)
          {
            throw new IllegalArgumentException("cannot encode value");
          }
        }
        Vector localVector = this.aBU;
        if (i != 0) {
          paramASN1Sequence = TRUE;
        } else {
          paramASN1Sequence = FALSE;
        }
        localVector.addElement(paramASN1Sequence);
        i += 1;
      }
    }
  }
  
  private void ˊ(StringBuffer paramStringBuffer, Hashtable paramHashtable, ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    paramHashtable = (String)paramHashtable.get(paramASN1ObjectIdentifier);
    if (paramHashtable != null) {
      paramStringBuffer.append(paramHashtable);
    } else {
      paramStringBuffer.append(paramASN1ObjectIdentifier.getId());
    }
    paramStringBuffer.append('=');
    int m = paramStringBuffer.length();
    paramStringBuffer.append(paramString);
    int k = paramStringBuffer.length();
    int i = m;
    int j = k;
    if (paramString.length() >= 2)
    {
      i = m;
      j = k;
      if (paramString.charAt(0) == '\\')
      {
        i = m;
        j = k;
        if (paramString.charAt(1) == '#')
        {
          i = m + 2;
          j = k;
        }
      }
    }
    for (;;)
    {
      m = j;
      if (i >= j) {
        break;
      }
      m = j;
      if (paramStringBuffer.charAt(i) != ' ') {
        break;
      }
      paramStringBuffer.insert(i, "\\");
      i += 2;
      j += 1;
    }
    for (;;)
    {
      m -= 1;
      j = i;
      k = m;
      if (m <= i) {
        break;
      }
      j = i;
      k = m;
      if (paramStringBuffer.charAt(m) != ' ') {
        break;
      }
      paramStringBuffer.insert(m, '\\');
    }
    while (j <= k)
    {
      switch (paramStringBuffer.charAt(j))
      {
      default: 
        break;
      case '"': 
      case '+': 
      case ',': 
      case ';': 
      case '<': 
      case '=': 
      case '>': 
      case '\\': 
        paramStringBuffer.insert(j, "\\");
        j += 2;
        k += 1;
        break;
      }
      j += 1;
    }
  }
  
  private String د(String paramString)
  {
    String str = Strings.ʰ(paramString.trim());
    paramString = str;
    if (str.length() > 0)
    {
      paramString = str;
      if (str.charAt(0) == '#')
      {
        ASN1Primitive localASN1Primitive = ہ(str);
        paramString = str;
        if ((localASN1Primitive instanceof ASN1String)) {
          paramString = Strings.ʰ(((ASN1String)localASN1Primitive).getString().trim());
        }
      }
    }
    return paramString;
  }
  
  private ASN1Primitive ہ(String paramString)
  {
    try
    {
      paramString = ASN1Primitive.ՙ(Hex.ᵥ(paramString.substring(1)));
      return paramString;
    }
    catch (IOException paramString)
    {
      throw new IllegalStateException("unknown encoding in name: " + paramString);
    }
  }
  
  private String ܝ(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString.length() != 0)
    {
      char c1 = paramString.charAt(0);
      localStringBuffer.append(c1);
      int i = 1;
      char c2 = c1;
      while (i < paramString.length())
      {
        c1 = paramString.charAt(i);
        if ((c2 != ' ') || (c1 != ' ')) {
          localStringBuffer.append(c1);
        }
        c2 = c1;
        i += 1;
      }
    }
    return localStringBuffer.toString();
  }
  
  public static X509Name ᙆ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof X509Name))) {
      return (X509Name)paramObject;
    }
    if ((paramObject instanceof X500Name)) {
      return new X509Name(ASN1Sequence.ﹾ(((X500Name)paramObject).ez()));
    }
    if (paramObject != null) {
      return new X509Name(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  private String ᴵ(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length];
    int i = 0;
    while (i != arrayOfChar.length)
    {
      arrayOfChar[i] = ((char)(paramArrayOfByte[i] & 0xFF));
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  private boolean ᵢ(String paramString1, String paramString2)
  {
    paramString1 = د(paramString1);
    paramString2 = د(paramString2);
    return (paramString1.equals(paramString2)) || (ܝ(paramString1).equals(ܝ(paramString2)));
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((!(paramObject instanceof X509Name)) && (!(paramObject instanceof ASN1Sequence))) {
      return false;
    }
    Object localObject = ((ASN1Encodable)paramObject).ez();
    if (ez().equals(localObject)) {
      return true;
    }
    try
    {
      paramObject = ᙆ(paramObject);
    }
    catch (IllegalArgumentException paramObject)
    {
      return false;
    }
    int i1 = this.azp.size();
    if (i1 != paramObject.azp.size()) {
      return false;
    }
    localObject = new boolean[i1];
    int i;
    int j;
    int k;
    if (this.azp.elementAt(0).equals(paramObject.azp.elementAt(0)))
    {
      i = 0;
      j = i1;
      k = 1;
    }
    else
    {
      i = i1 - 1;
      j = -1;
      k = -1;
    }
    while (i != j)
    {
      int i2 = 0;
      ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)this.azp.elementAt(i);
      String str = (String)this.azA.elementAt(i);
      int m = 0;
      int n;
      for (;;)
      {
        n = i2;
        if (m >= i1) {
          break;
        }
        if ((localObject[m] == 0) && (localASN1ObjectIdentifier.equals((ASN1ObjectIdentifier)paramObject.azp.elementAt(m))) && (ᵢ(str, (String)paramObject.azA.elementAt(m))))
        {
          localObject[m] = 1;
          n = 1;
          break;
        }
        m += 1;
      }
      if (n == 0) {
        return false;
      }
      i += k;
    }
    return true;
  }
  
  public ASN1Primitive ez()
  {
    if (this.agu == null)
    {
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
      Object localObject = null;
      int i = 0;
      while (i != this.azp.size())
      {
        ASN1EncodableVector localASN1EncodableVector3 = new ASN1EncodableVector();
        ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)this.azp.elementAt(i);
        localASN1EncodableVector3.ˊ(localASN1ObjectIdentifier);
        String str = (String)this.azA.elementAt(i);
        localASN1EncodableVector3.ˊ(this.aBT.ˏ(localASN1ObjectIdentifier, str));
        if ((localObject == null) || (((Boolean)this.aBU.elementAt(i)).booleanValue()))
        {
          localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector3));
        }
        else
        {
          localASN1EncodableVector2.ˊ(new DERSet(localASN1EncodableVector1));
          localASN1EncodableVector1 = new ASN1EncodableVector();
          localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector3));
        }
        localObject = localASN1ObjectIdentifier;
        i += 1;
      }
      localASN1EncodableVector2.ˊ(new DERSet(localASN1EncodableVector1));
      this.agu = new DERSequence(localASN1EncodableVector2);
    }
    return this.agu;
  }
  
  public int hashCode()
  {
    if (this.awh) {
      return this.awi;
    }
    this.awh = true;
    int i = 0;
    while (i != this.azp.size())
    {
      String str = ܝ(د((String)this.azA.elementAt(i)));
      this.awi ^= this.azp.elementAt(i).hashCode();
      this.awi ^= str.hashCode();
      i += 1;
    }
    return this.awi;
  }
  
  public String toString()
  {
    return ˊ(aBO, awX);
  }
  
  public Vector ʽ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    Vector localVector = new Vector();
    int i = 0;
    while (i != this.azA.size())
    {
      if (this.azp.elementAt(i).equals(paramASN1ObjectIdentifier))
      {
        String str = (String)this.azA.elementAt(i);
        if ((str.length() > 2) && (str.charAt(0) == '\\') && (str.charAt(1) == '#')) {
          localVector.addElement(str.substring(1));
        } else {
          localVector.addElement(str);
        }
      }
      i += 1;
    }
    return localVector;
  }
  
  public String ˊ(boolean paramBoolean, Hashtable paramHashtable)
  {
    StringBuffer localStringBuffer2 = new StringBuffer();
    Vector localVector = new Vector();
    int k = 1;
    int j = 1;
    StringBuffer localStringBuffer1 = null;
    int i = 0;
    while (i < this.azp.size())
    {
      if (((Boolean)this.aBU.elementAt(i)).booleanValue())
      {
        localStringBuffer1.append('+');
        ˊ(localStringBuffer1, paramHashtable, (ASN1ObjectIdentifier)this.azp.elementAt(i), (String)this.azA.elementAt(i));
      }
      else
      {
        localStringBuffer1 = new StringBuffer();
        ˊ(localStringBuffer1, paramHashtable, (ASN1ObjectIdentifier)this.azp.elementAt(i), (String)this.azA.elementAt(i));
        localVector.addElement(localStringBuffer1);
      }
      i += 1;
    }
    if (paramBoolean)
    {
      i = localVector.size() - 1;
      while (i >= 0)
      {
        if (j != 0) {
          j = 0;
        } else {
          localStringBuffer2.append(',');
        }
        localStringBuffer2.append(localVector.elementAt(i).toString());
        i -= 1;
      }
    }
    else
    {
      i = 0;
      j = k;
      while (i < localVector.size())
      {
        if (j != 0) {
          j = 0;
        } else {
          localStringBuffer2.append(',');
        }
        localStringBuffer2.append(localVector.elementAt(i).toString());
        i += 1;
      }
    }
    return localStringBuffer2.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509Name
 * JD-Core Version:    0.7.0.1
 */