package org.spongycastle.crypto.prng;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

public class SP800SecureRandom
  extends SecureRandom
{
  private final DRBGProvider aQZ;
  private final boolean aRa;
  private final SecureRandom aRb;
  private final EntropySource aRc;
  private SP80090DRBG aRd;
  
  public byte[] generateSeed(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    nextBytes(arrayOfByte);
    return arrayOfByte;
  }
  
  public void nextBytes(byte[] paramArrayOfByte)
  {
    try
    {
      if (this.aRd == null) {
        this.aRd = this.aQZ.ˊ(this.aRc);
      }
      if (this.aRd.ˊ(paramArrayOfByte, null, this.aRa) < 0)
      {
        this.aRd.ۦ(this.aRc.lr());
        this.aRd.ˊ(paramArrayOfByte, null, this.aRa);
      }
      return;
    }
    finally {}
  }
  
  public void setSeed(long paramLong)
  {
    try
    {
      if (this.aRb != null) {
        this.aRb.setSeed(paramLong);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void setSeed(byte[] paramArrayOfByte)
  {
    try
    {
      if (this.aRb != null) {
        this.aRb.setSeed(paramArrayOfByte);
      }
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.SP800SecureRandom
 * JD-Core Version:    0.7.0.1
 */