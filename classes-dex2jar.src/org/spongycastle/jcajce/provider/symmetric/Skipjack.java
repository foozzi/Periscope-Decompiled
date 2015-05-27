package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.SkipjackEngine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class Skipjack
{
  public static class AlgParams
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "Skipjack IV";
    }
  }
  
  public static class ECB
    extends BaseBlockCipher
  {
    public ECB()
    {
      super();
    }
  }
  
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      super(80, new CipherKeyGenerator());
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
  
  public static class MacCFB8
    extends BaseMac
  {
    public MacCFB8()
    {
      super();
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = Skipjack.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.SKIPJACK", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("KeyGenerator.SKIPJACK", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.SKIPJACK", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Mac.SKIPJACKMAC", PREFIX + "$Mac");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.SKIPJACK", "SKIPJACKMAC");
      paramConfigurableProvider.ﹶ("Mac.SKIPJACKMAC/CFB8", PREFIX + "$MacCFB8");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.SKIPJACK/CFB8", "SKIPJACKMAC/CFB8");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.Skipjack
 * JD-Core Version:    0.7.0.1
 */