package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.dsa.DSAUtil;
import org.spongycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class DSA
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi");
      paramConfigurableProvider.ﹶ("KeyFactory.DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("Signature.DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA");
      paramConfigurableProvider.ﹶ("Signature.NONEWITHDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.RAWDSA", "NONEWITHDSA");
      paramConfigurableProvider.ﹶ("Signature.DETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
      paramConfigurableProvider.ﹶ("Signature.SHA1WITHDETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA");
      paramConfigurableProvider.ﹶ("Signature.SHA224WITHDETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA224");
      paramConfigurableProvider.ﹶ("Signature.SHA256WITHDETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA256");
      paramConfigurableProvider.ﹶ("Signature.SHA384WITHDETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA384");
      paramConfigurableProvider.ﹶ("Signature.SHA512WITHDETDSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA512");
      ˊ(paramConfigurableProvider, "SHA224", "DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224", NISTObjectIdentifiers.aoE);
      ˊ(paramConfigurableProvider, "SHA256", "DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256", NISTObjectIdentifiers.aoF);
      ˊ(paramConfigurableProvider, "SHA384", "DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa384", NISTObjectIdentifiers.aoG);
      ˊ(paramConfigurableProvider, "SHA512", "DSA", "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa512", NISTObjectIdentifiers.aoH);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA/DSA", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1withDSA", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WITHDSA", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.DSAwithSHA1", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.DSAWITHSHA1", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WithDSA", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.DSAWithSHA1", "DSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.1.2.840.10040.4.3", "DSA");
      KeyFactorySpi localKeyFactorySpi = new KeyFactorySpi();
      int i = 0;
      while (i != DSAUtil.aWG.length)
      {
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + DSAUtil.aWG[i], "DSA");
        ˊ(paramConfigurableProvider, DSAUtil.aWG[i], "DSA", localKeyFactorySpi);
        ˋ(paramConfigurableProvider, DSAUtil.aWG[i], "DSA");
        i += 1;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.DSA
 * JD-Core Version:    0.7.0.1
 */