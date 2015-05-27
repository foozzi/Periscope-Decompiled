package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.engines.NoekeonEngine;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

class Noekeon$ECB$1
  implements BlockCipherProvider
{
  public BlockCipher nR()
  {
    return new NoekeonEngine();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.Noekeon.ECB.1
 * JD-Core Version:    0.7.0.1
 */