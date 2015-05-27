package org.spongycastle.pqc.jcajce.provider;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi;

public class Rainbow
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyFactory.Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi");
      ˊ(paramConfigurableProvider, "SHA224", "Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha224", PQCObjectIdentifiers.bdR);
      ˊ(paramConfigurableProvider, "SHA256", "Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha256", PQCObjectIdentifiers.bdS);
      ˊ(paramConfigurableProvider, "SHA384", "Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha384", PQCObjectIdentifiers.bdT);
      ˊ(paramConfigurableProvider, "SHA512", "Rainbow", "org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi$withSha512", PQCObjectIdentifiers.bdU);
      RainbowKeyFactorySpi localRainbowKeyFactorySpi = new RainbowKeyFactorySpi();
      ˊ(paramConfigurableProvider, PQCObjectIdentifiers.bdP, "Rainbow", localRainbowKeyFactorySpi);
      ˋ(paramConfigurableProvider, PQCObjectIdentifiers.bdP, "Rainbow");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.Rainbow
 * JD-Core Version:    0.7.0.1
 */