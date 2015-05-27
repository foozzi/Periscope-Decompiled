package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.rainbow.RainbowSigner;

public class SignatureSpi
  extends java.security.SignatureSpi
{
  private Digest aFH;
  private SecureRandom aFa;
  private RainbowSigner biH;
  
  protected SignatureSpi(Digest paramDigest, RainbowSigner paramRainbowSigner)
  {
    this.aFH = paramDigest;
    this.biH = paramRainbowSigner;
  }
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    AsymmetricKeyParameter localAsymmetricKeyParameter = RainbowKeysToParams.ˊ(paramPrivateKey);
    paramPrivateKey = localAsymmetricKeyParameter;
    if (this.aFa != null) {
      paramPrivateKey = new ParametersWithRandom(localAsymmetricKeyParameter, this.aFa);
    }
    this.aFH.reset();
    this.biH.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey, SecureRandom paramSecureRandom)
  {
    this.aFa = paramSecureRandom;
    engineInitSign(paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    paramPublicKey = RainbowKeysToParams.ˊ(paramPublicKey);
    this.aFH.reset();
    this.biH.ˊ(false, paramPublicKey);
  }
  
  protected void engineSetParameter(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected byte[] engineSign()
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      arrayOfByte = this.biH.ᕑ(arrayOfByte);
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    return this.biH.ᴵ(arrayOfByte, paramArrayOfByte);
  }
  
  public static class withSha224
    extends SignatureSpi
  {
    public withSha224()
    {
      super(new RainbowSigner());
    }
  }
  
  public static class withSha256
    extends SignatureSpi
  {
    public withSha256()
    {
      super(new RainbowSigner());
    }
  }
  
  public static class withSha384
    extends SignatureSpi
  {
    public withSha384()
    {
      super(new RainbowSigner());
    }
  }
  
  public static class withSha512
    extends SignatureSpi
  {
    public withSha512()
    {
      super(new RainbowSigner());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.SignatureSpi
 * JD-Core Version:    0.7.0.1
 */