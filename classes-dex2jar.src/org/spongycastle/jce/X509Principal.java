package org.spongycastle.jce;

import java.io.IOException;
import java.security.Principal;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x509.X509Name;

public class X509Principal
  extends X509Name
  implements Principal
{
  public X509Principal(X500Name paramX500Name)
  {
    super((ASN1Sequence)paramX500Name.ez());
  }
  
  public X509Principal(X509Name paramX509Name)
  {
    super((ASN1Sequence)paramX509Name.ez());
  }
  
  public X509Principal(byte[] paramArrayOfByte)
  {
    super(ˎ(new ASN1InputStream(paramArrayOfByte)));
  }
  
  private static ASN1Sequence ˎ(ASN1InputStream paramASN1InputStream)
  {
    try
    {
      paramASN1InputStream = ASN1Sequence.ﹾ(paramASN1InputStream.eH());
      return paramASN1InputStream;
    }
    catch (IllegalArgumentException paramASN1InputStream)
    {
      throw new IOException("not an ASN.1 Sequence: " + paramASN1InputStream);
    }
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }
  
  public String getName()
  {
    return toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.X509Principal
 * JD-Core Version:    0.7.0.1
 */