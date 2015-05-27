package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class SipHash
{
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class Mac24
    extends BaseMac
  {
    public Mac24()
    {
      super();
    }
  }
  
  public static class Mac48
    extends BaseMac
  {
    public Mac48()
    {
      super();
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = SipHash.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Mac.SIPHASH-2-4", PREFIX + "$Mac24");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.SIPHASH", "SIPHASH-2-4");
      paramConfigurableProvider.ﹶ("Mac.SIPHASH-4-8", PREFIX + "$Mac48");
      paramConfigurableProvider.ﹶ("KeyGenerator.SIPHASH", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.SIPHASH-2-4", "SIPHASH");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.SIPHASH-4-8", "SIPHASH");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.SipHash
 * JD-Core Version:    0.7.0.1
 */