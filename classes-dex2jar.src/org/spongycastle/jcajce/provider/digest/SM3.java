package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.crypto.digests.SM3Digest;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;

public class SM3
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
      localDigest.aFH = new SM3Digest((SM3Digest)this.aFH);
      return localDigest;
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = SM3.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.SM3", PREFIX + "$Digest");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SM3", "SM3");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.1.2.156.197.1.401", "SM3");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.SM3
 * JD-Core Version:    0.7.0.1
 */