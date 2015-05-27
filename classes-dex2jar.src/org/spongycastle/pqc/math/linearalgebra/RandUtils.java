package org.spongycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;

public class RandUtils
{
  static int ˎ(SecureRandom paramSecureRandom, int paramInt)
  {
    if ((-paramInt & paramInt) == paramInt) {
      return (int)(paramInt * (paramSecureRandom.nextInt() >>> 1) >> 31);
    }
    int i;
    int j;
    do
    {
      i = paramSecureRandom.nextInt() >>> 1;
      j = i % paramInt;
    } while (i - j + (paramInt - 1) < 0);
    return j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.RandUtils
 * JD-Core Version:    0.7.0.1
 */