package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.gost.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class GOST
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyPairGenerator.GOST3410", "org.spongycastle.jcajce.provider.asymmetric.gost.KeyPairGeneratorSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.GOST-3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.GOST-3410-94", "GOST3410");
      paramConfigurableProvider.ﹶ("KeyFactory.GOST3410", "org.spongycastle.jcajce.provider.asymmetric.gost.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.GOST-3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.GOST-3410-94", "GOST3410");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.GOST3410", "org.spongycastle.jcajce.provider.asymmetric.gost.AlgorithmParametersSpi");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.GOST3410", "org.spongycastle.jcajce.provider.asymmetric.gost.AlgorithmParameterGeneratorSpi");
      ˊ(paramConfigurableProvider, CryptoProObjectIdentifiers.ahc, "GOST3410", new KeyFactorySpi());
      ˋ(paramConfigurableProvider, CryptoProObjectIdentifiers.ahc, "GOST3410");
      paramConfigurableProvider.ﹶ("Signature.GOST3410", "org.spongycastle.jcajce.provider.asymmetric.gost.SignatureSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST-3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST-3410-94", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST3411withGOST3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST3411WITHGOST3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST3411WithGOST3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + CryptoProObjectIdentifiers.ahe, "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.GOST-3410", "GOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.GOST-3410", "GOST3410");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.GOST
 * JD-Core Version:    0.7.0.1
 */