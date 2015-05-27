package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.util.encoders.Base64;

public class PEMUtil
{
  private final String aXZ;
  private final String aYa;
  private final String aYb;
  private final String aYc;
  
  PEMUtil(String paramString)
  {
    this.aXZ = ("-----BEGIN " + paramString + "-----");
    this.aYa = ("-----BEGIN X509 " + paramString + "-----");
    this.aYb = ("-----END " + paramString + "-----");
    this.aYc = ("-----END X509 " + paramString + "-----");
  }
  
  private String ﹶ(InputStream paramInputStream)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i;
    do
    {
      for (;;)
      {
        i = paramInputStream.read();
        if ((i == 13) || (i == 10) || (i < 0)) {
          break;
        }
        if (i != 13) {
          localStringBuffer.append((char)i);
        }
      }
    } while ((i >= 0) && (localStringBuffer.length() == 0));
    if (i < 0) {
      return null;
    }
    return localStringBuffer.toString();
  }
  
  ASN1Sequence ﹺ(InputStream paramInputStream)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str;
    do
    {
      str = ﹶ(paramInputStream);
    } while ((str != null) && (!str.startsWith(this.aXZ)) && (!str.startsWith(this.aYa)));
    for (;;)
    {
      str = ﹶ(paramInputStream);
      if ((str == null) || (str.startsWith(this.aYb)) || (str.startsWith(this.aYc))) {
        break;
      }
      localStringBuffer.append(str);
    }
    if (localStringBuffer.length() != 0)
    {
      paramInputStream = new ASN1InputStream(Base64.ᵥ(localStringBuffer.toString())).eH();
      if (!(paramInputStream instanceof ASN1Sequence)) {
        throw new IOException("malformed PEM data encountered");
      }
      return (ASN1Sequence)paramInputStream;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.PEMUtil
 * JD-Core Version:    0.7.0.1
 */