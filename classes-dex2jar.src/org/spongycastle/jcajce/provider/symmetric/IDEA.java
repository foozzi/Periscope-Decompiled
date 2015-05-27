package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.misc.IDEACBCPar;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.IDEAEngine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class IDEA
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
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("IDEA", "SC");
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
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for IDEA parameter generation.");
    }
  }
  
  public static class AlgParams
    extends BaseAlgorithmParameters
  {
    private byte[] iv;
    
    protected byte[] engineGetEncoded()
    {
      return engineGetEncoded("ASN.1");
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if (ᕪ(paramString)) {
        return new IDEACBCPar(engineGetEncoded("RAW")).getEncoded();
      }
      if (paramString.equals("RAW"))
      {
        paramString = new byte[this.iv.length];
        System.arraycopy(this.iv, 0, paramString, 0, this.iv.length);
        return paramString;
      }
      return null;
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if (!(paramAlgorithmParameterSpec instanceof IvParameterSpec)) {
        throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
      }
      this.iv = ((IvParameterSpec)paramAlgorithmParameterSpec).getIV();
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.iv = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, this.iv, 0, this.iv.length);
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (paramString.equals("RAW"))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      if (paramString.equals("ASN.1"))
      {
        engineInit(new IDEACBCPar((ASN1Sequence)new ASN1InputStream(paramArrayOfByte).eH()).getIV());
        return;
      }
      throw new IOException("Unknown parameters format in IV parameters object");
    }
    
    protected String engineToString()
    {
      return "IDEA Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if (paramClass == IvParameterSpec.class) {
        return new IvParameterSpec(this.iv);
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
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
  
  public static class CFB8Mac
    extends BaseMac
  {
    public CFB8Mac()
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
  
  public static class KeyGen
    extends BaseKeyGenerator
  {
    public KeyGen()
    {
      super(128, new CipherKeyGenerator());
    }
  }
  
  public static class Mac
    extends BaseMac
  {
    public Mac()
    {
      super();
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = IDEA.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.IDEA", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.IDEA", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC", "PKCS12PBE");
      paramConfigurableProvider.ﹶ("Cipher.IDEA", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher.1.3.6.1.4.1.188.7.1.1.2", PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("Cipher.PBEWITHSHAANDIDEA-CBC", PREFIX + "$PBEWithSHAAndIDEA");
      paramConfigurableProvider.ﹶ("KeyGenerator.IDEA", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("KeyGenerator.1.3.6.1.4.1.188.7.1.1.2", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBEWITHSHAANDIDEA-CBC", PREFIX + "$PBEWithSHAAndIDEAKeyGen");
      paramConfigurableProvider.ﹶ("Mac.IDEAMAC", PREFIX + "$Mac");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.IDEA", "IDEAMAC");
      paramConfigurableProvider.ﹶ("Mac.IDEAMAC/CFB8", PREFIX + "$CFB8Mac");
      paramConfigurableProvider.ﹶ("Alg.Alias.Mac.IDEA/CFB8", "IDEAMAC/CFB8");
    }
  }
  
  public static class PBEWithSHAAndIDEA
    extends BaseBlockCipher
  {
    public PBEWithSHAAndIDEA()
    {
      super();
    }
  }
  
  public static class PBEWithSHAAndIDEAKeyGen
    extends PBESecretKeyFactory
  {
    public PBEWithSHAAndIDEAKeyGen()
    {
      super(null, true, 2, 1, 128, 64);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.IDEA
 * JD-Core Version:    0.7.0.1
 */