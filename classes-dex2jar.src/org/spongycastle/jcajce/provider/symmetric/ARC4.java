package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.RC4Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class ARC4
{
  public static class Base
    extends BaseStreamCipher
  {
    public Base()
    {
      super(0);
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
    private static final String PREFIX = ARC4.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.ARC4", PREFIX + "$Base");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqQ, "ARC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.ARCFOUR", "ARC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RC4", "ARC4");
      paramConfigurableProvider.ﹶ("KeyGenerator.ARC4", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.RC4", "ARC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.1.2.840.113549.3.4", "ARC4");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND128BITRC4", PREFIX + "$PBEWithSHAAnd128BitKeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND40BITRC4", PREFIX + "$PBEWithSHAAnd40BitKeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + PKCSObjectIdentifiers.asz, "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + PKCSObjectIdentifiers.asA, "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND128BITRC4", PREFIX + "$PBEWithSHAAnd128Bit");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND40BITRC4", PREFIX + "$PBEWithSHAAnd40Bit");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.asz, "PBEWITHSHAAND128BITRC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.asA, "PBEWITHSHAAND40BITRC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4", "PBEWITHSHAAND128BITRC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4", "PBEWITHSHAAND40BITRC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.asz, "PBEWITHSHAAND128BITRC4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.asA, "PBEWITHSHAAND40BITRC4");
    }
  }
  
  public static class PBEWithSHAAnd128Bit
    extends BaseStreamCipher
  {
    public PBEWithSHAAnd128Bit()
    {
      super(0);
    }
  }
  
  public static class PBEWithSHAAnd128BitKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd128BitKeyFactory()
    {
      super(PKCSObjectIdentifiers.asz, true, 2, 1, 128, 0);
    }
  }
  
  public static class PBEWithSHAAnd40Bit
    extends BaseStreamCipher
  {
    public PBEWithSHAAnd40Bit()
    {
      super(0);
    }
  }
  
  public static class PBEWithSHAAnd40BitKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd40BitKeyFactory()
    {
      super(PKCSObjectIdentifiers.asz, true, 2, 1, 40, 0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.ARC4
 * JD-Core Version:    0.7.0.1
 */