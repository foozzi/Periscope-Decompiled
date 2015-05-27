package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;

public class ZeroBytePadding
  implements BlockCipherPadding
{
  public void init(SecureRandom paramSecureRandom) {}
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramArrayOfByte.length;
    int i = paramInt;
    while (i < paramArrayOfByte.length)
    {
      paramArrayOfByte[i] = 0;
      i += 1;
    }
    return j - paramInt;
  }
  
  public int ﾟ(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    while ((i > 0) && (paramArrayOfByte[(i - 1)] == 0)) {
      i -= 1;
    }
    return paramArrayOfByte.length - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.ZeroBytePadding
 * JD-Core Version:    0.7.0.1
 */