package org.spongycastle.jcajce.provider.util;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;

public abstract class AsymmetricAlgorithmProvider
  extends AlgorithmProvider
{
  public void ˊ(ConfigurableProvider paramConfigurableProvider, String paramString1, String paramString2, String paramString3, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    String str1 = paramString1 + "WITH" + paramString2;
    String str2 = paramString1 + "with" + paramString2;
    String str3 = paramString1 + "With" + paramString2;
    paramString1 = paramString1 + "/" + paramString2;
    paramConfigurableProvider.ﹶ("Signature." + str1, paramString3);
    paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str2, str1);
    paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str3, str1);
    paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + paramString1, str1);
    paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + paramASN1ObjectIdentifier, str1);
    paramConfigurableProvider.ﹶ("Alg.Alias.Signature.OID." + paramASN1ObjectIdentifier, str1);
  }
  
  public void ˊ(ConfigurableProvider paramConfigurableProvider, ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString, AsymmetricKeyInfoConverter paramAsymmetricKeyInfoConverter)
  {
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory." + paramASN1ObjectIdentifier, paramString);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyPairGenerator." + paramASN1ObjectIdentifier, paramString);
    paramConfigurableProvider.ˊ(paramASN1ObjectIdentifier, paramAsymmetricKeyInfoConverter);
  }
  
  public void ˋ(ConfigurableProvider paramConfigurableProvider, ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
  {
    paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + paramASN1ObjectIdentifier, paramString);
    paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + paramASN1ObjectIdentifier, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider
 * JD-Core Version:    0.7.0.1
 */