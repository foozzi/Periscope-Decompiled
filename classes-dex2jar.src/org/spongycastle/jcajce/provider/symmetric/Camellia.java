package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.CamelliaEngine;
import org.spongycastle.crypto.engines.CamelliaWrapEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.macs.Poly1305;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;

public final class Camellia
{
  public static class AlgParamGen
    extends BaseAlgorithmParameterGenerator
  {
    protected AlgorithmParameters engineGenerateParameters()
    {
      byte[] arrayOfByte = new byte[16];
      if (this.aFa == null) {
        this.aFa = new SecureRandom();
      }
      this.aFa.nextBytes(arrayOfByte);
      try
      {
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("Camellia", "SC");
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
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for Camellia parameter generation.");
    }
  }
  
  public static class AlgParams
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "Camellia IV";
    }
  }
  
  public static class CBC
    extends BaseBlockCipher
  {
    public CBC()
    {
      super(128);
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
  
  public static class GMAC
    extends BaseMac
  {
    public GMAC()
    {
      super();
    }
  }
  
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      this(256);
    }
    
    public KeyGen(int paramInt)
    {
      super(paramInt, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGen128
    extends Camellia.KeyGen
  {
    public KeyGen128()
    {
      super();
    }
  }
  
  public static class KeyGen192
    extends Camellia.KeyGen
  {
    public KeyGen192()
    {
      super();
    }
  }
  
  public static class KeyGen256
    extends Camellia.KeyGen
  {
    public KeyGen256()
    {
      super();
    }
  }
  
  public static class Mappings
    extends SymmetricAlgorithmProvider
  {
    private static final String PREFIX = Camellia.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.CAMELLIA", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NTTObjectIdentifiers.aoI, "CAMELLIA");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NTTObjectIdentifiers.aoJ, "CAMELLIA");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NTTObjectIdentifiers.aoK, "CAMELLIA");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.CAMELLIA", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NTTObjectIdentifiers.aoI, "CAMELLIA");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NTTObjectIdentifiers.aoJ, "CAMELLIA");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NTTObjectIdentifiers.aoK, "CAMELLIA");
      paramConfigurableProvider.ﹶ("Cipher.CAMELLIA", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + NTTObjectIdentifiers.aoI, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher." + NTTObjectIdentifiers.aoJ, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher." + NTTObjectIdentifiers.aoK, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher.CAMELLIARFC3211WRAP", PREFIX + "$RFC3211Wrap");
      paramConfigurableProvider.ﹶ("Cipher.CAMELLIAWRAP", PREFIX + "$Wrap");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NTTObjectIdentifiers.aoL, "CAMELLIAWRAP");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NTTObjectIdentifiers.aoM, "CAMELLIAWRAP");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NTTObjectIdentifiers.aoN, "CAMELLIAWRAP");
      paramConfigurableProvider.ﹶ("KeyGenerator.CAMELLIA", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoL, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoM, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoN, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoI, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoJ, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NTTObjectIdentifiers.aoK, PREFIX + "$KeyGen256");
      ˋ(paramConfigurableProvider, "CAMELLIA", PREFIX + "$GMAC", PREFIX + "$KeyGen");
      ˎ(paramConfigurableProvider, "CAMELLIA", PREFIX + "$Poly1305", PREFIX + "$Poly1305KeyGen");
    }
  }
  
  public static class Poly1305
    extends BaseMac
  {
    public Poly1305()
    {
      super();
    }
  }
  
  public static class Poly1305KeyGen
    extends BaseKeyGenerator
  {
    public Poly1305KeyGen()
    {
      super(256, new Poly1305KeyGenerator());
    }
  }
  
  public static class RFC3211Wrap
    extends BaseWrapCipher
  {
    public RFC3211Wrap()
    {
      super(16);
    }
  }
  
  public static class Wrap
    extends BaseWrapCipher
  {
    public Wrap()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.Camellia
 * JD-Core Version:    0.7.0.1
 */