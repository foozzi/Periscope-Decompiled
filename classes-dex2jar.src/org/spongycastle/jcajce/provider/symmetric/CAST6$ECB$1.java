package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.engines.CAST6Engine;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

class CAST6$ECB$1
  implements BlockCipherProvider
{
  public BlockCipher nR()
  {
    return new CAST6Engine();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.CAST6.ECB.1
 * JD-Core Version:    0.7.0.1
 */