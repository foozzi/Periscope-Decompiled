package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHGenParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.generators.ElGamalParametersGenerator;
import org.spongycastle.crypto.params.ElGamalParameters;

public class AlgorithmParameterGeneratorSpi
  extends java.security.AlgorithmParameterGeneratorSpi
{
  protected SecureRandom aFa;
  protected int aFb = 1024;
  private int avO = 0;
  
  protected AlgorithmParameters engineGenerateParameters()
  {
    Object localObject = new ElGamalParametersGenerator();
    if (this.aFa != null) {
      ((ElGamalParametersGenerator)localObject).ˊ(this.aFb, 20, this.aFa);
    } else {
      ((ElGamalParametersGenerator)localObject).ˊ(this.aFb, 20, new SecureRandom());
    }
    localObject = ((ElGamalParametersGenerator)localObject).jT();
    try
    {
      AlgorithmParameters localAlgorithmParameters = AlgorithmParameters.getInstance("ElGamal", "SC");
      localAlgorithmParameters.init(new DHParameterSpec(((ElGamalParameters)localObject).getP(), ((ElGamalParameters)localObject).getG(), this.avO));
      return localAlgorithmParameters;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramAlgorithmParameterSpec instanceof DHGenParameterSpec)) {
      throw new InvalidAlgorithmParameterException("DH parameter generator requires a DHGenParameterSpec for initialisation");
    }
    paramAlgorithmParameterSpec = (DHGenParameterSpec)paramAlgorithmParameterSpec;
    this.aFb = paramAlgorithmParameterSpec.getPrimeSize();
    this.avO = paramAlgorithmParameterSpec.getExponentSize();
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParameterGeneratorSpi
 * JD-Core Version:    0.7.0.1
 */