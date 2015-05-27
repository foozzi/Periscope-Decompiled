package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;

public class SHA256
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
      localDigest.aFH = new SHA256Digest((SHA256Digest)this.aFH);
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
      super(256, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = SHA256.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.SHA-256", PREFIX + "$Digest");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA256", "SHA-256");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.aob, "SHA-256");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHHMACSHA256", PREFIX + "$PBEWithMacKeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA-256", "PBEWITHHMACSHA256");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + NISTObjectIdentifiers.aob, "PBEWITHHMACSHA256");
      ˊ(paramConfigurableProvider, "SHA256", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
      ˊ(paramConfigurableProvider, "SHA256", PKCSObjectIdentifiers.aqW);
      ˊ(paramConfigurableProvider, "SHA256", NISTObjectIdentifiers.aob);
    }
  }
  
  public static class PBEWithMacKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithMacKeyFactory()
    {
      super(null, false, 2, 4, 256, 0);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.SHA256
 * JD-Core Version:    0.7.0.1
 */