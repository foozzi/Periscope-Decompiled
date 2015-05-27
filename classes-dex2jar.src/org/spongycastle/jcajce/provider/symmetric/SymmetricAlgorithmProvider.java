package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

abstract class SymmetricAlgorithmProvider
  extends AlgorithmProvider
{
  protected void ˋ(ConfigurableProvider paramConfigurableProvider, String paramString1, String paramString2, String paramString3)
  {
    paramConfigurableProvider.ﹶ("Mac." + paramString1 + "-GMAC", paramString2);
    paramConfigurableProvider.ﹶ("Alg.Alias.Mac." + paramString1 + "GMAC", paramString1 + "-GMAC");
    paramConfigurableProvider.ﹶ("KeyGenerator." + paramString1 + "-GMAC", paramString3);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator." + paramString1 + "GMAC", paramString1 + "-GMAC");
  }
  
  protected void ˎ(ConfigurableProvider paramConfigurableProvider, String paramString1, String paramString2, String paramString3)
  {
    paramConfigurableProvider.ﹶ("Mac.POLY1305-" + paramString1, paramString2);
    paramConfigurableProvider.ﹶ("Alg.Alias.Mac.POLY1305" + paramString1, "POLY1305-" + paramString1);
    paramConfigurableProvider.ﹶ("KeyGenerator.POLY1305-" + paramString1, paramString3);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.POLY1305" + paramString1, "POLY1305-" + paramString1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.SymmetricAlgorithmProvider
 * JD-Core Version:    0.7.0.1
 */