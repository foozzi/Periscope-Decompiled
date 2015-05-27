package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class McElieceCCA2KeyGenerationParameters
  extends KeyGenerationParameters
{
  private McElieceCCA2Parameters bfU;
  
  public McElieceCCA2KeyGenerationParameters(SecureRandom paramSecureRandom, McElieceCCA2Parameters paramMcElieceCCA2Parameters)
  {
    super(paramSecureRandom, 128);
    this.bfU = paramMcElieceCCA2Parameters;
  }
  
  public McElieceCCA2Parameters rg()
  {
    return this.bfU;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */