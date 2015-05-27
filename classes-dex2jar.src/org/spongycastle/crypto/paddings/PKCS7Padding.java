package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

public class PKCS7Padding
  implements BlockCipherPadding
{
  public void init(SecureRandom paramSecureRandom) {}
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (byte)(paramArrayOfByte.length - paramInt);
    while (paramInt < paramArrayOfByte.length)
    {
      paramArrayOfByte[paramInt] = i;
      paramInt += 1;
    }
    return i;
  }
  
  public int ﾟ(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xFF;
    if ((j > paramArrayOfByte.length) || (j == 0)) {
      throw new InvalidCipherTextException("pad block corrupted");
    }
    int i = 1;
    while (i <= j)
    {
      if (paramArrayOfByte[(paramArrayOfByte.length - i)] != j) {
        throw new InvalidCipherTextException("pad block corrupted");
      }
      i += 1;
    }
    return j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.PKCS7Padding
 * JD-Core Version:    0.7.0.1
 */