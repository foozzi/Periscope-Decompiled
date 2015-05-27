package org.spongycastle.crypto.digests;

import org.spongycastle.crypto.ExtendedDigest;
import org.spongycastle.util.Memoable;

public abstract class GeneralDigest
  implements ExtendedDigest, Memoable
{
  private final byte[] aFW = new byte[4];
  private int aFX;
  private long aac;
  
  protected GeneralDigest()
  {
    this.aFX = 0;
  }
  
  protected GeneralDigest(GeneralDigest paramGeneralDigest)
  {
    ˊ(paramGeneralDigest);
  }
  
  public void finish()
  {
    long l = this.aac;
    update((byte)-128);
    while (this.aFX != 0) {
      update((byte)0);
    }
    ۦ(l << 3);
    iV();
  }
  
  public int iM()
  {
    return 64;
  }
  
  protected abstract void iV();
  
  public void reset()
  {
    this.aac = 0L;
    this.aFX = 0;
    int i = 0;
    while (i < this.aFW.length)
    {
      this.aFW[i] = 0;
      i += 1;
    }
  }
  
  public void update(byte paramByte)
  {
    byte[] arrayOfByte = this.aFW;
    int i = this.aFX;
    this.aFX = (i + 1);
    arrayOfByte[i] = paramByte;
    if (this.aFX == this.aFW.length)
    {
      ι(this.aFW, 0);
      this.aFX = 0;
    }
    this.aac += 1L;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    int j = paramInt1;
    for (;;)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (this.aFX == 0) {
        break;
      }
      paramInt1 = j;
      paramInt2 = i;
      if (i <= 0) {
        break;
      }
      update(paramArrayOfByte[j]);
      j += 1;
      i -= 1;
    }
    for (;;)
    {
      i = paramInt1;
      j = paramInt2;
      if (paramInt2 <= this.aFW.length) {
        break;
      }
      ι(paramArrayOfByte, paramInt1);
      paramInt1 += this.aFW.length;
      paramInt2 -= this.aFW.length;
      this.aac += this.aFW.length;
    }
    while (j > 0)
    {
      update(paramArrayOfByte[i]);
      i += 1;
      j -= 1;
    }
  }
  
  protected void ˊ(GeneralDigest paramGeneralDigest)
  {
    System.arraycopy(paramGeneralDigest.aFW, 0, this.aFW, 0, paramGeneralDigest.aFW.length);
    this.aFX = paramGeneralDigest.aFX;
    this.aac = paramGeneralDigest.aac;
  }
  
  protected abstract void ۦ(long paramLong);
  
  protected abstract void ι(byte[] paramArrayOfByte, int paramInt);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.digests.GeneralDigest
 * JD-Core Version:    0.7.0.1
 */