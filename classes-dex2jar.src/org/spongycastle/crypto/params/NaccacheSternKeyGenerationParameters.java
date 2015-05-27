package org.spongycastle.crypto.params;

import org.spongycastle.crypto.KeyGenerationParameters;

public class NaccacheSternKeyGenerationParameters
  extends KeyGenerationParameters
{
  private boolean aKQ;
  private int aMG;
  private int aQz;
  
  public int kD()
  {
    return this.aMG;
  }
  
  public int lc()
  {
    return this.aQz;
  }
  
  public boolean ld()
  {
    return this.aKQ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.NaccacheSternKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */