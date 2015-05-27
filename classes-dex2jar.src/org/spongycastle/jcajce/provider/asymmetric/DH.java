package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class DH
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyPairGenerator.DH", "org.spongycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN", "DH");
      paramConfigurableProvider.ﹶ("KeyAgreement.DH", "org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyAgreement.DIFFIEHELLMAN", "DH");
      paramConfigurableProvider.ﹶ("KeyFactory.DH", "org.spongycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory.DIFFIEHELLMAN", "DH");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.DH", "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN", "DH");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN", "DH");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.DH", "org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi");
      paramConfigurableProvider.ﹶ("Cipher.DHIES", "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IES");
      paramConfigurableProvider.ﹶ("Cipher.DHIESwithAES", "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IESwithAES");
      paramConfigurableProvider.ﹶ("Cipher.DHIESWITHAES", "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IESwithAES");
      paramConfigurableProvider.ﹶ("Cipher.DHIESWITHDESEDE", "org.spongycastle.jcajce.provider.asymmetric.dh.IESCipher$IESwithDESede");
      ˊ(paramConfigurableProvider, PKCSObjectIdentifiers.aqE, "DH", new KeyFactorySpi());
      ˊ(paramConfigurableProvider, X9ObjectIdentifiers.aEI, "DH", new KeyFactorySpi());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.DH
 * JD-Core Version:    0.7.0.1
 */