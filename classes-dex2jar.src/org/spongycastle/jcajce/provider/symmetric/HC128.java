package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.HC128Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class HC128
{
  public static class Base
    extends BaseStreamCipher
  {
    public Base()
    {
      super(16);
    }
  }
  
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = HC128.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.HC128", PREFIX + "$Base");
      paramConfigurableProvider.ﹶ("KeyGenerator.HC128", PREFIX + "$KeyGen");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.HC128
 * JD-Core Version:    0.7.0.1
 */