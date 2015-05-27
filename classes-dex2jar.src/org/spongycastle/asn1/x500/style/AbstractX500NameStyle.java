package org.spongycastle.asn1.x500.style;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERUTF8String;
import org.spongycastle.asn1.x500.AttributeTypeAndValue;
import org.spongycastle.asn1.x500.RDN;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.X500NameStyle;

public abstract class AbstractX500NameStyle
  implements X500NameStyle
{
  private boolean ˊ(boolean paramBoolean, RDN paramRDN, RDN[] paramArrayOfRDN)
  {
    int i;
    if (paramBoolean)
    {
      i = paramArrayOfRDN.length - 1;
      while (i >= 0)
      {
        if ((paramArrayOfRDN[i] != null) && (ˊ(paramRDN, paramArrayOfRDN[i])))
        {
          paramArrayOfRDN[i] = null;
          return true;
        }
        i -= 1;
      }
    }
    else
    {
      i = 0;
      while (i != paramArrayOfRDN.length)
      {
        if ((paramArrayOfRDN[i] != null) && (ˊ(paramRDN, paramArrayOfRDN[i])))
        {
          paramArrayOfRDN[i] = null;
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  private int ˏ(ASN1Encodable paramASN1Encodable)
  {
    return IETFUtils.د(IETFUtils.ᐝ(paramASN1Encodable)).hashCode();
  }
  
  public static Hashtable ͺ(Hashtable paramHashtable)
  {
    Hashtable localHashtable = new Hashtable();
    Enumeration localEnumeration = paramHashtable.keys();
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = localEnumeration.nextElement();
      localHashtable.put(localObject, paramHashtable.get(localObject));
    }
    return localHashtable;
  }
  
  public int ˊ(X500Name paramX500Name)
  {
    int i = 0;
    paramX500Name = paramX500Name.gK();
    int j = 0;
    while (j != paramX500Name.length)
    {
      if (paramX500Name[j].gH())
      {
        AttributeTypeAndValue[] arrayOfAttributeTypeAndValue = paramX500Name[j].gJ();
        int k = 0;
        while (k != arrayOfAttributeTypeAndValue.length)
        {
          i = i ^ arrayOfAttributeTypeAndValue[k].gF().hashCode() ^ ˏ(arrayOfAttributeTypeAndValue[k].gG());
          k += 1;
        }
      }
      else
      {
        i = i ^ paramX500Name[j].gI().gF().hashCode() ^ ˏ(paramX500Name[j].gI().gG());
      }
      j += 1;
    }
    return i;
  }
  
  protected boolean ˊ(RDN paramRDN1, RDN paramRDN2)
  {
    return IETFUtils.ˋ(paramRDN1, paramRDN2);
  }
  
  public boolean ˊ(X500Name paramX500Name1, X500Name paramX500Name2)
  {
    paramX500Name1 = paramX500Name1.gK();
    paramX500Name2 = paramX500Name2.gK();
    if (paramX500Name1.length != paramX500Name2.length) {
      return false;
    }
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramX500Name1[0].gI() != null)
    {
      bool1 = bool2;
      if (paramX500Name2[0].gI() != null) {
        if (!paramX500Name1[0].gI().gF().equals(paramX500Name2[0].gI().gF())) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
    }
    int i = 0;
    while (i != paramX500Name1.length)
    {
      if (!ˊ(bool1, paramX500Name1[i], paramX500Name2)) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public ASN1Encodable ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    if ((paramString.length() != 0) && (paramString.charAt(0) == '#')) {
      try
      {
        paramString = IETFUtils.ᐝ(paramString, 1);
        return paramString;
      }
      catch (IOException paramString)
      {
        throw new RuntimeException("can't recode value for oid " + paramASN1ObjectIdentifier.getId());
      }
    }
    String str = paramString;
    if (paramString.length() != 0)
    {
      str = paramString;
      if (paramString.charAt(0) == '\\') {
        str = paramString.substring(1);
      }
    }
    return ˎ(paramASN1ObjectIdentifier, str);
  }
  
  protected ASN1Encodable ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    return new DERUTF8String(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x500.style.AbstractX500NameStyle
 * JD-Core Version:    0.7.0.1
 */