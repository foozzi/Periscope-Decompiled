package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.ThreefishEngine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class Threefish
{
  public static class AlgParams_1024
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "Threefish-1024 IV";
    }
  }
  
  public static class AlgParams_256
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "Threefish-256 IV";
    }
  }
  
  public static class AlgParams_512
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "Threefish-512 IV";
    }
  }
  
  public static class ECB_1024
    extends BaseBlockCipher
  {
    public ECB_1024()
    {
      super();
    }
  }
  
  public static class ECB_256
    extends BaseBlockCipher
  {
    public ECB_256()
    {
      super();
    }
  }
  
  public static class ECB_512
    extends BaseBlockCipher
  {
    public ECB_512()
    {
      super();
    }
  }
  
  public static class KeyGen_1024
    extends BaseKeyGenerator
  {
    public KeyGen_1024()
    {
      super(1024, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGen_256
    extends BaseKeyGenerator
  {
    public KeyGen_256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGen_512
    extends BaseKeyGenerator
  {
    public KeyGen_512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = Threefish.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.Threefish-256", PREFIX + "$ECB_256");
      paramConfigurableProvider.ﹶ("Cipher.Threefish-512", PREFIX + "$ECB_512");
      paramConfigurableProvider.ﹶ("Cipher.Threefish-1024", PREFIX + "$ECB_1024");
      paramConfigurableProvider.ﹶ("KeyGenerator.Threefish-256", PREFIX + "$KeyGen_256");
      paramConfigurableProvider.ﹶ("KeyGenerator.Threefish-512", PREFIX + "$KeyGen_512");
      paramConfigurableProvider.ﹶ("KeyGenerator.Threefish-1024", PREFIX + "$KeyGen_1024");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.Threefish-256", PREFIX + "$AlgParams_256");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.Threefish-512", PREFIX + "$AlgParams_512");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.Threefish-1024", PREFIX + "$AlgParams_1024");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.Threefish
 * JD-Core Version:    0.7.0.1
 */