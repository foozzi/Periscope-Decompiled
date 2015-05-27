package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.KeySpec;
import javax.crypto.SecretKey;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PBKDF2Params;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseSecretKeyFactory;
import org.spongycastle.jcajce.provider.symmetric.util.PBE.Util;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
import org.spongycastle.jcajce.spec.PBKDF2KeySpec;

public class PBEPBKDF2
{
  public static class AlgParams
    extends BaseAlgorithmParameters
  {
    PBKDF2Params aYW;
    
    protected byte[] engineGetEncoded()
    {
      try
      {
        byte[] arrayOfByte = this.aYW.getEncoded("DER");
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
        throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PBKDF2 PBE parameters algorithm parameters object");
      }
      paramAlgorithmParameterSpec = (PBEParameterSpec)paramAlgorithmParameterSpec;
      this.aYW = new PBKDF2Params(paramAlgorithmParameterSpec.getSalt(), paramAlgorithmParameterSpec.getIterationCount());
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      this.aYW = PBKDF2Params.וּ(ASN1Primitive.ՙ(paramArrayOfByte));
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if (ᕪ(paramString))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      throw new IOException("Unknown parameters format in PBKDF2 parameters object");
    }
    
    protected String engineToString()
    {
      return "PBKDF2 Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if (paramClass == PBEParameterSpec.class) {
        return new PBEParameterSpec(this.aYW.getSalt(), this.aYW.fN().intValue());
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to PBKDF2 PBE parameters object.");
    }
  }
  
  public static class BasePBKDF2
    extends BaseSecretKeyFactory
  {
    private int scheme;
    
    public BasePBKDF2(String paramString, int paramInt)
    {
      super(PKCSObjectIdentifiers.aqN);
      this.scheme = paramInt;
    }
    
    private int ˌ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
    {
      if (paramASN1ObjectIdentifier.equals(CryptoProObjectIdentifiers.agW)) {
        return 6;
      }
      if (paramASN1ObjectIdentifier.equals(PKCSObjectIdentifiers.aqU)) {
        return 1;
      }
      throw new InvalidKeySpecException("Invalid KeySpec: unknown PRF algorithm " + paramASN1ObjectIdentifier);
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
        if ((paramKeySpec instanceof PBKDF2KeySpec))
        {
          i = ˌ(((PBKDF2KeySpec)paramKeySpec).fS().fK());
          int j = paramKeySpec.getKeyLength();
          localCipherParameters = PBE.Util.ˊ(paramKeySpec, this.scheme, i, j);
          return new BCPBEKey(this.aZp, this.aZw, this.scheme, i, j, -1, paramKeySpec, localCipherParameters);
        }
        int i = paramKeySpec.getKeyLength();
        CipherParameters localCipherParameters = PBE.Util.ˊ(paramKeySpec, this.scheme, 1, i);
        return new BCPBEKey(this.aZp, this.aZw, this.scheme, 1, i, -1, paramKeySpec, localCipherParameters);
      }
      throw new InvalidKeySpecException("Invalid KeySpec");
    }
  }
  
  public static class Mappings
    extends AlgorithmProvider
  {
    private static final String PREFIX = PBEPBKDF2.class.getName();
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.PBKDF2", PREFIX + "$AlgParams");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters." + PKCSObjectIdentifiers.aqN, "PBKDF2");
      paramConfigurableProvider.ﹶ("SecretKeyFactory.PBKDF2", PREFIX + "$PBKDF2withUTF8");
      paramConfigurableProvider.ﹶ("Alg.Alias.SecretKeyFactory." + PKCSObjectIdentifiers.aqN, "PBKDF2");
    }
  }
  
  public static class PBKDF2withUTF8
    extends PBEPBKDF2.BasePBKDF2
  {
    public PBKDF2withUTF8()
    {
      super(5);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.PBEPBKDF2
 * JD-Core Version:    0.7.0.1
 */