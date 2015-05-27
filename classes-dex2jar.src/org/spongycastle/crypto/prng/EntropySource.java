package org.spongycastle.crypto.prng;

public abstract interface EntropySource
{
  public abstract byte[] lr();
  
  public abstract int ls();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.EntropySource
 * JD-Core Version:    0.7.0.1
 */