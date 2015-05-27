package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.SkeinDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.macs.SkeinMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

public class Skein
{
  public static class DigestSkein1024
    extends BCMessageDigest
    implements Cloneable
  {
    public DigestSkein1024(int paramInt)
    {
      super();
    }
    
    public Object clone()
    {
      BCMessageDigest localBCMessageDigest = (BCMessageDigest)super.clone();
      localBCMessageDigest.aFH = new SkeinDigest((SkeinDigest)this.aFH);
      return localBCMessageDigest;
    }
  }
  
  public static class DigestSkein256
    extends BCMessageDigest
    implements Cloneable
  {
    public DigestSkein256(int paramInt)
    {
      super();
    }
    
    public Object clone()
    {
      BCMessageDigest localBCMessageDigest = (BCMessageDigest)super.clone();
      localBCMessageDigest.aFH = new SkeinDigest((SkeinDigest)this.aFH);
      return localBCMessageDigest;
    }
  }
  
  public static class DigestSkein512
    extends BCMessageDigest
    implements Cloneable
  {
    public DigestSkein512(int paramInt)
    {
      super();
    }
    
    public Object clone()
    {
      BCMessageDigest localBCMessageDigest = (BCMessageDigest)super.clone();
      localBCMessageDigest.aFH = new SkeinDigest((SkeinDigest)this.aFH);
      return localBCMessageDigest;
    }
  }
  
  public static class Digest_1024_1024
    extends Skein.DigestSkein1024
  {
    public Digest_1024_1024()
    {
      super();
    }
  }
  
  public static class Digest_1024_384
    extends Skein.DigestSkein1024
  {
    public Digest_1024_384()
    {
      super();
    }
  }
  
  public static class Digest_1024_512
    extends Skein.DigestSkein1024
  {
    public Digest_1024_512()
    {
      super();
    }
  }
  
  public static class Digest_256_128
    extends Skein.DigestSkein256
  {
    public Digest_256_128()
    {
      super();
    }
  }
  
  public static class Digest_256_160
    extends Skein.DigestSkein256
  {
    public Digest_256_160()
    {
      super();
    }
  }
  
  public static class Digest_256_224
    extends Skein.DigestSkein256
  {
    public Digest_256_224()
    {
      super();
    }
  }
  
  public static class Digest_256_256
    extends Skein.DigestSkein256
  {
    public Digest_256_256()
    {
      super();
    }
  }
  
  public static class Digest_512_128
    extends Skein.DigestSkein512
  {
    public Digest_512_128()
    {
      super();
    }
  }
  
  public static class Digest_512_160
    extends Skein.DigestSkein512
  {
    public Digest_512_160()
    {
      super();
    }
  }
  
  public static class Digest_512_224
    extends Skein.DigestSkein512
  {
    public Digest_512_224()
    {
      super();
    }
  }
  
  public static class Digest_512_256
    extends Skein.DigestSkein512
  {
    public Digest_512_256()
    {
      super();
    }
  }
  
  public static class Digest_512_384
    extends Skein.DigestSkein512
  {
    public Digest_512_384()
    {
      super();
    }
  }
  
  public static class Digest_512_512
    extends Skein.DigestSkein512
  {
    public Digest_512_512()
    {
      super();
    }
  }
  
  public static class HMacKeyGenerator_1024_1024
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_1024_1024()
    {
      super(1024, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_1024_384
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_1024_384()
    {
      super(384, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_1024_512
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_1024_512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_256_128
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_256_128()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_256_160
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_256_160()
    {
      super(160, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_256_224
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_256_224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_256_256
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_256_256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_128
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_128()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_160
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_160()
    {
      super(160, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_224
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_256
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_384
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_384()
    {
      super(384, new CipherKeyGenerator());
    }
  }
  
  public static class HMacKeyGenerator_512_512
    extends BaseKeyGenerator
  {
    public HMacKeyGenerator_512_512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class HashMac_1024_1024
    extends BaseMac
  {
    public HashMac_1024_1024()
    {
      super();
    }
  }
  
  public static class HashMac_1024_384
    extends BaseMac
  {
    public HashMac_1024_384()
    {
      super();
    }
  }
  
  public static class HashMac_1024_512
    extends BaseMac
  {
    public HashMac_1024_512()
    {
      super();
    }
  }
  
  public static class HashMac_256_128
    extends BaseMac
  {
    public HashMac_256_128()
    {
      super();
    }
  }
  
  public static class HashMac_256_160
    extends BaseMac
  {
    public HashMac_256_160()
    {
      super();
    }
  }
  
  public static class HashMac_256_224
    extends BaseMac
  {
    public HashMac_256_224()
    {
      super();
    }
  }
  
  public static class HashMac_256_256
    extends BaseMac
  {
    public HashMac_256_256()
    {
      super();
    }
  }
  
  public static class HashMac_512_128
    extends BaseMac
  {
    public HashMac_512_128()
    {
      super();
    }
  }
  
  public static class HashMac_512_160
    extends BaseMac
  {
    public HashMac_512_160()
    {
      super();
    }
  }
  
  public static class HashMac_512_224
    extends BaseMac
  {
    public HashMac_512_224()
    {
      super();
    }
  }
  
  public static class HashMac_512_256
    extends BaseMac
  {
    public HashMac_512_256()
    {
      super();
    }
  }
  
  public static class HashMac_512_384
    extends BaseMac
  {
    public HashMac_512_384()
    {
      super();
    }
  }
  
  public static class HashMac_512_512
    extends BaseMac
  {
    public HashMac_512_512()
    {
      super();
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = Skein.class.getName();
    
    private void ˊ(ConfigurableProvider paramConfigurableProvider, int paramInt1, int paramInt2)
    {
      String str1 = "Skein-MAC-" + paramInt1 + "-" + paramInt2;
      String str2 = PREFIX + "$SkeinMac_" + paramInt1 + "_" + paramInt2;
      String str3 = PREFIX + "$SkeinMacKeyGenerator_" + paramInt1 + "_" + paramInt2;
      paramConfigurableProvider.ﹶ("Mac." + str1, str2);
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.Skein-MAC" + paramInt1 + "/" + paramInt2, str1);
      paramConfigurableProvider.ﹶ("KeyGenerator." + str1, str3);
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.Skein-MAC" + paramInt1 + "/" + paramInt2, str1);
    }
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-256-128", PREFIX + "$Digest_256_128");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-256-160", PREFIX + "$Digest_256_160");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-256-224", PREFIX + "$Digest_256_224");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-256-256", PREFIX + "$Digest_256_256");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-128", PREFIX + "$Digest_512_128");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-160", PREFIX + "$Digest_512_160");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-224", PREFIX + "$Digest_512_224");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-256", PREFIX + "$Digest_512_256");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-384", PREFIX + "$Digest_512_384");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-512-512", PREFIX + "$Digest_512_512");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-1024-384", PREFIX + "$Digest_1024_384");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-1024-512", PREFIX + "$Digest_1024_512");
      paramConfigurableProvider.ﹶ("MessageDigest.Skein-1024-1024", PREFIX + "$Digest_1024_1024");
      ˊ(paramConfigurableProvider, "Skein-256-128", PREFIX + "$HashMac_256_128", PREFIX + "$HMacKeyGenerator_256_128");
      ˊ(paramConfigurableProvider, "Skein-256-160", PREFIX + "$HashMac_256_160", PREFIX + "$HMacKeyGenerator_256_160");
      ˊ(paramConfigurableProvider, "Skein-256-224", PREFIX + "$HashMac_256_224", PREFIX + "$HMacKeyGenerator_256_224");
      ˊ(paramConfigurableProvider, "Skein-256-256", PREFIX + "$HashMac_256_256", PREFIX + "$HMacKeyGenerator_256_256");
      ˊ(paramConfigurableProvider, "Skein-512-128", PREFIX + "$HashMac_512_128", PREFIX + "$HMacKeyGenerator_512_128");
      ˊ(paramConfigurableProvider, "Skein-512-160", PREFIX + "$HashMac_512_160", PREFIX + "$HMacKeyGenerator_512_160");
      ˊ(paramConfigurableProvider, "Skein-512-224", PREFIX + "$HashMac_512_224", PREFIX + "$HMacKeyGenerator_512_224");
      ˊ(paramConfigurableProvider, "Skein-512-256", PREFIX + "$HashMac_512_256", PREFIX + "$HMacKeyGenerator_512_256");
      ˊ(paramConfigurableProvider, "Skein-512-384", PREFIX + "$HashMac_512_384", PREFIX + "$HMacKeyGenerator_512_384");
      ˊ(paramConfigurableProvider, "Skein-512-512", PREFIX + "$HashMac_512_512", PREFIX + "$HMacKeyGenerator_512_512");
      ˊ(paramConfigurableProvider, "Skein-1024-384", PREFIX + "$HashMac_1024_384", PREFIX + "$HMacKeyGenerator_1024_384");
      ˊ(paramConfigurableProvider, "Skein-1024-512", PREFIX + "$HashMac_1024_512", PREFIX + "$HMacKeyGenerator_1024_512");
      ˊ(paramConfigurableProvider, "Skein-1024-1024", PREFIX + "$HashMac_1024_1024", PREFIX + "$HMacKeyGenerator_1024_1024");
      ˊ(paramConfigurableProvider, 256, 128);
      ˊ(paramConfigurableProvider, 256, 160);
      ˊ(paramConfigurableProvider, 256, 224);
      ˊ(paramConfigurableProvider, 256, 256);
      ˊ(paramConfigurableProvider, 512, 128);
      ˊ(paramConfigurableProvider, 512, 160);
      ˊ(paramConfigurableProvider, 512, 224);
      ˊ(paramConfigurableProvider, 512, 256);
      ˊ(paramConfigurableProvider, 512, 384);
      ˊ(paramConfigurableProvider, 512, 512);
      ˊ(paramConfigurableProvider, 1024, 384);
      ˊ(paramConfigurableProvider, 1024, 512);
      ˊ(paramConfigurableProvider, 1024, 1024);
    }
  }
  
  public static class SkeinMacKeyGenerator_1024_1024
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_1024_1024()
    {
      super(1024, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_1024_384
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_1024_384()
    {
      super(384, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_1024_512
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_1024_512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_256_128
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_256_128()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_256_160
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_256_160()
    {
      super(160, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_256_224
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_256_224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_256_256
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_256_256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_128
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_128()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_160
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_160()
    {
      super(160, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_224
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_224()
    {
      super(224, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_256
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_256()
    {
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_384
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_384()
    {
      super(384, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMacKeyGenerator_512_512
    extends BaseKeyGenerator
  {
    public SkeinMacKeyGenerator_512_512()
    {
      super(512, new CipherKeyGenerator());
    }
  }
  
  public static class SkeinMac_1024_1024
    extends BaseMac
  {
    public SkeinMac_1024_1024()
    {
      super();
    }
  }
  
  public static class SkeinMac_1024_384
    extends BaseMac
  {
    public SkeinMac_1024_384()
    {
      super();
    }
  }
  
  public static class SkeinMac_1024_512
    extends BaseMac
  {
    public SkeinMac_1024_512()
    {
      super();
    }
  }
  
  public static class SkeinMac_256_128
    extends BaseMac
  {
    public SkeinMac_256_128()
    {
      super();
    }
  }
  
  public static class SkeinMac_256_160
    extends BaseMac
  {
    public SkeinMac_256_160()
    {
      super();
    }
  }
  
  public static class SkeinMac_256_224
    extends BaseMac
  {
    public SkeinMac_256_224()
    {
      super();
    }
  }
  
  public static class SkeinMac_256_256
    extends BaseMac
  {
    public SkeinMac_256_256()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_128
    extends BaseMac
  {
    public SkeinMac_512_128()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_160
    extends BaseMac
  {
    public SkeinMac_512_160()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_224
    extends BaseMac
  {
    public SkeinMac_512_224()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_256
    extends BaseMac
  {
    public SkeinMac_512_256()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_384
    extends BaseMac
  {
    public SkeinMac_512_384()
    {
      super();
    }
  }
  
  public static class SkeinMac_512_512
    extends BaseMac
  {
    public SkeinMac_512_512()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.Skein
 * JD-Core Version:    0.7.0.1
 */