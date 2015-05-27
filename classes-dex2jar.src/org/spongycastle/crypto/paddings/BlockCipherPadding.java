package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;

public abstract interface BlockCipherPadding
{
  public abstract void init(SecureRandom paramSecureRandom);
  
  public abstract int ᵢ(byte[] paramArrayOfByte, int paramInt);
  
  public abstract int ﾟ(byte[] paramArrayOfByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.BlockCipherPadding
 * JD-Core Version:    0.7.0.1
 */