package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

public class X923Padding
  implements BlockCipherPadding
{
  SecureRandom aFa = null;
  
  public void init(SecureRandom paramSecureRandom)
  {
    this.aFa = paramSecureRandom;
  }
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (byte)(paramArrayOfByte.length - paramInt);
    while (paramInt < paramArrayOfByte.length - 1)
    {
      if (this.aFa == null) {
        paramArrayOfByte[paramInt] = 0;
      } else {
        paramArrayOfByte[paramInt] = ((byte)this.aFa.nextInt());
      }
      paramInt += 1;
    }
    paramArrayOfByte[paramInt] = i;
    return i;
  }
  
  public int ﾟ(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xFF;
    if (i > paramArrayOfByte.length) {
      throw new InvalidCipherTextException("pad block corrupted");
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.paddings.X923Padding
 * JD-Core Version:    0.7.0.1
 */