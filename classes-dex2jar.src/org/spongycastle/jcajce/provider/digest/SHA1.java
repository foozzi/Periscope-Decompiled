package org.spongycastle.jcajce.provider.digest;

import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import org.spongycastle.asn1.iana.IANAObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.spongycastle.jcajce.provider.symmetric.util.PBE.Util;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;

public class SHA1
{
  public static class BasePBKDF2WithHmacSHA1
    extends BaseSecretKeyFactory
  {
    private int scheme;
    
    public BasePBKDF2WithHmacSHA1(String paramString, int paramInt)
    {
      super(PKCSObjectIdentifiers.aqN);
      this.scheme = paramInt;
    }
    
    protected SecretKey engineGenerateSecret(KeySpec paramKeySpec)
    {
      if ((paramKeySpec instanceof PBEKeySpec))
      {
        paramKeySpec = (PBEKeySpec)paramKeySpec;
        if (paramKeySpec.getSalt() == null) {
          throw new InvalidKeySpecException("missing required salt");
        }
        if (paramKeySpec.getIterationCount() <= 0) {
          throw new InvalidKeySpecException("positive iteration count required: " + paramKeySpec.getIterationCount());
        }
        if (paramKeySpec.getKeyLength() <= 0) {
          throw new InvalidKeySpecException("positive key length required: " + paramKeySpec.getKeyLength());
        }
        if (paramKeySpec.getPassword().length == 0) {
          throw new IllegalArgumentException("password empty");
        }
        int i = paramKeySpec.getKeyLength();
        CipherParameters localCipherParameters = PBE.Util.ˊ(paramKeySpec, this.scheme, 1, i);
        return new BCPBEKey(this.aZp, this.aZw, this.scheme, 1, i, -1, paramKeySpec, localCipherParameters);
      }
      throw new InvalidKeySpecException("Invalid KeySpec");
    }
  }
  
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
      localDigest.aFH = new SHA1Digest((SHA1Digest)this.aFH);
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
      super(160, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends DigestAlgorithmProvider
  {
    private static final String PREFIX = SHA1.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("MessageDigest.SHA-1", PREFIX + "$Digest");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA1", "SHA-1");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest.SHA", "SHA-1");
      paramConfigurableProvider.ﹶ("Alg.Alias.MessageDigest." + OIWObjectIdentifiers.apM, "SHA-1");
      ˊ(paramConfigurableProvider, "SHA1", PREFIX + "$HashMac", PREFIX + "$KeyGenerator");
      ˊ(paramConfigurableProvider, "SHA1", PKCSObjectIdentifiers.aqU);
      ˊ(paramConfigurableProvider, "SHA1", IANAObjectIdentifiers.alP);
      paramConfigurableProvider.ﹶ("Mac.PBEWITHHMACSHA", PREFIX + "$SHA1Mac");
      paramConfigurableProvider.ﹶ("Mac.PBEWITHHMACSHA1", PREFIX + "$SHA1Mac");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHHMACSHA", "PBEWITHHMACSHA1");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + OIWObjectIdentifiers.apM, "PBEWITHHMACSHA1");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac." + OIWObjectIdentifiers.apM, "PBEWITHHMACSHA");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHHMACSHA1", PREFIX + "$PBEWithMacKeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBKDF2WithHmacSHA1", PREFIX + "$PBKDF2WithHmacSHA1UTF8");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBKDF2WithHmacSHA1AndUTF8", "PBKDF2WithHmacSHA1");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBKDF2WithHmacSHA1And8BIT", PREFIX + "$PBKDF2WithHmacSHA18BIT");
    }
  }
  
  public static class PBEWithMacKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithMacKeyFactory()
    {
      super(null, false, 2, 1, 160, 0);
    }
  }
  
  public static class PBKDF2WithHmacSHA18BIT
    extends SHA1.BasePBKDF2WithHmacSHA1
  {
    public PBKDF2WithHmacSHA18BIT()
    {
      super(1);
    }
  }
  
  public static class PBKDF2WithHmacSHA1UTF8
    extends SHA1.BasePBKDF2WithHmacSHA1
  {
    public PBKDF2WithHmacSHA1UTF8()
    {
      super(5);
    }
  }
  
  public static class SHA1Mac
    extends BaseMac
  {
    public SHA1Mac()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.digest.SHA1
 * JD-Core Version:    0.7.0.1
 */