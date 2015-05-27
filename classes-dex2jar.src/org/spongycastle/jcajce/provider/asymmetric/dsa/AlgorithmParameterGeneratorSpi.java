package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.generators.DSAParametersGenerator;
import org.spongycastle.crypto.params.DSAParameterGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;

public class AlgorithmParameterGeneratorSpi
  extends java.security.AlgorithmParameterGeneratorSpi
{
  protected SecureRandom aFa;
  protected int aFb = 1024;
  protected DSAParameterGenerationParameters aWC;
  
  protected AlgorithmParameters engineGenerateParameters()
  {
    if (this.aFb <= 1024) {
      localObject = new DSAParametersGenerator();
    } else {
      localObject = new DSAParametersGenerator(new SHA256Digest());
    }
    if (this.aFa == null) {
      this.aFa = new SecureRandom();
    }
    if (this.aFb == 1024)
    {
      this.aWC = new DSAParameterGenerationParameters(1024, 160, 80, this.aFa);
      ((DSAParametersGenerator)localObject).ˊ(this.aWC);
    }
    else if (this.aFb > 1024)
    {
      this.aWC = new DSAParameterGenerationParameters(this.aFb, 256, 80, this.aFa);
      ((DSAParametersGenerator)localObject).ˊ(this.aWC);
    }
    else
    {
      ((DSAParametersGenerator)localObject).ˊ(this.aFb, 20, this.aFa);
    }
    Object localObject = ((DSAParametersGenerator)localObject).jP();
    try
    {
      AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("DSA", "SC");
      localAlgorithmParameters.init(new DSAParameterSpec(((DSAParameters)localObject).getP(), ((DSAParameters)localObject).getQ(), ((DSAParameters)localObject).getG()));
      return localAlgorithmParameters;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, SecureRandom paramSecureRandom)
  {
    if ((paramInt < 512) || (paramInt > 3072)) {
      throw new InvalidParameterException("strength must be from 512 - 3072");
    }
    if ((paramInt <= 1024) && (paramInt % 64 != 0)) {
      throw new InvalidParameterException("strength must be a multiple of 64 below 1024 bits.");
    }
    if ((paramInt > 1024) && (paramInt % 1024 != 0)) {
      throw new InvalidParameterException("strength must be a multiple of 1024 above 1024 bits.");
    }
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */