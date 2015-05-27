package org.spongycastle.jce.spec;

import java.security.spec.KeySpec;

public class ECKeySpec
  implements KeySpec
{
  private ECParameterSpec bbU;
  
  protected ECKeySpec(ECParameterSpec paramECParameterSpec)
  {
    this.bbU = paramECParameterSpec;
  }
  
  public ECParameterSpec pd()
  {
    return this.bbU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECKeySpec
 * JD-Core Version:    0.7.0.1
 */