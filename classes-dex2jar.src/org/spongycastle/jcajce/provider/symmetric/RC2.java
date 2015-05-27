package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RC2CBCParameter;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.RC2Engine;
import org.spongycastle.crypto.engines.RC2WrapEngine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
import org.spongycastle.util.Arrays;

public final class RC2
{
  public static class AlgParamGen
    extends BaseAlgorithmParameterGenerator
  {
    RC2ParameterSpec aYY = null;
    
    protected AlgorithmParameters engineGenerateParameters()
    {
      if (this.aYY == null)
      {
        byte[] arrayOfByte = new byte[8];
        if (this.aFa == null) {
          this.aFa = new SecureRandom();
        }
        this.aFa.nextBytes(arrayOfByte);
        AlgorithmParameters localAlgorithmParameters2;
        try
        {
          localAlgorithmParameters2 = AlgorithmParameters.getInstance("RC2", "SC");
          localAlgorithmParameters2.init(new IvParameterSpec(arrayOfByte));
        }
        catch (Exception localException1)
        {
          throw new RuntimeException(localException1.getMessage());
        }
        return localAlgorithmParameters2;
      }
      try
      {
        AlgorithmParameters localAlgorithmParameters1 = AlgorithmParameters.getInstance("RC2", "SC");
        localAlgorithmParameters1.init(this.aYY);
        return localAlgorithmParameters1;
      }
      catch (Exception localException2)
      {
        throw new RuntimeException(localException2.getMessage());
      }
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
    {
      if ((paramAlgorithmParameterSpec instanceof RC2ParameterSpec))
      {
        this.aYY = ((RC2ParameterSpec)paramAlgorithmParameterSpec);
        return;
      }
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for RC2 parameter generation.");
    }
  }
  
  public static class AlgParams
    extends BaseAlgorithmParameters
  {
    private static final short[] aYZ = { 189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171 };
    private static final short[] aZa = { 93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253 };
    private int aZb = 58;
    private byte[] iv;
    
    protected byte[] engineGetEncoded()
    {
      return Arrays.І(this.iv);
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if (ᕪ(paramString))
      {
        if (this.aZb == -1) {
          return new RC2CBCParameter(engineGetEncoded()).getEncoded();
        }
        return new RC2CBCParameter(this.aZb, engineGetEncoded()).getEncoded();
      }
      if (paramString.equals("RAW")) {
        return engineGetEncoded();
      }
      return null;
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if ((paramAlgorithmParameterSpec instanceof IvParameterSpec))
      {
        this.iv = ((IvParameterSpec)paramAlgorithmParameterSpec).getIV();
        return;
      }
      if ((paramAlgorithmParameterSpec instanceof RC2ParameterSpec))
      {
        int i = ((RC2ParameterSpec)paramAlgorithmParameterSpec).getEffectiveKeyBits();
        if (i != -1) {
          if (i < 256) {
            this.aZb = aYZ[i];
          } else {
            this.aZb = i;
          }
        }
        this.iv = ((RC2ParameterSpec)paramAlgorithmParameterSpec).getIV();
        return;
      }
      throw new InvalidParameterSpecException("IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object");
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.iv = Arrays.І(paramArrayOfByte);
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (ᕪ(paramString))
      {
        paramArrayOfByte = RC2CBCParameter.ﹻ(ASN1Primitive.ՙ(paramArrayOfByte));
        if (paramArrayOfByte.fZ() != null) {
          this.aZb = paramArrayOfByte.fZ().intValue();
        }
        this.iv = paramArrayOfByte.getIV();
        return;
      }
      if (paramString.equals("RAW"))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      throw new IOException("Unknown parameters format in IV parameters object");
    }
    
    protected String engineToString()
    {
      return "RC2 Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if ((paramClass == RC2ParameterSpec.class) && (this.aZb != -1))
      {
        if (this.aZb < 256) {
          return new RC2ParameterSpec(aZa[this.aZb], this.iv);
        }
        return new RC2ParameterSpec(this.aZb, this.iv);
      }
      if (paramClass == IvParameterSpec.class) {
        return new IvParameterSpec(this.iv);
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to RC2 parameters object.");
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
  
  public static class CFB8MAC
    extends BaseMac
  {
    public CFB8MAC()
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
  
  public static class KeyGenerator
    extends BaseKeyGenerator
  {
    public KeyGenerator()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = RC2.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.RC2", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.1.2.840.113549.3.2", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("KeyGenerator.RC2", PREFIX + "$KeyGenerator");
      paramConfigurableProvider.ﹶ("KeyGenerator.1.2.840.113549.3.2", PREFIX + "$KeyGenerator");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.RC2", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.1.2.840.113549.3.2", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Cipher.RC2", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher.RC2WRAP", PREFIX + "$Wrap");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.asH, "RC2WRAP");
      paramConfigurableProvider.ﹶ("Cipher.1.2.840.113549.3.2", PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Mac.RC2MAC", PREFIX + "$CBCMAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.RC2", "RC2MAC");
      paramConfigurableProvider.ﹶ("Mac.RC2MAC/CFB8", PREFIX + "$CFB8MAC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.RC2/CFB8", "RC2MAC/CFB8");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHMD2ANDRC2-CBC", "PBEWITHMD2ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHMD5ANDRC2-CBC", "PBEWITHMD5ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.PBEWITHSHA1ANDRC2-CBC", "PBEWITHSHA1ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqH, "PBEWITHMD2ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqJ, "PBEWITHMD5ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqL, "PBEWITHSHA1ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.5", "PBEWITHSHAAND128BITRC2-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory.1.2.840.113549.1.12.1.6", "PBEWITHSHAAND40BITRC2-CBC");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD2ANDRC2", PREFIX + "$PBEWithMD2KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHMD5ANDRC2", PREFIX + "$PBEWithMD5KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHA1ANDRC2", PREFIX + "$PBEWithSHA1KeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND128BITRC2-CBC", PREFIX + "$PBEWithSHAAnd128BitKeyFactory");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAAND40BITRC2-CBC", PREFIX + "$PBEWithSHAAnd40BitKeyFactory");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqH, "PBEWITHMD2ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqJ, "PBEWITHMD5ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher." + PKCSObjectIdentifiers.aqL, "PBEWITHSHA1ANDRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.5", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.1.2.840.113549.1.12.1.6", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWithSHAAnd3KeyTripleDES", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.1.2.840.113549.1.12.1.5", "PBEWITHSHAAND128BITRC2-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.1.2.840.113549.1.12.1.6", "PBEWITHSHAAND40BITRC2-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC2-CBC", "PBEWITHSHAAND128BITRC2-CBC");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC2-CBC", "PBEWITHSHAAND40BITRC2-CBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHA1ANDRC2", PREFIX + "$PBEWithSHA1AndRC2");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND128BITRC2-CBC", PREFIX + "$PBEWithSHAAnd128BitRC2");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAAND40BITRC2-CBC", PREFIX + "$PBEWithSHAAnd40BitRC2");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHMD5ANDRC2", PREFIX + "$PBEWithMD5AndRC2");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC2", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHA1ANDRC2-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC2-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC2-CBC", "PKCS12PBE");
    }
  }
  
  public static class PBEWithMD2KeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithMD2KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqH, true, 0, 5, 64, 64);
    }
  }
  
  public static class PBEWithMD5AndRC2
    extends BaseBlockCipher
  {
    public PBEWithMD5AndRC2()
    {
      super();
    }
  }
  
  public static class PBEWithMD5KeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithMD5KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqJ, true, 0, 0, 64, 64);
    }
  }
  
  public static class PBEWithSHA1AndRC2
    extends BaseBlockCipher
  {
    public PBEWithSHA1AndRC2()
    {
      super();
    }
  }
  
  public static class PBEWithSHA1KeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithSHA1KeyFactory()
    {
      super(PKCSObjectIdentifiers.aqL, true, 0, 1, 64, 64);
    }
  }
  
  public static class PBEWithSHAAnd128BitKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd128BitKeyFactory()
    {
      super(PKCSObjectIdentifiers.asD, true, 2, 1, 128, 64);
    }
  }
  
  public static class PBEWithSHAAnd128BitRC2
    extends BaseBlockCipher
  {
    public PBEWithSHAAnd128BitRC2()
    {
      super();
    }
  }
  
  public static class PBEWithSHAAnd40BitKeyFactory
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAnd40BitKeyFactory()
    {
      super(PKCSObjectIdentifiers.asE, true, 2, 1, 40, 64);
    }
  }
  
  public static class PBEWithSHAAnd40BitRC2
    extends BaseBlockCipher
  {
    public PBEWithSHAAnd40BitRC2()
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
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.RC2
 * JD-Core Version:    0.7.0.1
 */