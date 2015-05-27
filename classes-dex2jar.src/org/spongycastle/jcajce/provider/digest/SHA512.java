package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.digests.SHA512tDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.macs.OldHMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

public class SHA512
{
  public static class Digest
    extends BCMessageDigest
    implements Cloneable
  {
    public Digest()
    {
      super();
    }
    
    public Object clone()
    {
      Digest localDigest = (Digest)super.clone();
      localDigest.aFH = new SHA512Digest((SHA512Digest)this.aFH);
      return localDigest;
    }
  }
  
  public static class DigestT
    extends BCMessageDigest
    implements Cloneable
  {
    public DigestT(int paramInt)
    {
      super();
    }
    
    public Object clone()
    {
      DigestT localDigestT = (DigestT)super.clone();
      localDigestT.aFH = new SHA512tDigest((SHA512tDigest)this.aFH);
      return localDigestT;
    }
  }
  
  public static class DigestT224
    extends SHA512.DigestT
  {
    public DigestT224()
    {
      super();
    }
  }
  
  public static class DigestT256
    extends SHA512.DigestT
  {
    public DigestT256()
    {
      super();
    }
  }
  
  public static class HashMac
    extends BaseMac
  {
    public HashMac()
    {
      super();
    }
  }
  
  public static class HashMacT224
    extends BaseMac
  {
    public HashMacT224()
    {
      super();
    }
  }
  
  public static class HashMacT256
    extends BaseMac
  {
    public HashMacT256()
    {
      super();
    }
  }
  
  public static class KeyGenerator
    extends BaseKeyGenerator
  {
    public KeyGenerator()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGeneratorT224
    extends BaseKeyGenerator
  {
    public KeyGeneratorT224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGeneratorT256
    extends BaseKeyGenerator
  {
    public KeyGeneratorT256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = SHA512.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.SHA-512", PREFIX + "$Digest");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA512", "SHA-512");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.aod, "SHA-512");
      paramConfigurableProvider.ﹶ("MessageDigest.SHA-512/224", PREFIX + "$DigestT224");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.aof, "SHA-512/224");
      paramConfigurableProvider.ﹶ("MessageDigest.SHA-512/256", PREFIX + "$DigestT256");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA512256", "SHA-512/256");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.aog, "SHA-512/256");
      paramConfigurableProvider.ﹶ("Mac.OLDHMACSHA512", PREFIX + "$OldSHA512");
      ˊ(paramConfigurableProvider, "SHA512", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
      ˊ(paramConfigurableProvider, "SHA512", PKCSObjectIdentifiers.aqY);
      ˊ(paramConfigurableProvider, "SHA512/224", PREFIX + "$HashMacT224", PREFIX + "$KeyGeneratorT224");
      ˊ(paramConfigurableProvider, "SHA512/256", PREFIX + "$HashMacT256", PREFIX + "$KeyGeneratorT256");
    }
  }
  
  public static class OldSHA512
    extends BaseMac
  {
    public OldSHA512()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.SHA512
 * JD-Core Version:    0.7.0.1
 */