package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;

public class McElieceCCA2ParameterSpec
  implements AlgorithmParameterSpec
{
  private String biJ;
  
  public McElieceCCA2ParameterSpec()
  {
    this("SHA256");
  }
  
  public McElieceCCA2ParameterSpec(String paramString)
  {
    this.biJ = paramString;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.spec.McElieceCCA2ParameterSpec
 * JD-Core Version:    0.7.0.1
 */