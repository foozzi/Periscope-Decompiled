package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.bc.BCObjectIdentifiers;
import org.spongycastle.asn1.cms.GCMParameters;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.AESFastEngine;
import org.spongycastle.crypto.engines.AESWrapEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.engines.RFC5649WrapEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.macs.Poly1305;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.spongycastle.util.Integers;

public final class AES
{
  private static final Class aYP = ⅼ("javax.crypto.spec.GCMParameterSpec");
  
  private static Class ⅼ(String paramString)
  {
    try
    {
      paramString = AES.class.getClassLoader().loadClass(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static class AESCMAC
    extends BaseMac
  {
    public AESCMAC()
    {
      super();
    }
  }
  
  public static class AESGMAC
    extends BaseMac
  {
    public AESGMAC()
    {
      super();
    }
  }
  
  public static class AlgParamGen
    extends BaseAlgorithmParameterGenerator
  {
    protected AlgorithmParameters engineGenerateParameters()
    {
      byte[] arrayOfByte = new byte[16];
      if (this.aFa == null) {
        this.aFa = new SecureRandom();
      }
      this.aFa.nextBytes(arrayOfByte);
      try
      {
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("AES", "SC");
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
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
    }
  }
  
  public static class AlgParams
    extends IvAlgorithmParameters
  {
    protected String engineToString()
    {
      return "AES IV";
    }
  }
  
  public static class AlgParamsGCM
    extends BaseAlgorithmParameters
  {
    private GCMParameters aYQ;
    
    protected byte[] engineGetEncoded()
    {
      return this.aYQ.getEncoded();
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if (!ᕪ(paramString)) {
        throw new IOException("unknown format specified");
      }
      return this.aYQ.getEncoded();
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if (AES.nQ() != null) {
        try
        {
          Method localMethod = AES.nQ().getDeclaredMethod("getTLen", new Class[0]);
          this.aYQ = new GCMParameters((byte[])AES.nQ().getDeclaredMethod("getIV", new Class[0]).invoke(paramAlgorithmParameterSpec, new Object[0]), ((Integer)localMethod.invoke(paramAlgorithmParameterSpec, new Object[0])).intValue());
          return;
        }
        catch (Exception paramAlgorithmParameterSpec)
        {
          throw new InvalidParameterSpecException("Cannot process GCMParameterSpec.");
        }
      }
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.aYQ = GCMParameters.ˁ(paramArrayOfByte);
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (!ᕪ(paramString)) {
        throw new IOException("unknown format specified");
      }
      this.aYQ = GCMParameters.ˁ(paramArrayOfByte);
    }
    
    protected String engineToString()
    {
      return "GCM";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if (AES.nQ() != null) {
        try
        {
          paramClass = (AlgorithmParameterSpec)AES.nQ().getConstructor(new Class[] { Integer.TYPE, [B.class }).newInstance(new Object[] { Integers.valueOf(this.aYQ.fo()), this.aYQ.fn() });
          return paramClass;
        }
        catch (NoSuchMethodException paramClass)
        {
          throw new InvalidParameterSpecException("no constructor found!");
        }
        catch (Exception paramClass)
        {
          throw new InvalidParameterSpecException("construction failed: " + paramClass.getMessage());
        }
      }
      throw new InvalidParameterSpecException("unknown parameter spec: " + paramClass.getName());
    }
  }
  
  public static class CBC
    extends BaseBlockCipher
  {
    public CBC()
    {
      super(128);
    }
  }
  
  public static class CFB
    extends BaseBlockCipher
  {
    public CFB()
    {
      super(128);
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
  
  public static class GCM
    extends BaseBlockCipher
  {
    public GCM()
    {
      super();
    }
  }
  
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      this(192);
    }
    
    public KeyGen(int paramInt)
    {
      super(paramInt, new CipherKeyGenerator());
    }
  }
  
  public static class KeyGen128
    extends AES.KeyGen
  {
    public KeyGen128()
    {
      super();
    }
  }
  
  public static class KeyGen192
    extends AES.KeyGen
  {
    public KeyGen192()
    {
      super();
    }
  }
  
  public static class KeyGen256
    extends AES.KeyGen
  {
    public KeyGen256()
    {
      super();
    }
  }
  
  public static class Mappings
    extends SymmetricAlgorithmProvider
  {
    private static final String PREFIX = AES.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.AES", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aoj, "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aoq, "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aox, "AES");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.GCM", PREFIX + "$AlgParamsGCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aon, "GCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aou, "GCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.aoB, "GCM");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.AES", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.aoj, "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.aoq, "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.aox, "AES");
      paramConfigurableProvider.ﹶ("Cipher.AES", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aoi, PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aop, PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aow, PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aoj, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aoq, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aox, PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aok, PREFIX + "$OFB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aor, PREFIX + "$OFB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aoy, PREFIX + "$OFB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aol, PREFIX + "$CFB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aos, PREFIX + "$CFB");
      paramConfigurableProvider.ﹶ("Cipher." + NISTObjectIdentifiers.aoz, PREFIX + "$CFB");
      paramConfigurableProvider.ﹶ("Cipher.AESWRAP", PREFIX + "$Wrap");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aom, "AESWRAP");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aot, "AESWRAP");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aoA, "AESWRAP");
      paramConfigurableProvider.ﹶ("Cipher.AESRFC3211WRAP", PREFIX + "$RFC3211Wrap");
      paramConfigurableProvider.ﹶ("Cipher.AESRFC5649WRAP", PREFIX + "$RFC5649Wrap");
      paramConfigurableProvider.ﹶ("Cipher.GCM", PREFIX + "$GCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aon, "GCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aou, "GCM");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + NISTObjectIdentifiers.aoB, "GCM");
      paramConfigurableProvider.ﹶ("KeyGenerator.AES", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("KeyGenerator.2.16.840.1.101.3.4.2", PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator.2.16.840.1.101.3.4.22", PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator.2.16.840.1.101.3.4.42", PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoi, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoj, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aok, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aol, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aop, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoq, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aor, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aos, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aow, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aox, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoy, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoz, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("KeyGenerator.AESWRAP", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aom, PREFIX + "$KeyGen128");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aot, PREFIX + "$KeyGen192");
      paramConfigurableProvider.ﹶ("KeyGenerator." + NISTObjectIdentifiers.aoA, PREFIX + "$KeyGen256");
      paramConfigurableProvider.ﹶ("Mac.AESCMAC", PREFIX + "$AESCMAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abL.getId(), "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abM.getId(), "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abN.getId(), "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abO.getId(), "PBEWITHSHA256AND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abP.getId(), "PBEWITHSHA256AND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + BCObjectIdentifiers.abQ.getId(), "PBEWITHSHA256AND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND128BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND192BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND256BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHA256AND128BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHA256AND192BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHA256AND256BITAES-CBC-BC", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL", PREFIX + "$PBEWithAESCBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL", PREFIX + "$PBEWithMD5And128BitAESCBCOpenSSL");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL", PREFIX + "$PBEWithMD5And192BitAESCBCOpenSSL");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL", PREFIX + "$PBEWithMD5And256BitAESCBCOpenSSL");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC", PREFIX + "$PBEWithSHAAnd128BitAESBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC", PREFIX + "$PBEWithSHAAnd192BitAESBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC", PREFIX + "$PBEWithSHAAnd256BitAESBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC", PREFIX + "$PBEWithSHA256And128BitAESBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC", PREFIX + "$PBEWithSHA256And192BitAESBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC", PREFIX + "$PBEWithSHA256And256BitAESBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abL.getId(), "PBEWITHSHAAND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abM.getId(), "PBEWITHSHAAND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abN.getId(), "PBEWITHSHAAND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abO.getId(), "PBEWITHSHA256AND128BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abP.getId(), "PBEWITHSHA256AND192BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.abQ.getId(), "PBEWITHSHA256AND256BITAES-CBC-BC");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abL.getId(), "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abM.getId(), "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abN.getId(), "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abO.getId(), "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abP.getId(), "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.abQ.getId(), "PKCS12PBE");
      ˋ(paramConfigurableProvider, "AES", PREFIX + "$AESGMAC", PREFIX + "$KeyGen128");
      ˎ(paramConfigurableProvider, "AES", PREFIX + "$Poly1305", PREFIX + "$Poly1305KeyGen");
    }
  }
  
  public static class OFB
    extends BaseBlockCipher
  {
    public OFB()
    {
      super(128);
    }
  }
  
  public static class PBEWithAESCBC
    extends BaseBlockCipher
  {
    public PBEWithAESCBC()
    {
      super();
    }
  }
  
  public static class PBEWithMD5And128BitAESCBCOpenSSL
    extends PBESecretKeyFactory
  {
    public PBEWithMD5And128BitAESCBCOpenSSL()
    {
      super(null, true, 3, 0, 128, 128);
    }
  }
  
  public static class PBEWithMD5And192BitAESCBCOpenSSL
    extends PBESecretKeyFactory
  {
    public PBEWithMD5And192BitAESCBCOpenSSL()
    {
      super(null, true, 3, 0, 192, 128);
    }
  }
  
  public static class PBEWithMD5And256BitAESCBCOpenSSL
    extends PBESecretKeyFactory
  {
    public PBEWithMD5And256BitAESCBCOpenSSL()
    {
      super(null, true, 3, 0, 256, 128);
    }
  }
  
  public static class PBEWithSHA256And128BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHA256And128BitAESBC()
    {
      super(null, true, 2, 4, 128, 128);
    }
  }
  
  public static class PBEWithSHA256And192BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHA256And192BitAESBC()
    {
      super(null, true, 2, 4, 192, 128);
    }
  }
  
  public static class PBEWithSHA256And256BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHA256And256BitAESBC()
    {
      super(null, true, 2, 4, 256, 128);
    }
  }
  
  public static class PBEWithSHAAnd128BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd128BitAESBC()
    {
      super(null, true, 2, 1, 128, 128);
    }
  }
  
  public static class PBEWithSHAAnd192BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd192BitAESBC()
    {
      super(null, true, 2, 1, 192, 128);
    }
  }
  
  public static class PBEWithSHAAnd256BitAESBC
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd256BitAESBC()
    {
      super(null, true, 2, 1, 256, 128);
    }
  }
  
  public static class Poly1305
    extends BaseMac
  {
    public Poly1305()
    {
      super();
    }
  }
  
  public static class Poly1305KeyGen
    extends BaseKeyGenerator
  {
    public Poly1305KeyGen()
    {
      super(256, new Poly1305KeyGenerator());
    }
  }
  
  public static class RFC3211Wrap
    extends BaseWrapCipher
  {
    public RFC3211Wrap()
    {
      super(16);
    }
  }
  
  public static class RFC5649Wrap
    extends BaseWrapCipher
  {
    public RFC5649Wrap()
    {
      super();
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
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.AES
 * JD-Core Version:    0.7.0.1
 */