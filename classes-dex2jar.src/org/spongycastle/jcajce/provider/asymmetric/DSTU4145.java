package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.ua.UAObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.dstu.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class DSTU4145
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyFactory.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.DSTU-4145-2002", "DSTU4145");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.DSTU4145-3410", "DSTU4145");
      ˊ(paramConfigurableProvider, UAObjectIdentifiers.awc, "DSTU4145", new KeyFactorySpi());
      ˋ(paramConfigurableProvider, UAObjectIdentifiers.awc, "DSTU4145");
      ˊ(paramConfigurableProvider, UAObjectIdentifiers.awd, "DSTU4145", new KeyFactorySpi());
      ˋ(paramConfigurableProvider, UAObjectIdentifiers.awd, "DSTU4145");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.KeyPairGeneratorSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.DSTU-4145", "DSTU4145");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.DSTU-4145-2002", "DSTU4145");
      paramConfigurableProvider.ﹶ("Signature.DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.DSTU-4145", "DSTU4145");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.DSTU-4145-2002", "DSTU4145");
      ˊ(paramConfigurableProvider, "GOST3411", "DSTU4145LE", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpiLe", UAObjectIdentifiers.awc);
      ˊ(paramConfigurableProvider, "GOST3411", "DSTU4145", "org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpi", UAObjectIdentifiers.awd);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.DSTU4145
 * JD-Core Version:    0.7.0.1
 */