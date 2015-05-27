package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

public class ISO10126d2Padding
  implements BlockCipherPadding
{
  SecureRandom aFa;
  
  public void init(SecureRandom paramSecureRandom)
  {
    if (paramSecureRandom != null)
    {
      this.aFa = paramSecureRandom;
      return;
    }
    this.aFa = new SecureRandom();
  }
  
  public int ᵢ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (byte)(paramArrayOfByte.length - paramInt);
    while (paramInt < paramArrayOfByte.length - 1)
    {
      paramArrayOfByte[paramInt] = ((byte)this.aFa.nextInt());
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
 * Qualified Name:     org.spongycastle.crypto.paddings.ISO10126d2Padding
 * JD-Core Version:    0.7.0.1
 */