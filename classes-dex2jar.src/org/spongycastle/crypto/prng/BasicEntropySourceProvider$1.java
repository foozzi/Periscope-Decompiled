package org.spongycastle.crypto.prng;

import java.security.SecureRandom;

class BasicEntropySourceProvider$1
  implements EntropySource
{
  public byte[] lr()
  {
    return BasicEntropySourceProvider.ˊ(this.aQP).generateSeed((this.aQO + 7) / 8);
  }
  
  public int ls()
  {
    return this.aQO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.BasicEntropySourceProvider.1
 * JD-Core Version:    0.7.0.1
 */