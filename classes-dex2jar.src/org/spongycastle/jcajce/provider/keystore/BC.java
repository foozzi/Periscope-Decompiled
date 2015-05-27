package org.spongycastle.jcajce.provider.keystore;

import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class BC
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyStore.BKS", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Std");
      paramConfigurableProvider.ﹶ("KeyStore.BKS-V1", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$Version1");
      paramConfigurableProvider.ﹶ("KeyStore.BouncyCastle", "org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi$BouncyCastleStore");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyStore.UBER", "BouncyCastle");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyStore.BOUNCYCASTLE", "BouncyCastle");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyStore.spongycastle", "BouncyCastle");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.keystore.BC
 * JD-Core Version:    0.7.0.1
 */