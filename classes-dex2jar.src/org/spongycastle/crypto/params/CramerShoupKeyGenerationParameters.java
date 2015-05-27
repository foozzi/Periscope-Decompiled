package org.spongycastle.crypto.params;

import org.spongycastle.crypto.KeyGenerationParameters;

public class CramerShoupKeyGenerationParameters
  extends KeyGenerationParameters
{
  private CramerShoupParameters aPK;
  
  public CramerShoupParameters kq()
  {
    return this.aPK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.CramerShoupKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */