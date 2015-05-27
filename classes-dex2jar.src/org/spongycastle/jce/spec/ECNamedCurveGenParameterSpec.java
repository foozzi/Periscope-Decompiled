package org.spongycastle.jce.spec;

import java.security.spec.AlgorithmParameterSpec;

public class ECNamedCurveGenParameterSpec
  implements AlgorithmParameterSpec
{
  private String name;
  
  public String getName()
  {
    return this.name;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECNamedCurveGenParameterSpec
 * JD-Core Version:    0.7.0.1
 */