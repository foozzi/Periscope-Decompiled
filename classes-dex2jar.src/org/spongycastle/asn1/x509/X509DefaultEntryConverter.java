package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERGeneralizedTime;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERUTF8String;

public class X509DefaultEntryConverter
  extends X509NameEntryConverter
{
  public ASN1Primitive ˏ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    if ((paramString.length() != 0) && (paramString.charAt(0) == '#')) {
      try
      {
        paramString = ʻ(paramString, 1);
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
    if ((paramASN1ObjectIdentifier.equals(X509Name.awR)) || (paramASN1ObjectIdentifier.equals(X509Name.awV))) {
      return new DERIA5String(str);
    }
    if (paramASN1ObjectIdentifier.equals(X509Name.awH)) {
      return new DERGeneralizedTime(str);
    }
    if ((paramASN1ObjectIdentifier.equals(X509Name.awo)) || (paramASN1ObjectIdentifier.equals(X509Name.awt)) || (paramASN1ObjectIdentifier.equals(X509Name.awF)) || (paramASN1ObjectIdentifier.equals(X509Name.awP))) {
      return new DERPrintableString(str);
    }
    return new DERUTF8String(str);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509DefaultEntryConverter
 * JD-Core Version:    0.7.0.1
 */