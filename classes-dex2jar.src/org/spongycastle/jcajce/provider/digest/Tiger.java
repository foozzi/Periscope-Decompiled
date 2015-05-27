package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.iana.IANAObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.TigerDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;

public class Tiger
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
      localDigest.aFH = new TigerDigest((TigerDigest)this.aFH);
      return localDigest;
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
  
  public static class KeyGenerator
    extends BaseKeyGenerator
  {
    public KeyGenerator()
    {
      super(192, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = Tiger.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.TIGER", PREFIX + "$Digest");
      paramConfigurableProvider.ﹶ("MessageDigest.Tiger", PREFIX + "$Digest");
      ˊ(paramConfigurableProvider, "TIGER", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
      ˊ(paramConfigurableProvider, "TIGER", IANAObjectIdentifiers.alQ);
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHHMACTIGER", PREFIX + "$PBEWithMacKeyFactory");
    }
  }
  
  public static class PBEWithHashMac
    extends BaseMac
  {
    public PBEWithHashMac()
    {
      super(2, 3, 192);
    }
  }
  
  public static class PBEWithMacKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithMacKeyFactory()
    {
      super(null, false, 2, 3, 192, 0);
    }
  }
  
  public static class TigerHmac
    extends BaseMac
  {
    public TigerHmac()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.Tiger
 * JD-Core Version:    0.7.0.1
 */