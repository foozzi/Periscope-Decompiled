package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.misc.CAST5CBCParameters;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.CAST5Engine;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public final class CAST5
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
        AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("CAST5", "SC");
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
      throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for CAST5 parameter generation.");
    }
  }
  
  public static class AlgParams
    extends BaseAlgorithmParameters
  {
    private int aYR = 128;
    private byte[] iv;
    
    protected byte[] engineGetEncoded()
    {
      byte[] arrayOfByte = new byte[this.iv.length];
      System.arraycopy(this.iv, 0, arrayOfByte, 0, this.iv.length);
      return arrayOfByte;
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if (ᕪ(paramString)) {
        return new CAST5CBCParameters(engineGetEncoded(), this.aYR).getEncoded();
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
      throw new InvalidParameterSpecException("IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object");
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.iv = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, this.iv, 0, this.iv.length);
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (ᕪ(paramString))
      {
        paramArrayOfByte = CAST5CBCParameters.ι(new ASN1InputStream(paramArrayOfByte).eH());
        this.aYR = paramArrayOfByte.getKeyLength();
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
      return "CAST5 Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if (paramClass == IvParameterSpec.class) {
        return new IvParameterSpec(this.iv);
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to CAST5 parameters object.");
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
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = CAST5.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.CAST5", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10", "CAST5");
      paramConfigurableProvider.ﹶ("AlgorithmParameterGenerator.CAST5", PREFIX + "$AlgParamGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10", "CAST5");
      paramConfigurableProvider.ﹶ("Cipher.CAST5", PREFIX + "$ECB");
      paramConfigurableProvider.ﹶ("Cipher.1.2.840.113533.7.66.10", PREFIX + "$CBC");
      paramConfigurableProvider.ﹶ("KeyGenerator.CAST5", PREFIX + "$KeyGen");
      paramConfigurableProvider.ﹶ("Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10", "CAST5");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.CAST5
 * JD-Core Version:    0.7.0.1
 */