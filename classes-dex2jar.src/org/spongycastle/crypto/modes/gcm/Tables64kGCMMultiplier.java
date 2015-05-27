package org.spongycastle.crypto.modes.gcm;

import java.lang.reflect.Array;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

public class Tables64kGCMMultiplier
  implements GCMMultiplier
{
  private byte[] aFR;
  private int[][][] aPH;
  
  public void init(byte[] paramArrayOfByte)
  {
    if (this.aPH == null) {
      this.aPH = ((int[][][])Array.newInstance(Integer.TYPE, new int[] { 16, 256, 4 }));
    } else if (Arrays.ﹺ(this.aFR, paramArrayOfByte)) {
      return;
    }
    this.aFR = Arrays.І(paramArrayOfByte);
    GCMUtil.ˋ(paramArrayOfByte, this.aPH[0]['']);
    int i = 64;
    while (i >= 1)
    {
      GCMUtil.ˎ(this.aPH[0][(i + i)], this.aPH[0][i]);
      i >>= 1;
    }
    int j;
    for (i = 0;; i = j)
    {
      j = 2;
      while (j < 256)
      {
        int k = 1;
        while (k < j)
        {
          GCMUtil.ˊ(this.aPH[i][j], this.aPH[i][k], this.aPH[i][(j + k)]);
          k += 1;
        }
        j += j;
      }
      j = i + 1;
      if (j == 16) {
        return;
      }
      i = 128;
      while (i > 0)
      {
        GCMUtil.ˏ(this.aPH[(j - 1)][i], this.aPH[j][i]);
        i >>= 1;
      }
    }
  }
  
  public void ᵀ(byte[] paramArrayOfByte)
  {
    int[] arrayOfInt1 = new int[4];
    int i = 15;
    while (i >= 0)
    {
      int[] arrayOfInt2 = this.aPH[i][(paramArrayOfByte[i] & 0xFF)];
      arrayOfInt1[0] ^= arrayOfInt2[0];
      arrayOfInt1[1] ^= arrayOfInt2[1];
      arrayOfInt1[2] ^= arrayOfInt2[2];
      arrayOfInt1[3] ^= arrayOfInt2[3];
      i -= 1;
    }
    Pack.ˎ(arrayOfInt1, paramArrayOfByte, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.gcm.Tables64kGCMMultiplier
 * JD-Core Version:    0.7.0.1
 */