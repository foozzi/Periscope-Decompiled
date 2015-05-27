package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

abstract class DigestAlgorithmProvider
  extends AlgorithmProvider
{
  protected void ˊ(ConfigurableProvider paramConfigurableProvider, String paramString1, String paramString2, String paramString3)
  {
    String str = "HMAC" + paramString1;
    paramConfigurableProvider.ﹶ("Mac." + str, paramString2);
    paramConfigurableProvider.ﹶ("Alg.Alias.Mac.HMAC-" + paramString1, str);
    paramConfigurableProvider.ﹶ("Alg.Alias.Mac.HMAC/" + paramString1, str);
    paramConfigurableProvider.ﹶ("KeyGenerator." + str, paramString3);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.HMAC-" + paramString1, str);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.HMAC/" + paramString1, str);
  }
  
  protected void ˊ(ConfigurableProvider paramConfigurableProvider, String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    paramString = "HMAC" + paramString;
    paramConfigurableProvider.ﹶ("Alg.Alias.Mac." + paramASN1ObjectIdentifier, paramString);
    paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator." + paramASN1ObjectIdentifier, paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.DigestAlgorithmProvider
 * JD-Core Version:    0.7.0.1
 */