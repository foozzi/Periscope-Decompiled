package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

public class PBEPKCS12
{
  public static class AlgParams
    extends BaseAlgorithmParameters
  {
    PKCS12PBEParams aYX;
    
    protected byte[] engineGetEncoded()
    {
      try
      {
        byte[] arrayOfByte = this.aYX.getEncoded("DER");
        return arrayOfByte;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Oooops! " + localIOException.toString());
      }
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if (ᕪ(paramString)) {
        return engineGetEncoded();
      }
      return null;
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if (!(paramAlgorithmParameterSpec instanceof PBEParameterSpec)) {
        throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
      }
      paramAlgorithmParameterSpec = (PBEParameterSpec)paramAlgorithmParameterSpec;
      this.aYX = new PKCS12PBEParams(paramAlgorithmParameterSpec.getSalt(), paramAlgorithmParameterSpec.getIterationCount());
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.aYX = PKCS12PBEParams.וֹ(ASN1Primitive.ՙ(paramArrayOfByte));
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (ᕪ(paramString))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      throw new IOException("Unknown parameters format in PKCS12 PBE parameters object");
    }
    
    protected String engineToString()
    {
      return "PKCS12 PBE Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if (paramClass == PBEParameterSpec.class) {
        return new PBEParameterSpec(this.aYX.getIV(), this.aYX.fT().intValue());
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = PBEPKCS12.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.PKCS12PBE", PREFIX + "$AlgParams");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.PBEPKCS12
 * JD-Core Version:    0.7.0.1
 */