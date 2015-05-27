package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.asn1.ocsp.OCSPResponse;

public class CertificateStatus
{
  protected short aSY;
  protected Object aSZ;
  
  public CertificateStatus(short paramShort, Object paramObject)
  {
    if (!ˊ(paramShort, paramObject)) {
      throw new IllegalArgumentException("'response' is not an instance of the correct type");
    }
    this.aSY = paramShort;
    this.aSZ = paramObject;
  }
  
  protected static boolean ˊ(short paramShort, Object paramObject)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
      return paramObject instanceof OCSPResponse;
    }
    throw new IllegalArgumentException("'statusType' is an unsupported value");
  }
  
  public static CertificateStatus ˍ(InputStream paramInputStream)
  {
    short s = TlsUtils.ﾞ(paramInputStream);
    switch (s)
    {
    default: 
      break;
    case 1: 
      paramInputStream = OCSPResponse.৲(TlsUtils.ᐢ(TlsUtils.ᵎ(paramInputStream)));
      break;
    }
    throw new TlsFatalAlert((short)50);
    return new CertificateStatus(s, paramInputStream);
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    TlsUtils.ˊ(this.aSY, paramOutputStream);
    switch (this.aSY)
    {
    default: 
      break;
    case 1: 
      TlsUtils.ˏ(((OCSPResponse)this.aSZ).getEncoded("DER"), paramOutputStream);
      return;
    }
    throw new TlsFatalAlert((short)80);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.CertificateStatus
 * JD-Core Version:    0.7.0.1
 */