package org.spongycastle.crypto.prng;

import java.security.SecureRandom;

public class FixedSecureRandom
  extends SecureRandom
{
  private byte[] aQT;
  private int aQU;
  private int aQV;
  
  private int lv()
  {
    byte[] arrayOfByte = this.aQT;
    int i = this.aQU;
    this.aQU = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  public byte[] generateSeed(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    nextBytes(arrayOfByte);
    return arrayOfByte;
  }
  
  public void nextBytes(byte[] paramArrayOfByte)
  {
    System.arraycopy(this.aQT, this.aQU, paramArrayOfByte, 0, paramArrayOfByte.length);
    this.aQU += paramArrayOfByte.length;
  }
  
  public int nextInt()
  {
    int i = lv() << 24 | 0x0 | lv() << 16;
    if (this.aQV == 2) {
      this.aQV -= 1;
    } else {
      i |= lv() << 8;
    }
    if (this.aQV == 1)
    {
      this.aQV -= 1;
      return i;
    }
    return i | lv();
  }
  
  public long nextLong()
  {
    return 0L | lv() << 56 | lv() << 48 | lv() << 40 | lv() << 32 | lv() << 24 | lv() << 16 | lv() << 8 | lv();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.FixedSecureRandom
 * JD-Core Version:    0.7.0.1
 */