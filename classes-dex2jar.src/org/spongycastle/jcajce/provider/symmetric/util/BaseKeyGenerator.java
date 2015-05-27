package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGeneratorSpi;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;

public class BaseKeyGenerator
  extends KeyGeneratorSpi
{
  public String aZp;
  public int aZq;
  public CipherKeyGenerator aZr;
  public boolean aZs = true;
  protected int ahI;
  
  public BaseKeyGenerator(String paramString, int paramInt, CipherKeyGenerator paramCipherKeyGenerator)
  {
    this.aZp = paramString;
    this.aZq = paramInt;
    this.ahI = paramInt;
    this.aZr = paramCipherKeyGenerator;
  }
  
  public SecretKey engineGenerateKey()
  {
    if (this.aZs)
    {
      this.aZr.ˊ(new KeyGenerationParameters(new SecureRandom(), this.aZq));
      this.aZs = false;
    }
    return new SecretKeySpec(this.aZr.iI(), this.aZp);
  }
  
  public void engineInit(int paramInt, SecureRandom paramSecureRandom)
  {
    SecureRandom localSecureRandom = paramSecureRandom;
    if (paramSecureRandom == null) {}
    try
    {
      localSecureRandom = new SecureRandom();
      this.aZr.ˊ(new KeyGenerationParameters(localSecureRandom, paramInt));
      this.aZs = false;
      return;
    }
    catch (IllegalArgumentException paramSecureRandom)
    {
      throw new InvalidParameterException(paramSecureRandom.getMessage());
    }
  }
  
  protected void engineInit(SecureRandom paramSecureRandom)
  {
    if (paramSecureRandom != null)
    {
      this.aZr.ˊ(new KeyGenerationParameters(paramSecureRandom, this.aZq));
      this.aZs = false;
    }
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    throw new InvalidAlgorithmParameterException("Not Implemented");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator
 * JD-Core Version:    0.7.0.1
 */