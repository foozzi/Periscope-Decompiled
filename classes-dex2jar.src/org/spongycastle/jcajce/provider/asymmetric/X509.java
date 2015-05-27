package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class X509
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyFactory.X.509", "org.spongycastle.jcajce.provider.asymmetric.x509.KeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.X509", "X.509");
      paramConfigurableProvider.ﹶ("CertificateFactory.X.509", "org.spongycastle.jcajce.provider.asymmetric.x509.CertificateFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.CertificateFactory.X509", "X.509");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.X509
 * JD-Core Version:    0.7.0.1
 */