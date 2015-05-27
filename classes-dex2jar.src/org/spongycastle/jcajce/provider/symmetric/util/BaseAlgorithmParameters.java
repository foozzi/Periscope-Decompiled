package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;

public abstract class BaseAlgorithmParameters
  extends AlgorithmParametersSpi
{
  protected AlgorithmParameterSpec engineGetParameterSpec(Class paramClass)
  {
    if (paramClass == null) {
      throw new NullPointerException("argument to getParameterSpec must not be null");
    }
    return ᐧ(paramClass);
  }
  
  public abstract AlgorithmParameterSpec ᐧ(Class paramClass);
  
  public boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters
 * JD-Core Version:    0.7.0.1
 */