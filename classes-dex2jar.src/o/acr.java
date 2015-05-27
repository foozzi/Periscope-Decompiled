package o;

import java.io.ByteArrayInputStream;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import org.spongycastle.util.encoders.Base64;

public class acr
  implements acs
{
  private final PublicKey bxY;
  
  public acr(String paramString)
  {
    paramString = Base64.ᵥ(paramString);
    try
    {
      paramString = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramString)).getPublicKey();
    }
    catch (CertificateException localCertificateException)
    {
      paramString = null;
      akk.ˏ("KeyLoader", "cert", localCertificateException);
    }
    this.bxY = paramString;
  }
  
  public PublicKey getPublicKey()
  {
    return this.bxY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acr
 * JD-Core Version:    0.7.0.1
 */