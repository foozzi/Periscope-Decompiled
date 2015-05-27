package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

public class McElieceKeyGenerationParameters
  extends KeyGenerationParameters
{
  private McElieceParameters bge;
  
  public McElieceKeyGenerationParameters(SecureRandom paramSecureRandom, McElieceParameters paramMcElieceParameters)
  {
    super(paramSecureRandom, 256);
    this.bge = paramMcElieceParameters;
  }
  
  public McElieceParameters rr()
  {
    return this.bge;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceKeyGenerationParameters
 * JD-Core Version:    0.7.0.1
 */