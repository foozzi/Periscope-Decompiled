package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class TweakableBlockCipherParameters
  implements CipherParameters
{
  private final KeyParameter aOS;
  private final byte[] aQK;
  
  public KeyParameter ko()
  {
    return this.aOS;
  }
  
  public byte[] lq()
  {
    return this.aQK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.TweakableBlockCipherParameters
 * JD-Core Version:    0.7.0.1
 */