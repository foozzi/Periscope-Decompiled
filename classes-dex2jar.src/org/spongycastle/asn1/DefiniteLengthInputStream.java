package org.spongycastle.asn1;

import java.io.EOFException;
import java.io.InputStream;
import org.spongycastle.util.io.Streams;

class DefiniteLengthInputStream
  extends LimitedInputStream
{
  private static final byte[] abo = new byte[0];
  private final int abp;
  private int abq;
  
  DefiniteLengthInputStream(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream, paramInt);
    if (paramInt < 0) {
      throw new IllegalArgumentException("negative lengths not allowed");
    }
    this.abp = paramInt;
    this.abq = paramInt;
    if (paramInt == 0) {
      ᵄ(true);
    }
  }
  
  int getRemaining()
  {
    return this.abq;
  }
  
  public int read()
  {
    if (this.abq == 0) {
      return -1;
    }
    int i = this.aaA.read();
    if (i < 0) {
      throw new EOFException("DEF length " + this.abp + " object truncated by " + this.abq);
    }
    int j = this.abq - 1;
    this.abq = j;
    if (j == 0) {
      ᵄ(true);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.abq == 0) {
      return -1;
    }
    paramInt2 = Math.min(paramInt2, this.abq);
    paramInt1 = this.aaA.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 < 0) {
      throw new EOFException("DEF length " + this.abp + " object truncated by " + this.abq);
    }
    paramInt2 = this.abq - paramInt1;
    this.abq = paramInt2;
    if (paramInt2 == 0) {
      ᵄ(true);
    }
    return paramInt1;
  }
  
  byte[] toByteArray()
  {
    if (this.abq == 0) {
      return abo;
    }
    byte[] arrayOfByte = new byte[this.abq];
    int i = this.abq - Streams.ˎ(this.aaA, arrayOfByte);
    this.abq = i;
    if (i != 0) {
      throw new EOFException("DEF length " + this.abp + " object truncated by " + this.abq);
    }
    ᵄ(true);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.DefiniteLengthInputStream
 * JD-Core Version:    0.7.0.1
 */