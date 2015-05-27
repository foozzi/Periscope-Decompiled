package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.VMPCEngine;
import org.spongycastle.crypto.macs.VMPCMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class VMPC
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
  
  public static class Mac
    extends BaseMac
  {
    public Mac()
    {
      super();
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = VMPC.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.VMPC", PREFIX + "$Base");
      paramConfigurableProvider.ﹶ("KeyGenerator.VMPC", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("Mac.VMPCMAC", PREFIX + "$Mac");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.VMPC", "VMPCMAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.VMPC-MAC", "VMPCMAC");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.VMPC
 * JD-Core Version:    0.7.0.1
 */