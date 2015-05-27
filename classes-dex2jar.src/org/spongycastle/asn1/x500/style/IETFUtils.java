package org.spongycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERUniversalString;
import org.spongycastle.asn1.x500.AttributeTypeAndValue;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameBuilder;
import org.spongycastle.asn1.x500.X500NameStyle;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

public class IETFUtils
{
  private static boolean isHexDigit(char paramChar)
  {
    return (('0' <= paramChar) && (paramChar <= '9')) || (('a' <= paramChar) && (paramChar <= 'f')) || (('A' <= paramChar) && (paramChar <= 'F'));
  }
  
  private static String unescape(String paramString)
  {
    if ((paramString.length() == 0) || ((paramString.indexOf('\\') < 0) && (paramString.indexOf('"') < 0))) {
      return paramString.trim();
    }
    char[] arrayOfChar = paramString.toCharArray();
    int i1 = 0;
    int j = 0;
    paramString = new StringBuffer(paramString.length());
    int k = 0;
    int i = k;
    if (arrayOfChar[0] == '\\')
    {
      i = k;
      if (arrayOfChar[1] == '#')
      {
        i = 2;
        paramString.append("\\#");
      }
    }
    int n = 0;
    int m = 0;
    char c1 = '\000';
    k = i;
    i = i1;
    while (k != arrayOfChar.length)
    {
      char c2 = arrayOfChar[k];
      if (c2 != ' ') {
        n = 1;
      }
      if (c2 == '"')
      {
        if (i == 0)
        {
          if (j == 0) {
            j = 1;
          } else {
            j = 0;
          }
        }
        else {
          paramString.append(c2);
        }
        i = 0;
      }
      else if ((c2 == '\\') && (i == 0) && (j == 0))
      {
        i = 1;
        m = paramString.length();
      }
      else if ((c2 != ' ') || (i != 0) || (n != 0))
      {
        if ((i != 0) && (isHexDigit(c2)))
        {
          if (c1 != 0)
          {
            paramString.append((char)(ˏ(c1) * 16 + ˏ(c2)));
            i = 0;
            c1 = '\000';
          }
          else
          {
            c1 = c2;
          }
        }
        else
        {
          paramString.append(c2);
          i = 0;
        }
      }
      k += 1;
    }
    if (paramString.length() > 0) {
      while ((paramString.charAt(paramString.length() - 1) == ' ') && (m != paramString.length() - 1)) {
        paramString.setLength(paramString.length() - 1);
      }
    }
    return paramString.toString();
  }
  
  public static void ˊ(StringBuffer paramStringBuffer, AttributeTypeAndValue paramAttributeTypeAndValue, Hashtable paramHashtable)
  {
    paramHashtable = (String)paramHashtable.get(paramAttributeTypeAndValue.gF());
    if (paramHashtable != null) {
      paramStringBuffer.append(paramHashtable);
    } else {
      paramStringBuffer.append(paramAttributeTypeAndValue.gF().getId());
    }
    paramStringBuffer.append('=');
    paramStringBuffer.append(ᐝ(paramAttributeTypeAndValue.gG()));
  }
  
  public static void ˊ(StringBuffer paramStringBuffer, RDN paramRDN, Hashtable paramHashtable)
  {
    if (paramRDN.gH())
    {
      paramRDN = paramRDN.gJ();
      int j = 1;
      int i = 0;
      while (i != paramRDN.length)
      {
        if (j != 0) {
          j = 0;
        } else {
          paramStringBuffer.append('+');
        }
        ˊ(paramStringBuffer, paramRDN[i], paramHashtable);
        i += 1;
      }
      return;
    }
    ˊ(paramStringBuffer, paramRDN.gI(), paramHashtable);
  }
  
  private static boolean ˊ(AttributeTypeAndValue paramAttributeTypeAndValue1, AttributeTypeAndValue paramAttributeTypeAndValue2)
  {
    if (paramAttributeTypeAndValue1 == paramAttributeTypeAndValue2) {
      return true;
    }
    if (paramAttributeTypeAndValue1 == null) {
      return false;
    }
    if (paramAttributeTypeAndValue2 == null) {
      return false;
    }
    if (!paramAttributeTypeAndValue1.gF().equals(paramAttributeTypeAndValue2.gF())) {
      return false;
    }
    return د(ᐝ(paramAttributeTypeAndValue1.gG())).equals(د(ᐝ(paramAttributeTypeAndValue2.gG())));
  }
  
  private static String[] ˊ(Vector paramVector)
  {
    String[] arrayOfString = new String[paramVector.size()];
    int i = 0;
    while (i != arrayOfString.length)
    {
      arrayOfString[i] = ((String)paramVector.elementAt(i));
      i += 1;
    }
    return arrayOfString;
  }
  
  public static RDN[] ˊ(String paramString, X500NameStyle paramX500NameStyle)
  {
    paramString = new X500NameTokenizer(paramString);
    X500NameBuilder localX500NameBuilder = new X500NameBuilder(paramX500NameStyle);
    while (paramString.hasMoreTokens())
    {
      Object localObject1 = paramString.nextToken();
      Object localObject2;
      if (((String)localObject1).indexOf('+') > 0)
      {
        localObject1 = new X500NameTokenizer((String)localObject1, '+');
        Object localObject3 = new X500NameTokenizer(((X500NameTokenizer)localObject1).nextToken(), '=');
        localObject2 = ((X500NameTokenizer)localObject3).nextToken();
        if (!((X500NameTokenizer)localObject3).hasMoreTokens()) {
          throw new IllegalArgumentException("badly formatted directory string");
        }
        String str = ((X500NameTokenizer)localObject3).nextToken();
        Object localObject4 = paramX500NameStyle.נ(((String)localObject2).trim());
        if (((X500NameTokenizer)localObject1).hasMoreTokens())
        {
          localObject2 = new Vector();
          localObject3 = new Vector();
          ((Vector)localObject2).addElement(localObject4);
          ((Vector)localObject3).addElement(unescape(str));
          while (((X500NameTokenizer)localObject1).hasMoreTokens())
          {
            localObject4 = new X500NameTokenizer(((X500NameTokenizer)localObject1).nextToken(), '=');
            str = ((X500NameTokenizer)localObject4).nextToken();
            if (!((X500NameTokenizer)localObject4).hasMoreTokens()) {
              throw new IllegalArgumentException("badly formatted directory string");
            }
            localObject4 = ((X500NameTokenizer)localObject4).nextToken();
            ((Vector)localObject2).addElement(paramX500NameStyle.נ(str.trim()));
            ((Vector)localObject3).addElement(unescape((String)localObject4));
          }
          localX500NameBuilder.ˊ(ˋ((Vector)localObject2), ˊ((Vector)localObject3));
        }
        else
        {
          localX500NameBuilder.ˊ((ASN1ObjectIdentifier)localObject4, unescape(str));
        }
      }
      else
      {
        localObject2 = new X500NameTokenizer((String)localObject1, '=');
        localObject1 = ((X500NameTokenizer)localObject2).nextToken();
        if (!((X500NameTokenizer)localObject2).hasMoreTokens()) {
          throw new IllegalArgumentException("badly formatted directory string");
        }
        localObject2 = ((X500NameTokenizer)localObject2).nextToken();
        localX500NameBuilder.ˊ(paramX500NameStyle.נ(((String)localObject1).trim()), unescape((String)localObject2));
      }
    }
    return localX500NameBuilder.gL().gK();
  }
  
  public static boolean ˋ(RDN paramRDN1, RDN paramRDN2)
  {
    if (paramRDN1.gH())
    {
      if (paramRDN2.gH())
      {
        paramRDN1 = paramRDN1.gJ();
        paramRDN2 = paramRDN2.gJ();
        if (paramRDN1.length != paramRDN2.length) {
          return false;
        }
        int i = 0;
        while (i != paramRDN1.length)
        {
          if (!ˊ(paramRDN1[i], paramRDN2[i])) {
            return false;
          }
          i += 1;
        }
      }
      else
      {
        return false;
      }
    }
    else
    {
      if (!paramRDN2.gH()) {
        return ˊ(paramRDN1.gI(), paramRDN2.gI());
      }
      return false;
    }
    return true;
  }
  
  private static ASN1ObjectIdentifier[] ˋ(Vector paramVector)
  {
    ASN1ObjectIdentifier[] arrayOfASN1ObjectIdentifier = new ASN1ObjectIdentifier[paramVector.size()];
    int i = 0;
    while (i != arrayOfASN1ObjectIdentifier.length)
    {
      arrayOfASN1ObjectIdentifier[i] = ((ASN1ObjectIdentifier)paramVector.elementAt(i));
      i += 1;
    }
    return arrayOfASN1ObjectIdentifier;
  }
  
  public static ASN1ObjectIdentifier ˎ(String paramString, Hashtable paramHashtable)
  {
    if (Strings.ʟ(paramString).startsWith("OID.")) {
      return new ASN1ObjectIdentifier(paramString.substring(4));
    }
    if ((paramString.charAt(0) >= '0') && (paramString.charAt(0) <= '9')) {
      return new ASN1ObjectIdentifier(paramString);
    }
    paramHashtable = (ASN1ObjectIdentifier)paramHashtable.get(Strings.ʰ(paramString));
    if (paramHashtable == null) {
      throw new IllegalArgumentException("Unknown object id - " + paramString + " - passed to distinguished name");
    }
    return paramHashtable;
  }
  
  private static int ˏ(char paramChar)
  {
    if (('0' <= paramChar) && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if (('a' <= paramChar) && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    return paramChar - 'A' + 10;
  }
  
  public static String د(String paramString)
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
    return ܝ(paramString);
  }
  
  private static ASN1Primitive ہ(String paramString)
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
  
  public static String ܝ(String paramString)
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
  
  public static String ᐝ(ASN1Encodable paramASN1Encodable)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (((paramASN1Encodable instanceof ASN1String)) && (!(paramASN1Encodable instanceof DERUniversalString)))
    {
      paramASN1Encodable = ((ASN1String)paramASN1Encodable).getString();
      if ((paramASN1Encodable.length() > 0) && (paramASN1Encodable.charAt(0) == '#')) {
        localStringBuffer.append("\\" + paramASN1Encodable);
      } else {
        localStringBuffer.append(paramASN1Encodable);
      }
    }
    else
    {
      try
      {
        localStringBuffer.append("#" + ᴵ(Hex.ײ(paramASN1Encodable.ez().getEncoded("DER"))));
      }
      catch (IOException paramASN1Encodable)
      {
        throw new IllegalArgumentException("Other value has no encoded form");
      }
    }
    int k = localStringBuffer.length();
    int m = 0;
    int j = k;
    int i = m;
    if (localStringBuffer.length() >= 2)
    {
      j = k;
      i = m;
      if (localStringBuffer.charAt(0) == '\\')
      {
        j = k;
        i = m;
        if (localStringBuffer.charAt(1) == '#') {
          i = 0 + 2;
        }
      }
    }
    for (j = k; i != j; j = k)
    {
      if ((localStringBuffer.charAt(i) != ',') && (localStringBuffer.charAt(i) != '"') && (localStringBuffer.charAt(i) != '\\') && (localStringBuffer.charAt(i) != '+') && (localStringBuffer.charAt(i) != '=') && (localStringBuffer.charAt(i) != '<') && (localStringBuffer.charAt(i) != '>'))
      {
        k = j;
        m = i;
        if (localStringBuffer.charAt(i) != ';') {}
      }
      else
      {
        localStringBuffer.insert(i, "\\");
        m = i + 1;
        k = j + 1;
      }
      i = m + 1;
    }
    i = 0;
    if (localStringBuffer.length() > 0) {
      while ((localStringBuffer.length() > i) && (localStringBuffer.charAt(i) == ' '))
      {
        localStringBuffer.insert(i, "\\");
        i += 2;
      }
    }
    i = localStringBuffer.length() - 1;
    while ((i >= 0) && (localStringBuffer.charAt(i) == ' '))
    {
      localStringBuffer.insert(i, '\\');
      i -= 1;
    }
    return localStringBuffer.toString();
  }
  
  public static ASN1Encodable ᐝ(String paramString, int paramInt)
  {
    byte[] arrayOfByte = new byte[(paramString.length() - paramInt) / 2];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      char c1 = paramString.charAt(i * 2 + paramInt);
      char c2 = paramString.charAt(i * 2 + paramInt + 1);
      arrayOfByte[i] = ((byte)(ˏ(c1) << 4 | ˏ(c2)));
      i += 1;
    }
    return ASN1Primitive.ՙ(arrayOfByte);
  }
  
  private static String ᴵ(byte[] paramArrayOfByte)
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
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.IETFUtils
 * JD-Core Version:    0.7.0.1
 */