package org.spongycastle.crypto.prng;

public class ReversedWindowGenerator
  implements RandomGenerator
{
  private final RandomGenerator aQW;
  private byte[] aQX;
  private int aQY;
  
  private void ﹶ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      if (i < paramInt2) {}
      try
      {
        if (this.aQY < 1)
        {
          this.aQW.ⁱ(this.aQX, 0, this.aQX.length);
          this.aQY = this.aQX.length;
        }
        int j = i + 1;
        byte[] arrayOfByte = this.aQX;
        int k = this.aQY - 1;
        this.aQY = k;
        paramArrayOfByte[(i + paramInt1)] = arrayOfByte[k];
        i = j;
      }
      finally {}
    }
  }
  
  public void nextBytes(byte[] paramArrayOfByte)
  {
    ﹶ(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void ⁱ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ﹶ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.ReversedWindowGenerator
 * JD-Core Version:    0.7.0.1
 */