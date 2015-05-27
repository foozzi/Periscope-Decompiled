package org.spongycastle.crypto.prng;

import java.security.SecureRandom;

public class BasicEntropySourceProvider
  implements EntropySourceProvider
{
  private final SecureRandom aQM;
  private final boolean aQN;
  
  public BasicEntropySourceProvider(SecureRandom paramSecureRandom, boolean paramBoolean)
  {
    this.aQM = paramSecureRandom;
    this.aQN = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.BasicEntropySourceProvider
 * JD-Core Version:    0.7.0.1
 */