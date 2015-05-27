package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

public class ISO7816d4Padding
  implements BlockCipherPadding
{
  public void init(SecureRandom paramSecureRandom) {}
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int j = paramArrayOfByte.length;
    paramArrayOfByte[paramInt] = -128;
    int i = paramInt + 1;
    while (i < paramArrayOfByte.length)
    {
      paramArrayOfByte[i] = 0;
      i += 1;
    }
    return j - paramInt;
  }
  
  public int ﾟ(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length - 1;
    while ((i > 0) && (paramArrayOfByte[i] == 0)) {
      i -= 1;
    }
    if (paramArrayOfByte[i] != -128) {
      throw new InvalidCipherTextException("pad block corrupted");
    }
    return paramArrayOfByte.length - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.ISO7816d4Padding
 * JD-Core Version:    0.7.0.1
 */