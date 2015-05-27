package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;

public class TBCPadding
  implements BlockCipherPadding
{
  public void init(SecureRandom paramSecureRandom) {}
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int k = paramArrayOfByte.length;
    int j;
    int i;
    if (paramInt > 0)
    {
      if ((paramArrayOfByte[(paramInt - 1)] & 0x1) == 0) {
        j = 255;
      } else {
        j = 0;
      }
      i = (byte)j;
      j = paramInt;
    }
    else
    {
      if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0x1) == 0) {
        j = 255;
      } else {
        j = 0;
      }
      i = (byte)j;
      j = paramInt;
    }
    while (j < paramArrayOfByte.length)
    {
      paramArrayOfByte[j] = i;
      j += 1;
    }
    return k - paramInt;
  }
  
  public int ﾟ(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte[(paramArrayOfByte.length - 1)];
    int i = paramArrayOfByte.length - 1;
    while ((i > 0) && (paramArrayOfByte[(i - 1)] == j)) {
      i -= 1;
    }
    return paramArrayOfByte.length - i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.TBCPadding
 * JD-Core Version:    0.7.0.1
 */