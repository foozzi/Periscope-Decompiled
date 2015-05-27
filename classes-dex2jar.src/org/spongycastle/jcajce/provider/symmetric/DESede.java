package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.engines.DESedeEngine;
import org.spongycastle.crypto.engines.DESedeWrapEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.generators.DESedeKeyGenerator;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.ISO7816d4Padding;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class DESede
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
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("DES", "SC");
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
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DES parameter generation.");
    }
  }
  
  public static class CBC
    extends BaseBlockCipher
  {
    public CBC()
    {
      super(64);
    }
  }
  
  public static class CBCMAC
    extends BaseMac
  {
    public CBCMAC()
    {
      super();
    }
  }
  
  public static class CMAC
    extends BaseMac
  {
    public CMAC()
    {
      super();
    }
  }
  
  public static class DESede64
    extends BaseMac
  {
    public DESede64()
    {
      super();
    }
  }
  
  public static class DESede64with7816d4
    extends BaseMac
  {
    public DESede64with7816d4()
    {
      super();
    }
  }
  
  public static class DESedeCFB8
    extends BaseMac
  {
    public DESedeCFB8()
    {
      super();
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
  
  public static class KeyFactory
    extends BaseSecretKeyFactory
  {
    public KeyFactory()
    {
      super(null);
    }
    
    protected SecretKey engineGenerateSecret(KeySpec paramKeySpec)
    {
      if ((paramKeySpec instanceof DESedeKeySpec)) {
        return new SecretKeySpec(((DESedeKeySpec)paramKeySpec).getKey(), "DESede");
      }
      return super.engineGenerateSecret(paramKeySpec);
    }
    
    protected KeySpec engineGetKeySpec(SecretKey paramSecretKey, Class paramClass)
    {
      if (paramClass == null) {
        throw new InvalidKeySpecException("keySpec parameter is null");
      }
      if (paramSecretKey == null) {
        throw new InvalidKeySpecException("key parameter is null");
      }
      if (SecretKeySpec.class.isAssignableFrom(paramClass)) {
        return new SecretKeySpec(paramSecretKey.getEncoded(), this.aZp);
      }
      if (DESedeKeySpec.class.isAssignableFrom(paramClass))
      {
        paramSecretKey = paramSecretKey.getEncoded();
        try
        {
          if (paramSecretKey.length == 16)
          {
            paramClass = new byte[24];
            System.arraycopy(paramSecretKey, 0, paramClass, 0, 16);
            System.arraycopy(paramSecretKey, 0, paramClass, 16, 8);
            paramSecretKey = new DESedeKeySpec(paramClass);
            return paramSecretKey;
          }
          paramSecretKey = new DESedeKeySpec(paramSecretKey);
          return paramSecretKey;
        }
        catch (Exception paramSecretKey)
        {
          throw new InvalidKeySpecException(paramSecretKey.toString());
        }
      }
      throw new InvalidKeySpecException("Invalid KeySpec");
    }
  }
  
  public static class KeyGenerator
    extends BaseKeyGenerator
  {
    private boolean aYV = false;
    
    public KeyGenerator()
    {
      super(192, new DESedeKeyGenerator());
    }
    
    protected SecretKey engineGenerateKey()
    {
      if (this.aZs)
      {
        this.aZr.ˊ(new KeyGenerationParameters(new SecureRandom(), this.aZq));
        this.aZs = false;
      }
      if (!this.aYV)
      {
        byte[] arrayOfByte = this.aZr.iI();
        System.arraycopy(arrayOfByte, 0, arrayOfByte, 16, 8);
        return new SecretKeySpec(arrayOfByte, this.aZp);
      }
      return new SecretKeySpec(this.aZr.iI(), this.aZp);
    }
    
    protected void engineInit(int paramInt, SecureRandom paramSecureRandom)
    {
      super.engineInit(paramInt, paramSecureRandom);
      this.aYV = true;
    }
  }
  
  public static class KeyGenerator3
    extends BaseKeyGenerator
  {
    public KeyGenerator3()
    {
      super(192, new DESedeKeyGenerator());
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = DESede.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.DESEDE", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + PKCSObjectIdentifiers.aqO, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher.DESEDEWRAP", PREFIX + "$Wrap");
      paramConfigurableProvider.ﹶ("Cipher." + PKCSObjectIdentifiers.asG, PREFIX + "$Wrap");
      paramConfigurableProvider.ﹶ("Cipher.DESEDERFC3211WRAP", PREFIX + "$RFC3211");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.TDEA", "DESEDE");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.TDEAWRAP", "DESEDEWRAP");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.TDEA", "DESEDE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.TDEA", "DESEDE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.TDEA", "DESEDE");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.TDEA", "DESEDE");
      if (paramConfigurableProvider.ﹺ("MessageDigest", "SHA-1"))
      {
        paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", PREFIX + "$PBEWithSHAAndDES3Key");
        paramConfigurableProvider.ﹶ("Cipher.BROKENPBEWITHSHAAND3-KEYTRIPLEDES-CBC", PREFIX + "$BrokePBEWithSHAAndDES3Key");
        paramConfigurableProvider.ﹶ("Cipher.OLDPBEWITHSHAAND3-KEYTRIPLEDES-CBC", PREFIX + "$OldPBEWithSHAAndDES3Key");
        paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", PREFIX + "$PBEWithSHAAndDES2Key");
        paramConfigurableProvider.ﹶ("Cipher.BROKENPBEWITHSHAAND2-KEYTRIPLEDES-CBC", PREFIX + "$BrokePBEWithSHAAndDES2Key");
        paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.asB, "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
        paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.asC, "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
        paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1ANDDESEDE", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
        paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND3-KEYTRIPLEDES-CBC", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
        paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND2-KEYTRIPLEDES-CBC", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
      }
      paramConfigurableProvider.ﹶ("KeyGenerator.DESEDE", PREFIX + "$KeyGenerator");
      paramConfigurableProvider.ﹶ("KeyGenerator." + PKCSObjectIdentifiers.aqO, PREFIX + "$KeyGenerator3");
      paramConfigurableProvider.ﹶ("KeyGenerator.DESEDEWRAP", PREFIX + "$KeyGenerator");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.DESEDE", PREFIX + "$KeyFactory");
      paramConfigurableProvider.ﹶ("Mac.DESEDECMAC", PREFIX + "$CMAC");
      paramConfigurableProvider.ﹶ("Mac.DESEDEMAC", PREFIX + "$CBCMAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDE", "DESEDEMAC");
      paramConfigurableProvider.ﹶ("Mac.DESEDEMAC/CFB8", PREFIX + "$DESedeCFB8");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDE/CFB8", "DESEDEMAC/CFB8");
      paramConfigurableProvider.ﹶ("Mac.DESEDEMAC64", PREFIX + "$DESede64");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDE64", "DESEDEMAC64");
      paramConfigurableProvider.ﹶ("Mac.DESEDEMAC64WITHISO7816-4PADDING", PREFIX + "$DESede64with7816d4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDE64WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDEISO9797ALG1MACWITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESEDEISO9797ALG1WITHISO7816-4PADDING", "DESEDEMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.DESEDE", "org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + PKCSObjectIdentifiers.aqO, "DESEDE");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.DESEDE", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + PKCSObjectIdentifiers.aqO, "DESEDE");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", PREFIX + "$PBEWithSHAAndDES3KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", PREFIX + "$PBEWithSHAAndDES2KeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND3-KEYTRIPLEDES-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND2-KEYTRIPLEDES-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES3KEY-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDDES2KEY-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.3", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.4", "PBEWITHSHAAND2-KEYTRIPLEDES-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWithSHAAnd3KeyTripleDES", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.3", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.4", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWithSHAAnd3KeyTripleDES", "PBEWITHSHAAND3-KEYTRIPLEDES-CBC");
    }
  }
  
  public static class PBEWithSHAAndDES2Key
    extends BaseBlockCipher
  {
    public PBEWithSHAAndDES2Key()
    {
      super();
    }
  }
  
  public static class PBEWithSHAAndDES2KeyFactory
    extends DES.DESPBEKeyFactory
  {
    public PBEWithSHAAndDES2KeyFactory()
    {
      super(PKCSObjectIdentifiers.asC, true, 2, 1, 128, 64);
    }
  }
  
  public static class PBEWithSHAAndDES3Key
    extends BaseBlockCipher
  {
    public PBEWithSHAAndDES3Key()
    {
      super();
    }
  }
  
  public static class PBEWithSHAAndDES3KeyFactory
    extends DES.DESPBEKeyFactory
  {
    public PBEWithSHAAndDES3KeyFactory()
    {
      super(PKCSObjectIdentifiers.asB, true, 2, 1, 192, 64);
    }
  }
  
  public static class RFC3211
    extends BaseWrapCipher
  {
    public RFC3211()
    {
      super(8);
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
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.DESede
 * JD-Core Version:    0.7.0.1
 */