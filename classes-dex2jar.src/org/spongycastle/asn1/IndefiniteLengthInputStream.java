package org.spongycastle.asn1;

import java.io.EOFException;
import java.io.InputStream;

class IndefiniteLengthInputStream
  extends LimitedInputStream
{
  private int abr;
  private int abs;
  private boolean abt = false;
  private boolean abu = true;
  
  IndefiniteLengthInputStream(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream, paramInt);
    this.abr = paramInputStream.read();
    this.abs = paramInputStream.read();
    if (this.abs < 0) {
      throw new EOFException();
    }
    fl();
  }
  
  private boolean fl()
  {
    if ((!this.abt) && (this.abu) && (this.abr == 0) && (this.abs == 0))
    {
      this.abt = true;
      ᵄ(true);
    }
    return this.abt;
  }
  
  public int read()
  {
    if (fl()) {
      return -1;
    }
    int i = this.aaA.read();
    if (i < 0) {
      throw new EOFException();
    }
    int j = this.abr;
    this.abr = this.abs;
    this.abs = i;
    return j;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((this.abu) || (paramInt2 < 3)) {
      return super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    if (this.abt) {
      return -1;
    }
    paramInt2 = this.aaA.read(paramArrayOfByte, paramInt1 + 2, paramInt2 - 2);
    if (paramInt2 < 0) {
      throw new EOFException();
    }
    paramArrayOfByte[paramInt1] = ((byte)this.abr);
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)this.abs);
    this.abr = this.aaA.read();
    this.abs = this.aaA.read();
    if (this.abs < 0) {
      throw new EOFException();
    }
    return paramInt2 + 2;
  }
  
  void ᘁ(boolean paramBoolean)
  {
    this.abu = paramBoolean;
    fl();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.IndefiniteLengthInputStream
 * JD-Core Version:    0.7.0.1
 */