package org.spongycastle.crypto.modes.gcm;

import org.spongycastle.util.Arrays;

public class BasicGCMExponentiator
  implements GCMExponentiator
{
  private int[] aLJ;
  
  public void init(byte[] paramArrayOfByte)
  {
    this.aLJ = GCMUtil.ᵋ(paramArrayOfByte);
  }
  
  public void ˋ(long paramLong, byte[] paramArrayOfByte)
  {
    int[] arrayOfInt1 = GCMUtil.kn();
    if (paramLong > 0L)
    {
      int[] arrayOfInt2 = Arrays.י(this.aLJ);
      long l;
      do
      {
        if ((1L & paramLong) != 0L) {
          GCMUtil.ˋ(arrayOfInt1, arrayOfInt2);
        }
        GCMUtil.ˋ(arrayOfInt2, arrayOfInt2);
        l = paramLong >>> 1;
        paramLong = l;
      } while (l > 0L);
    }
    GCMUtil.ˊ(arrayOfInt1, paramArrayOfByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.gcm.BasicGCMExponentiator
 * JD-Core Version:    0.7.0.1
 */