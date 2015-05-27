package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.engines.RC6Engine;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

class RC6$ECB$1
  implements BlockCipherProvider
{
  public BlockCipher nR()
  {
    return new RC6Engine();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.RC6.ECB.1
 * JD-Core Version:    0.7.0.1
 */