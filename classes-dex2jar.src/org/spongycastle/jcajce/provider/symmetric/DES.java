package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.crypto.engines.DESEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.generators.DESKeyGenerator;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.macs.ISO9797Alg3Mac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.ISO7816d4Padding;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.PBE.Util;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class DES
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
  
  public static class DES64
    extends BaseMac
  {
    public DES64()
    {
      super();
    }
  }
  
  public static class DES64with7816d4
    extends BaseMac
  {
    public DES64with7816d4()
    {
      super();
    }
  }
  
  public static class DES9797Alg3
    extends BaseMac
  {
    public DES9797Alg3()
    {
      super();
    }
  }
  
  public static class DES9797Alg3with7816d4
    extends BaseMac
  {
    public DES9797Alg3with7816d4()
    {
      super();
    }
  }
  
  public static class DESCFB8
    extends BaseMac
  {
    public DESCFB8()
    {
      super();
    }
  }
  
  public static class DESPBEKeyFactory
    extends BaseSecretKeyFactory
  {
    private boolean aYS;
    private int aYT;
    private int aYU;
    private int ahI;
    private int scheme;
    
    public DESPBEKeyFactory(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super(paramASN1ObjectIdentifier);
      this.aYS = paramBoolean;
      this.scheme = paramInt1;
      this.aYT = paramInt2;
      this.ahI = paramInt3;
      this.aYU = paramInt4;
    }
    
    protected SecretKey engineGenerateSecret(KeySpec paramKeySpec)
    {
      if ((paramKeySpec instanceof PBEKeySpec))
      {
        PBEKeySpec localPBEKeySpec = (PBEKeySpec)paramKeySpec;
        if (localPBEKeySpec.getSalt() == null) {
          return new BCPBEKey(this.aZp, this.aZw, this.scheme, this.aYT, this.ahI, this.aYU, localPBEKeySpec, null);
        }
        if (this.aYS) {
          paramKeySpec = PBE.Util.ˊ(localPBEKeySpec, this.scheme, this.aYT, this.ahI, this.aYU);
        } else {
          paramKeySpec = PBE.Util.ˊ(localPBEKeySpec, this.scheme, this.aYT, this.ahI);
        }
        KeyParameter localKeyParameter;
        if ((paramKeySpec instanceof ParametersWithIV)) {
          localKeyParameter = (KeyParameter)((ParametersWithIV)paramKeySpec).lh();
        } else {
          localKeyParameter = (KeyParameter)paramKeySpec;
        }
        DESParameters.ı(localKeyParameter.getKey());
        return new BCPBEKey(this.aZp, this.aZw, this.scheme, this.aYT, this.ahI, this.aYU, localPBEKeySpec, paramKeySpec);
      }
      throw new InvalidKeySpecException("Invalid KeySpec");
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
      if ((paramKeySpec instanceof DESKeySpec)) {
        return new SecretKeySpec(((DESKeySpec)paramKeySpec).getKey(), "DES");
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
      if (DESKeySpec.class.isAssignableFrom(paramClass))
      {
        paramSecretKey = paramSecretKey.getEncoded();
        try
        {
          paramSecretKey = new DESKeySpec(paramSecretKey);
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
    public KeyGenerator()
    {
      super(64, new DESKeyGenerator());
    }
    
    protected SecretKey engineGenerateKey()
    {
      if (this.aZs)
      {
        this.aZr.ˊ(new KeyGenerationParameters(new SecureRandom(), this.aZq));
        this.aZs = false;
      }
      return new SecretKeySpec(this.aZr.iI(), this.aZp);
    }
    
    protected void engineInit(int paramInt, SecureRandom paramSecureRandom)
    {
      super.engineInit(paramInt, paramSecureRandom);
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = DES.class.getName();
    
    private void ˊ(ConfigurableProvider paramConfigurableProvider, ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString)
    {
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator." + paramASN1ObjectIdentifier.getId(), paramString);
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyFactory." + paramASN1ObjectIdentifier.getId(), paramString);
    }
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("Cipher.DES", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + OIWObjectIdentifiers.apI, PREFIX + "$CBC");
      ˊ(paramConfigurableProvider, OIWObjectIdentifiers.apI, "DES");
      paramConfigurableProvider.ﹶ("Cipher.DESRFC3211WRAP", PREFIX + "$RFC3211");
      paramConfigurableProvider.ﹶ("KeyGenerator.DES", PREFIX + "$KeyGenerator");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.DES", PREFIX + "$KeyFactory");
      paramConfigurableProvider.ﹶ("Mac.DESCMAC", PREFIX + "$CMAC");
      paramConfigurableProvider.ﹶ("Mac.DESMAC", PREFIX + "$CBCMAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DES", "DESMAC");
      paramConfigurableProvider.ﹶ("Mac.DESMAC/CFB8", PREFIX + "$DESCFB8");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DES/CFB8", "DESMAC/CFB8");
      paramConfigurableProvider.ﹶ("Mac.DESMAC64", PREFIX + "$DES64");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DES64", "DESMAC64");
      paramConfigurableProvider.ﹶ("Mac.DESMAC64WITHISO7816-4PADDING", PREFIX + "$DES64with7816d4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DES64WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESISO9797ALG1MACWITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESISO9797ALG1WITHISO7816-4PADDING", "DESMAC64WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("Mac.DESWITHISO9797", PREFIX + "$DES9797Alg3");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.DESISO9797MAC", "DESWITHISO9797");
      paramConfigurableProvider.ﹶ("Mac.ISO9797ALG3MAC", PREFIX + "$DES9797Alg3");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.ISO9797ALG3", "ISO9797ALG3MAC");
      paramConfigurableProvider.ﹶ("Mac.ISO9797ALG3WITHISO7816-4PADDING", PREFIX + "$DES9797Alg3with7816d4");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.ISO9797ALG3MACWITHISO7816-4PADDING", "ISO9797ALG3WITHISO7816-4PADDING");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.DES", "org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + OIWObjectIdentifiers.apI, "DES");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.DES", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + OIWObjectIdentifiers.apI, "DES");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD2ANDDES", PREFIX + "$PBEWithMD2");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD5ANDDES", PREFIX + "$PBEWithMD5");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHA1ANDDES", PREFIX + "$PBEWithSHA1");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqG, "PBEWITHMD2ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqI, "PBEWITHMD5ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqK, "PBEWITHSHA1ANDDES");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD2ANDDES", PREFIX + "$PBEWithMD2KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD5ANDDES", PREFIX + "$PBEWithMD5KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHA1ANDDES", PREFIX + "$PBEWithSHA1KeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDDES-CBC", "PBEWITHMD2ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDDES-CBC", "PBEWITHMD5ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDDES-CBC", "PBEWITHSHA1ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqG, "PBEWITHMD2ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqI, "PBEWITHMD5ANDDES");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqK, "PBEWITHSHA1ANDDES");
    }
  }
  
  public static class PBEWithMD2
    extends BaseBlockCipher
  {
    public PBEWithMD2()
    {
      super();
    }
  }
  
  public static class PBEWithMD2KeyFactory
    extends DES.DESPBEKeyFactory
  {
    public PBEWithMD2KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqG, true, 0, 5, 64, 64);
    }
  }
  
  public static class PBEWithMD5
    extends BaseBlockCipher
  {
    public PBEWithMD5()
    {
      super();
    }
  }
  
  public static class PBEWithMD5KeyFactory
    extends DES.DESPBEKeyFactory
  {
    public PBEWithMD5KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqI, true, 0, 0, 64, 64);
    }
  }
  
  public static class PBEWithSHA1
    extends BaseBlockCipher
  {
    public PBEWithSHA1()
    {
      super();
    }
  }
  
  public static class PBEWithSHA1KeyFactory
    extends DES.DESPBEKeyFactory
  {
    public PBEWithSHA1KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqK, true, 0, 1, 64, 64);
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
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.DES
 * JD-Core Version:    0.7.0.1
 */