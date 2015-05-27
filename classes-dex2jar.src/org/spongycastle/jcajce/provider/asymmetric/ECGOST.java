package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class ECGOST
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyFactory.ECGOST3410", "org.spongycastle.jcajce.provider.asymmetric.ecgost.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.GOST-3410-2001", "ECGOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.ECGOST-3410", "ECGOST3410");
      ˊ(paramConfigurableProvider, CryptoProObjectIdentifiers.ahd, "ECGOST3410", new KeyFactorySpi());
      ˋ(paramConfigurableProvider, CryptoProObjectIdentifiers.ahd, "ECGOST3410");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECGOST3410", "org.spongycastle.jcajce.provider.asymmetric.ecgost.KeyPairGeneratorSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.ECGOST-3410", "ECGOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.GOST-3410-2001", "ECGOST3410");
      paramConfigurableProvider.ﹶ("Signature.ECGOST3410", "org.spongycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.ECGOST-3410", "ECGOST3410");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.GOST-3410-2001", "ECGOST3410");
      ˊ(paramConfigurableProvider, "GOST3411", "ECGOST3410", "org.spongycastle.jcajce.provider.asymmetric.ecgost.SignatureSpi", CryptoProObjectIdentifiers.ahf);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ECGOST
 * JD-Core Version:    0.7.0.1
 */