package org.spongycastle.crypto.prng;

import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

abstract interface DRBGProvider
{
  public abstract SP80090DRBG ˊ(EntropySource paramEntropySource);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.DRBGProvider
 * JD-Core Version:    0.7.0.1
 */