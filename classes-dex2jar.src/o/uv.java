package o;

import java.io.EOFException;
import java.io.InputStream;

final class uv
  implements ui
{
  public final ue ZT;
  public final va ZW;
  private boolean closed;
  
  public uv(va paramva)
  {
    this(paramva, new ue());
  }
  
  public uv(va paramva, ue paramue)
  {
    if (paramva == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.ZT = paramue;
    this.ZW = paramva;
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    this.ZW.close();
    this.ZT.clear();
  }
  
  public ue dS()
  {
    return this.ZT;
  }
  
  public boolean dW()
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    return (this.ZT.dW()) && (this.ZW.read(this.ZT, 2048L) == -1L);
  }
  
  public InputStream dX()
  {
    return new uw(this);
  }
  
  public short dZ()
  {
    ᔇ(2L);
    return this.ZT.dZ();
  }
  
  public int ea()
  {
    ᔇ(4L);
    return this.ZT.ea();
  }
  
  public long eb()
  {
    int i = 0;
    while (ˣ(i + 1))
    {
      int j = this.ZT.ᔈ(i);
      if (((j < 48) || (j > 57)) && ((i != 0) || (j != 45))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(this.ZT.ᔈ(0L)));
    }
    return this.ZT.eb();
  }
  
  public long ec()
  {
    int i = 0;
    while (ˣ(i + 1))
    {
      int j = this.ZT.ᔈ(i);
      if (((j < 48) || (j > 57)) && ((j < 97) || (j > 102)) && ((j < 65) || (j > 70))) {
        break;
      }
      i += 1;
    }
    if (i == 0) {
      throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(this.ZT.ᔈ(0L)));
    }
    return this.ZT.ec();
  }
  
  public String ed()
  {
    this.ZT.ˊ(this.ZW);
    return this.ZT.ed();
  }
  
  public String ee()
  {
    long l = ʼ((byte)10);
    if (l == -1L)
    {
      ue localue = new ue();
      this.ZT.ˊ(localue, 0L, Math.min(32L, this.ZT.size()));
      throw new EOFException("\\n not found: size=" + this.ZT.size() + " content=" + localue.readByteString().el() + "...");
    }
    return this.ZT.ᴸ(l);
  }
  
  public byte[] ef()
  {
    this.ZT.ˊ(this.ZW);
    return this.ZT.ef();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    vd.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((this.ZT.size == 0L) && (this.ZW.read(this.ZT, 2048L) == -1L)) {
      return -1;
    }
    paramInt2 = (int)Math.min(paramInt2, this.ZT.size);
    return this.ZT.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (paramue == null) {
      throw new IllegalArgumentException("sink == null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if ((this.ZT.size == 0L) && (this.ZW.read(this.ZT, 2048L) == -1L)) {
      return -1L;
    }
    paramLong = Math.min(paramLong, this.ZT.size);
    return this.ZT.read(paramue, paramLong);
  }
  
  public byte readByte()
  {
    ᔇ(1L);
    return this.ZT.readByte();
  }
  
  public void readFully(byte[] paramArrayOfByte)
  {
    try
    {
      ᔇ(paramArrayOfByte.length);
    }
    catch (EOFException localEOFException)
    {
      int i = 0;
      while (this.ZT.size > 0L)
      {
        int j = this.ZT.read(paramArrayOfByte, i, (int)this.ZT.size - i);
        if (j == -1) {
          throw new AssertionError();
        }
        i += j;
      }
      throw localEOFException;
    }
    this.ZT.readFully(paramArrayOfByte);
  }
  
  public int readInt()
  {
    ᔇ(4L);
    return this.ZT.readInt();
  }
  
  public long readLong()
  {
    ᔇ(8L);
    return this.ZT.readLong();
  }
  
  public short readShort()
  {
    ᔇ(2L);
    return this.ZT.readShort();
  }
  
  public vb timeout()
  {
    return this.ZW.timeout();
  }
  
  public String toString()
  {
    return "buffer(" + this.ZW + ")";
  }
  
  public long ʼ(byte paramByte)
  {
    return ˊ(paramByte, 0L);
  }
  
  public long ˊ(byte paramByte, long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    long l;
    do
    {
      l = paramLong;
      if (paramLong < this.ZT.size) {
        break;
      }
    } while (this.ZW.read(this.ZT, 2048L) != -1L);
    return -1L;
    do
    {
      paramLong = this.ZT.ˊ(paramByte, l);
      if (paramLong != -1L) {
        break;
      }
      l = this.ZT.size;
    } while (this.ZW.read(this.ZT, 2048L) != -1L);
    return -1L;
    return paramLong;
  }
  
  public void ˊ(ue paramue, long paramLong)
  {
    try
    {
      ᔇ(paramLong);
    }
    catch (EOFException localEOFException)
    {
      paramue.ˊ(this.ZT);
      throw localEOFException;
    }
    this.ZT.ˊ(paramue, paramLong);
  }
  
  public boolean ˣ(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    while (this.ZT.size < paramLong) {
      if (this.ZW.read(this.ZT, 2048L) == -1L) {
        return false;
      }
    }
    return true;
  }
  
  public void ᔇ(long paramLong)
  {
    if (!ˣ(paramLong)) {
      throw new EOFException();
    }
  }
  
  public uj ᗮ(long paramLong)
  {
    ᔇ(paramLong);
    return this.ZT.ᗮ(paramLong);
  }
  
  public byte[] ᵀ(long paramLong)
  {
    ᔇ(paramLong);
    return this.ZT.ᵀ(paramLong);
  }
  
  public void ᵋ(long paramLong)
  {
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    while (paramLong > 0L)
    {
      if ((this.ZT.size == 0L) && (this.ZW.read(this.ZT, 2048L) == -1L)) {
        throw new EOFException();
      }
      long l = Math.min(paramLong, this.ZT.size());
      this.ZT.ᵋ(l);
      paramLong -= l;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uv
 * JD-Core Version:    0.7.0.1
 */