package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.RC532Engine;
import org.spongycastle.crypto.engines.RC564Engine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class RC5
{
  public static class AlgParamGen
    extends BaseAlgorithmParameterGenerator
  {
    protected AlgorithmParameters engineGenerateParameters()
    {
      byte[] arrayOfByte = new byte[8];
      if (this.aFa == null) {
        this.aFa = new SecureRandom();
      }
      this.aFa.nextBytes(arrayOfByte);
      try
      {
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("RC5", "SC");
        localAlgorithmParameters.init(new IvParameterSpec(arrayOfByte));
        return localAlgorithmParameters;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException.getMessage());
      }
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
    {
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC5 parameter generation.");
    }
  }
  
  public static class AlgParams
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "RC5 IV";
    }
  }
  
  public static class CBC32
    extends BaseBlockCipher
  {
    public CBC32()
    {
      super(64);
    }
  }
  
  public static class CFB8Mac32
    extends BaseMac
  {
    public CFB8Mac32()
    {
      super();
    }
  }
  
  public static class ECB32
    extends BaseBlockCipher
  {
    public ECB32()
    {
      super();
    }
  }
  
  public static class ECB64
    extends BaseBlockCipher
  {
    public ECB64()
    {
      super();
    }
  }
  
  public static class KeyGen32
    extends BaseKeyGenerator
  {
    public KeyGen32()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGen64
    extends BaseKeyGenerator
  {
    public KeyGen64()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class Mac32
    extends BaseMac
  {
    public Mac32()
    {
      super();
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = RC5.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.RC5", PREFIX + "$ECB32");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RC5-32", "RC5");
      paramConfigurableProvider.ﹶ("Cipher.RC5-64", PREFIX + "$ECB64");
      paramConfigurableProvider.ﹶ("KeyGenerator.RC5", PREFIX + "$KeyGen32");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.RC5-32", "RC5");
      paramConfigurableProvider.ﹶ("KeyGenerator.RC5-64", PREFIX + "$KeyGen64");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.RC5", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.RC5-64", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Mac.RC5MAC", PREFIX + "$Mac32");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.RC5", "RC5MAC");
      paramConfigurableProvider.ﹶ("Mac.RC5MAC/CFB8", PREFIX + "$CFB8Mac32");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.RC5/CFB8", "RC5MAC/CFB8");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.RC5
 * JD-Core Version:    0.7.0.1
 */