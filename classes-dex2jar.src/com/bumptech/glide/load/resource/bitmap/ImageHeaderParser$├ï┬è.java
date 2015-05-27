package com.bumptech.glide.load.resource.bitmap;

import java.io.InputStream;

class ImageHeaderParser$ˊ
{
  private final InputStream kp;
  
  public ImageHeaderParser$ˊ(InputStream paramInputStream)
  {
    this.kp = paramInputStream;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    while (i > 0)
    {
      int j = this.kp.read(paramArrayOfByte, paramArrayOfByte.length - i, i);
      if (j == -1) {
        break;
      }
      i -= j;
    }
    return paramArrayOfByte.length - i;
  }
  
  public long skip(long paramLong)
  {
    if (paramLong < 0L) {
      return 0L;
    }
    long l1 = paramLong;
    while (l1 > 0L)
    {
      long l2 = this.kp.skip(l1);
      if (l2 > 0L)
      {
        l1 -= l2;
      }
      else
      {
        if (this.kp.read() == -1) {
          break;
        }
        l1 -= 1L;
      }
    }
    return paramLong - l1;
  }
  
  public int ĸ()
  {
    return this.kp.read() << 8 & 0xFF00 | this.kp.read() & 0xFF;
  }
  
  public short Ĺ()
  {
    return (short)(this.kp.read() & 0xFF);
  }
  
  public int Ļ()
  {
    return this.kp.read();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.Ë
 * JD-Core Version:    0.7.0.1
 */