package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.SHA3Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

public class SHA3
{
  public static class Digest224
    extends SHA3.DigestSHA3
  {
    public Digest224()
    {
      super();
    }
  }
  
  public static class Digest256
    extends SHA3.DigestSHA3
  {
    public Digest256()
    {
      super();
    }
  }
  
  public static class Digest384
    extends SHA3.DigestSHA3
  {
    public Digest384()
    {
      super();
    }
  }
  
  public static class Digest512
    extends SHA3.DigestSHA3
  {
    public Digest512()
    {
      super();
    }
  }
  
  public static class DigestSHA3
    extends BCMessageDigest
    implements Cloneable
  {
    public DigestSHA3(int paramInt)
    {
      super();
    }
    
    public Object clone()
    {
      BCMessageDigest localBCMessageDigest = (BCMessageDigest)super.clone();
      localBCMessageDigest.aFH = new SHA3Digest((SHA3Digest)this.aFH);
      return localBCMessageDigest;
    }
  }
  
  public static class HashMac224
    extends BaseMac
  {
    public HashMac224()
    {
      super();
    }
  }
  
  public static class HashMac256
    extends BaseMac
  {
    public HashMac256()
    {
      super();
    }
  }
  
  public static class HashMac384
    extends BaseMac
  {
    public HashMac384()
    {
      super();
    }
  }
  
  public static class HashMac512
    extends BaseMac
  {
    public HashMac512()
    {
      super();
    }
  }
  
  public static class KeyGenerator224
    extends BaseKeyGenerator
  {
    public KeyGenerator224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGenerator256
    extends BaseKeyGenerator
  {
    public KeyGenerator256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGenerator384
    extends BaseKeyGenerator
  {
    public KeyGenerator384()
    {
      super(384, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGenerator512
    extends BaseKeyGenerator
  {
    public KeyGenerator512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = SHA3.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.SHA3-224", PREFIX + "$Digest224");
      paramConfigurableProvider.ﹶ("MessageDigest.SHA3-256", PREFIX + "$Digest256");
      paramConfigurableProvider.ﹶ("MessageDigest.SHA3-384", PREFIX + "$Digest384");
      paramConfigurableProvider.ﹶ("MessageDigest.SHA3-512", PREFIX + "$Digest512");
      ˊ(paramConfigurableProvider, "SHA3-224", PREFIX + "$HashMac224", PREFIX + "$KeyGenerator224");
      ˊ(paramConfigurableProvider, "SHA3-256", PREFIX + "$HashMac256", PREFIX + "$KeyGenerator256");
      ˊ(paramConfigurableProvider, "SHA3-384", PREFIX + "$HashMac384", PREFIX + "$KeyGenerator384");
      ˊ(paramConfigurableProvider, "SHA3-512", PREFIX + "$HashMac512", PREFIX + "$KeyGenerator512");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.SHA3
 * JD-Core Version:    0.7.0.1
 */