package org.spongycastle.jce.spec;

import java.security.spec.KeySpec;

public class ElGamalKeySpec
  implements KeySpec
{
  private ElGamalParameterSpec bbV;
  
  public ElGamalParameterSpec pe()
  {
    return this.bbV;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ElGamalKeySpec
 * JD-Core Version:    0.7.0.1
 */