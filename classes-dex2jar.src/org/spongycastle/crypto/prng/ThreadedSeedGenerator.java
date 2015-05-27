package org.spongycastle.crypto.prng;

public class ThreadedSeedGenerator
{
  class SeedGenerator
    implements Runnable
  {
    private volatile boolean aRl;
    private volatile int aaN;
    
    public void run()
    {
      while (!this.aRl) {
        this.aaN += 1;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.ThreadedSeedGenerator
 * JD-Core Version:    0.7.0.1
 */