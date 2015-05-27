package org.spongycastle.pqc.jcajce.provider;

import java.security.AccessController;
import java.security.Provider;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

public class BouncyCastlePQCProvider
  extends Provider
  implements ConfigurableProvider
{
  public static final ProviderConfiguration baC = null;
  private static final Map baD = new HashMap();
  public static String bip;
  private static final String[] biq = { "Rainbow", "McEliece" };
  private static String info = "BouncyCastle Post-Quantum Security Provider v1.50";
  
  static
  {
    bip = "BCPQC";
  }
  
  public BouncyCastlePQCProvider()
  {
    super(bip, 1.5D, info);
    AccessController.doPrivileged(new BouncyCastlePQCProvider.1(this));
  }
  
  private void setup()
  {
    ˊ("org.spongycastle.pqc.jcajce.provider.", biq);
  }
  
  private void ˊ(String paramString, String[] paramArrayOfString)
  {
    int i = 0;
    while (i != paramArrayOfString.length)
    {
      Object localObject1 = null;
      try
      {
        Object localObject2 = getClass().getClassLoader();
        if (localObject2 != null)
        {
          localObject2 = ((ClassLoader)localObject2).loadClass(paramString + paramArrayOfString[i] + "$Mappings");
          localObject1 = localObject2;
        }
        else
        {
          localObject2 = Class.forName(paramString + paramArrayOfString[i] + "$Mappings");
          localObject1 = localObject2;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException) {}
      if (localObject1 != null) {
        try
        {
          ((AlgorithmProvider)localObject1.newInstance()).ˊ(this);
        }
        catch (Exception localException)
        {
          throw new InternalError("cannot create instance of " + paramString + paramArrayOfString[i] + "$Mappings : " + localException);
        }
      }
      i += 1;
    }
  }
  
  public void ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, AsymmetricKeyInfoConverter paramAsymmetricKeyInfoConverter)
  {
    baD.put(paramASN1ObjectIdentifier, paramAsymmetricKeyInfoConverter);
  }
  
  public void ﹶ(String paramString1, String paramString2)
  {
    if (containsKey(paramString1)) {
      throw new IllegalStateException("duplicate provider key (" + paramString1 + ") found");
    }
    put(paramString1, paramString2);
  }
  
  public boolean ﹺ(String paramString1, String paramString2)
  {
    return (containsKey(paramString1 + "." + paramString2)) || (containsKey("Alg.Alias." + paramString1 + "." + paramString2));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.BouncyCastlePQCProvider
 * JD-Core Version:    0.7.0.1
 */