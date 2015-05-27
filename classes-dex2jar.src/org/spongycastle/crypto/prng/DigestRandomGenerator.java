package org.spongycastle.crypto.prng;

import org.spongycastle.crypto.Digest;

public class DigestRandomGenerator
  implements RandomGenerator
{
  private static long aQQ = 10L;
  private byte[] aDx;
  private Digest aFH;
  private byte[] aGQ;
  private long aQR;
  private long aQS;
  
  public DigestRandomGenerator(Digest paramDigest)
  {
    this.aFH = paramDigest;
    this.aDx = new byte[paramDigest.iJ()];
    this.aQS = 1L;
    this.aGQ = new byte[paramDigest.iJ()];
    this.aQR = 1L;
  }
  
  private void lt()
  {
    ː(this.aDx);
    long l = this.aQS;
    this.aQS = (1L + l);
    ᵥ(l);
    ˣ(this.aDx);
  }
  
  private void lu()
  {
    long l = this.aQR;
    this.aQR = (1L + l);
    ᵥ(l);
    ː(this.aGQ);
    ː(this.aDx);
    ˣ(this.aGQ);
    if (this.aQR % aQQ == 0L) {
      lt();
    }
  }
  
  private void ː(byte[] paramArrayOfByte)
  {
    this.aFH.update(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  private void ˣ(byte[] paramArrayOfByte)
  {
    this.aFH.doFinal(paramArrayOfByte, 0);
  }
  
  private void ᵥ(long paramLong)
  {
    int i = 0;
    while (i != 8)
    {
      this.aFH.update((byte)(int)paramLong);
      paramLong >>>= 8;
      i += 1;
    }
  }
  
  public void nextBytes(byte[] paramArrayOfByte)
  {
    ⁱ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void ʲ(byte[] paramArrayOfByte)
  {
    try
    {
      ː(paramArrayOfByte);
      ː(this.aDx);
      ˣ(this.aDx);
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public void ⁱ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    try
    {
      lu();
      int j = paramInt1;
      while (j != paramInt1 + paramInt2)
      {
        int k = i;
        if (i == this.aGQ.length)
        {
          lu();
          k = 0;
        }
        byte[] arrayOfByte = this.aGQ;
        i = k + 1;
        paramArrayOfByte[j] = arrayOfByte[k];
        j += 1;
      }
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.DigestRandomGenerator
 * JD-Core Version:    0.7.0.1
 */