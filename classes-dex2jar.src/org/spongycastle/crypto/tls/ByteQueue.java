package org.spongycastle.crypto.tls;

public class ByteQueue
{
  private byte[] aSR;
  private int aSS = 0;
  private int aST = 0;
  
  public ByteQueue()
  {
    this(1024);
  }
  
  public ByteQueue(int paramInt)
  {
    this.aSR = new byte[paramInt];
  }
  
  public static int Г(int paramInt)
  {
    paramInt |= paramInt >> 1;
    paramInt |= paramInt >> 2;
    paramInt |= paramInt >> 4;
    paramInt |= paramInt >> 8;
    return (paramInt | paramInt >> 16) + 1;
  }
  
  public int size()
  {
    return this.aST;
  }
  
  public void ˎ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramArrayOfByte.length - paramInt1 < paramInt2) {
      throw new IllegalArgumentException("Buffer size of " + paramArrayOfByte.length + " is too small for a read of " + paramInt2 + " bytes");
    }
    if (this.aST - paramInt3 < paramInt2) {
      throw new IllegalStateException("Not enough data to read");
    }
    System.arraycopy(this.aSR, this.aSS + paramInt3, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void ˏ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    ˎ(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
    ל(paramInt3 + paramInt2);
  }
  
  public void ל(int paramInt)
  {
    if (paramInt > this.aST) {
      throw new IllegalStateException("Cannot remove " + paramInt + " bytes, only got " + this.aST);
    }
    this.aST -= paramInt;
    this.aSS += paramInt;
  }
  
  public byte[] ᔉ(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt1];
    ˏ(arrayOfByte, 0, paramInt1, paramInt2);
    return arrayOfByte;
  }
  
  public void ｰ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aSS + this.aST + paramInt2 > this.aSR.length)
    {
      int i = Г(this.aST + paramInt2);
      if (i > this.aSR.length)
      {
        byte[] arrayOfByte = new byte[i];
        System.arraycopy(this.aSR, this.aSS, arrayOfByte, 0, this.aST);
        this.aSR = arrayOfByte;
      }
      else
      {
        System.arraycopy(this.aSR, this.aSS, this.aSR, 0, this.aST);
      }
      this.aSS = 0;
    }
    System.arraycopy(paramArrayOfByte, paramInt1, this.aSR, this.aSS + this.aST, paramInt2);
    this.aST += paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.ByteQueue
 * JD-Core Version:    0.7.0.1
 */