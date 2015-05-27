package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParameterGeneratorSpi;
import java.security.SecureRandom;

public abstract class BaseAlgorithmParameterGenerator
  extends AlgorithmParameterGeneratorSpi
{
  public SecureRandom aFa;
  protected int aFb = 1024;
  
  protected void engineInit(int paramInt, SecureRandom paramSecureRandom)
  {
    this.aFb = paramInt;
    this.aFa = paramSecureRandom;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator
 * JD-Core Version:    0.7.0.1
 */